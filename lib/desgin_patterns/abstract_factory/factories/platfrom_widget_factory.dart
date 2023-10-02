part of '../index.dart';

class PlatformWidgetFactory implements IWidgetFactory {
  @override
  Widget createActivityIndicator(BuildContext context) =>
      IActivityIndicator(Theme.of(context).platform).render();

  @override
  Widget createSlider({
    required BuildContext context,
    required double value,
    required void Function(double) onChanged,
  }) =>
      ISlider(Theme.of(context).platform).render(
        value: value,
        onChanged: onChanged,
      );

  @override
  String getTitle(BuildContext context) =>
      IText(Theme.of(context).platform).render();

  @override
  Widget createSwitch({
    required BuildContext context,
    required bool value,
    required ValueSetter<bool> onChanged,
  }) =>
      ISwitch(Theme.of(context).platform).render(
        value: value,
        onChanged: onChanged,
      );
}
