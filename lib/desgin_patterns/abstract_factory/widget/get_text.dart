part of '../index.dart';

abstract class IText {
  String render();

  factory IText(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidText();
      case TargetPlatform.iOS:
        return IosText();
      default:
        throw Exception('not added yet $platform');
    }
  }
}

class AndroidText implements IText {
  @override
  String render() => 'Android Widget';
}

class IosText implements IText {
  @override
  String render() => 'Ios Widget';
}
