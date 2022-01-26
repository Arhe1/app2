import 'package:flutter/material.dart';

class SwitchDemoScreen extends StatefulWidget {
  const SwitchDemoScreen({Key? key}) : super(key: key);

  @override
  _SwitchDemoScreenState createState() => _SwitchDemoScreenState();
}

enum SkillLevel { junior, middle, senior}

class _SwitchDemoScreenState extends State<SwitchDemoScreen> {
  bool _cheked = false;
  bool _confirmAgreement = true;
  SkillLevel? _skillLevel = SkillLevel.junior;


  void _onCheckedChange(bool? val) {
    setState(() {
      _cheked = !_cheked;
    });
  }

  void _onSkillLevelChanged (SkillLevel? value) {
    setState(() {
      _skillLevel = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
            body: Center(
                child: Column(children: [
      Row(
        children: [
          Checkbox(value: _cheked, onChanged: _onCheckedChange),
          Text('Выбор')
        ],
      ),
                  CheckboxListTile(
                      title: Text('Принять условия соглашения'),
                      value: _confirmAgreement, onChanged:  (val) {
                        setState(() {
                          _confirmAgreement = !_confirmAgreement;
                        });
                  }),
                  Switch(value: _cheked, onChanged: _onCheckedChange),
                  SwitchListTile(
                      title: Text('Включить'),
                      value: _cheked,
                      onChanged: _onCheckedChange),

                  Text ('Уровень навыков:'),
                  RadioListTile<SkillLevel>(
                    title: const Text('Junior'),
                    value: SkillLevel.junior,
                    groupValue: _skillLevel,
                    onChanged: _onSkillLevelChanged,
                  ),
                  RadioListTile<SkillLevel>(
                      title: const Text('Midlle'),
                      value: SkillLevel.middle,
                      groupValue: _skillLevel,
                      onChanged: _onSkillLevelChanged,
                  ),
                  RadioListTile<SkillLevel>(
                      title: const Text('Senior'),
                      value: SkillLevel.senior,
                      groupValue: _skillLevel,
                      onChanged: _onSkillLevelChanged,
                  ),

    ]))));
  }
}
