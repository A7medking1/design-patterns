part of '../index.dart';

abstract class IActivityIndicator {
  Widget render();

  factory IActivityIndicator(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidIndicator();
      case TargetPlatform.iOS:
        return IosIndicator();
      default:
        throw Exception('not added yet $platform');
    }
  }
}

class AndroidIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return CircularProgressIndicator(
      backgroundColor: const Color(0xFFECECEC),
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.black.withOpacity(0.65),
      ),
    );
  }
}

class IosIndicator implements IActivityIndicator {
  @override
  Widget render() {
    return const CupertinoActivityIndicator();
  }
}
