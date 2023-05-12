import 'package:dio/dio.dart';
import 'package:stripe/src/client.dart';
import 'package:test/test.dart';

void main() {
  group('FormDataTransformer', () {
    late FormDataTransformer transformer;

    setUp(() {
      transformer = FormDataTransformer();
    });

    test('properly encodes objects without lists', () async {
      var options = RequestOptions(
          path: '/', contentType: 'application/json', data: {'foo': 'bar'});
      expect(await transformer.transformRequest(options), '{"foo":"bar"}');

      options =
          RequestOptions(path: '/', contentType: 'application/json', data: {
        'foo': {'foo2': 'bar'}
      });
      expect(await transformer.transformRequest(options),
          '{"foo":{"foo2":"bar"}}');

      options = RequestOptions(
          path: '/', contentType: 'application/json', data: {'foo': 3});
      expect(await transformer.transformRequest(options), '{"foo":3}');
    });

    test('properly changes Lists to Maps', () async {
      var options = RequestOptions(
          path: '/',
          contentType: 'application/json',
          data: <String, dynamic>{
            'foo': ['bar1', 'bar2']
          });
      expect(await transformer.transformRequest(options),
          '{"foo":{"0":"bar1","1":"bar2"}}');
    });

    test('goes through map recursively', () async {
      var options = RequestOptions(
          path: '/',
          contentType: 'application/json',
          data: <String, dynamic>{
            'foo': [
              'bar1',
              <String, dynamic>{
                'bar2': ['bb1', 'bb2']
              }
            ]
          });
      expect(await transformer.transformRequest(options),
          '{"foo":{"0":"bar1","1":{"bar2":{"0":"bb1","1":"bb2"}}}}');
    });
  });
}
