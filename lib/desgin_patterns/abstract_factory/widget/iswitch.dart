part of '../index.dart';

abstract class ISwitch {
  Widget render({required bool value, required ValueSetter<bool> onChanged});

  factory ISwitch(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidSwitch();
      case TargetPlatform.iOS:
        return IosSwitch();
      default:
        throw Exception('not added yet $platform');
    }
  }
}

class AndroidSwitch implements ISwitch {
  @override
  Widget render({required bool value, required ValueSetter<bool> onChanged}) {
    return Switch(
      value: value,
      activeColor: Colors.black,
      onChanged: onChanged,
    );
  }
}

class IosSwitch implements ISwitch {
  @override
  Widget render({required bool value, required ValueSetter<bool> onChanged}) {
    return CupertinoSwitch(
      value: value,
      activeColor: Colors.black,
      onChanged: onChanged,
    );
  }
}
