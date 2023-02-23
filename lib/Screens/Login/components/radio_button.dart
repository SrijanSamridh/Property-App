import 'package:flutter/material.dart';

enum SingingCharacter { owner, seeker }

class RadioButton extends StatefulWidget {
  const RadioButton({
    super.key,
  });

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  SingingCharacter? _character = SingingCharacter.owner;
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Land Owner', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 3, fontSize: 20)),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.owner,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Land Seeker', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 3, fontSize: 20)),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.seeker,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}