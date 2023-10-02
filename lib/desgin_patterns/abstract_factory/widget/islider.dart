part of '../index.dart';

abstract class ISlider {
  Widget render({
    required double value,
    required ValueSetter<double> onChanged,
  });

  factory ISlider(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidSlider();
      case TargetPlatform.iOS:
        return IosSlider();
      default:
        throw Exception('not added yet $platform');
    }
  }
}

class AndroidSlider implements ISlider {
  @override
  Widget render({
    required double value,
    required ValueSetter<double> onChanged,
  }) {
    return Slider(
      value: value,
      onChanged: onChanged,
      activeColor: Colors.black,
      inactiveColor: Colors.grey,
      max: 100,
    );
  }
}

class IosSlider implements ISlider {
  @override
  Widget render({
    required double value,
    required ValueSetter<double> onChanged,
  }) {
    return CupertinoSlider(
      value: value,
      onChanged: onChanged,
      //activeColor: Colors.black,
      max: 100,
    );
  }
}
