part of 'index.dart';

abstract class IWidgetFactory {
  String getTitle(BuildContext context);

  Widget createActivityIndicator(BuildContext context);

  Widget createSwitch({
    required BuildContext context,
    required bool value,
    required ValueSetter<bool> onChanged,
  });

  Widget createSlider({
    required BuildContext context,
    required double value,
    required void Function(double) onChanged,
  });
}
