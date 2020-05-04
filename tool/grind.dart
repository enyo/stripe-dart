import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:logging/logging.dart';

Iterable<String> _getFormatDirectories() {
  return Directory('')
      .listSync()
      // Only include directories, exclude the build directory
      // and also exclude all directories starting with a dot
      .where((e) =>
          e is Directory && e.path != './build' && !e.path.startsWith('./.'))
      .map((e) => e.path);
}

void main(List<String> args) {
  Logger.root.onRecord.listen((record) => log(record.message));
  grind(args);
}

@Task()
void analyze() async {
  try {
    await runAsync('dartanalyzer',
        arguments: [
          '.',
          '--fatal-warnings',
          '--fatal-hints',
          '--options',
          'analysis_options.yaml',
        ],
        quiet: true);
  } on ProcessException catch (e) {
    final lines = '${e.stdout}\n${e.stderr}'.split('\n');
    final fileRegExps = <RegExp>[
      RegExp(r' at (.+):\d+:\d+'),
      RegExp(r'\((.+), line \d+, col \d+\)'),
      RegExp(r'(.+) is a part and cannot be analyzed'),
    ];

    final ignoredLinesRegExp = <RegExp>[
      RegExp(r'^Analyzing (\w)...'),
      RegExp(r'^\d+ errors and \d+ lints found\.'),
      RegExp(r'^\d+ warnings and \d+ lints found\.'),
      RegExp(r'^\d+ hints and \d+ lints found\.'),
      RegExp(r'^\d+ lints found\.'),
      RegExp(r'^\d+ errors found\.'),
      RegExp(r'Please pass in a library that contains this part\.'),
      RegExp(r'Loaded analysis options from (.*)/analysis_options.yaml'),
    ];

    final problems = <String>[], unrecognizedLines = <String>[];
    lines.forEach((line) {
      if (line.trim().isEmpty) return;

      if (!fileRegExps.any((exp) => exp.hasMatch(line))) {
        // This is not a regular file issue
        if (!ignoredLinesRegExp.any((exp) => exp.hasMatch(line))) {
          unrecognizedLines.add(line);
        }
      } else {
        problems.add(line);
      }
    });

    if (problems.isNotEmpty) {
      log('Those files failed validation:');
      problems.forEach(log);
    }
    if (unrecognizedLines.isNotEmpty) {
      log('Those lines could not be recognized:');
      unrecognizedLines.forEach(log);
    }
    if (problems.isNotEmpty || unrecognizedLines.isNotEmpty) {
      fail('Analyzer discovered problems');
    }
  }
  log('Analyzer found no problems.');
}

@Task()
void checkFormat() async {
  final result =
      await runAsync('dartfmt', arguments: ['-n', ..._getFormatDirectories()]);
  if (result.isNotEmpty) {
    fail('Code is not properly formatted. Run `grind format`');
  }
}

@Task()
void format() =>
    runAsync('dartfmt', arguments: ['-w', ..._getFormatDirectories()]);

@Task()
@Depends(checkFormat, analyze, testUnit)
void test() => true;

@Task()
void testUnit() => runAsync('pub', arguments: ['run', 'test']);
