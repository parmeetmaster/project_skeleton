import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_skeleton/project_skeleton.dart';

void main() {
  const MethodChannel channel = MethodChannel('project_skeleton');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ProjectSkeleton.platformVersion, '42');
  });
}
