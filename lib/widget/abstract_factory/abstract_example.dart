import 'package:desgin_patterns/desgin_patterns/abstract_factory/index.dart';
import 'package:flutter/material.dart';

class AbstractFactoryExample extends StatefulWidget {
  const AbstractFactoryExample({Key? key}) : super(key: key);

  @override
  State<AbstractFactoryExample> createState() => _AbstractFactoryExampleState();
}

class _AbstractFactoryExampleState extends State<AbstractFactoryExample> {
  @override
  Widget build(BuildContext context) {
    debugPrint(PlatformWidgetFactory().getTitle(context));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Abstract Factory',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SliderWidget(),
            SizedBox(
              height: 60,
            ),
            SwitchWidget(),
          ],
        ),
      ),
    );
  }
}

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _switchValue = true;

  String get _switchString => _switchValue ? 'ON' : 'OFF';

  void _setSwitchValue(bool value) => setState(() {
        _switchValue = value;
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Switch $_switchString',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 12,
        ),
        PlatformWidgetFactory().createSwitch(
          context: context,
          value: _switchValue,
          onChanged: _setSwitchValue,
        ),
      ],
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _sliderValue = 50.0;

  void _setSliderValue(double value) => setState(() {
        _sliderValue = value;
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Slider ${_sliderValue.toStringAsFixed(0)} %',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 12,
        ),
        PlatformWidgetFactory().createSlider(
          context: context,
          value: _sliderValue,
          onChanged: _setSliderValue,
        ),
      ],
    );
  }
}
