import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});
  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController ctl = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 3),
                      content: Text("Heheh"),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                child: Text("Open SnackBar"),
              ),
              Divider(
                color: Colors.red,
                thickness: 10.0,
                endIndent: 200.0,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Alert Hahaha"),
                        content: Text("Alert Pinggggg"),
                        actions: [
                          FilledButton(onPressed: () {
                            Navigator.pop(context);
                          }, child: Text("CLose"))
                        ],
                      );
                    },
                  );
                },
                child: Text("Open Dialog"),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: "e1", child: Text("Element 1")),
                  DropdownMenuItem(value: "e2", child: Text("Element 2")),
                  DropdownMenuItem(value: "e3", child: Text("Element 3")),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: ctl,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () => setState(() {}),
              ),
              Text(ctl.text),
              Checkbox.adaptive(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              CheckboxListTile.adaptive(
                tristate: true,
                title: Text("Open Snack Bar"),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch.adaptive(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Switch.adaptive(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: Text("Switch me haha "),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider.adaptive(
                max: 10.0,
                divisions: 10,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  print(value);
                },
              ),
              InkWell(
                splashColor: Colors.teal,
                onTap: () {
                  print("Image selected");
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.white12,
                ),
              ),

              ElevatedButton(onPressed: () {}, child: Text("Click me")),
              FilledButton(onPressed: () {}, child: Text("Click me")),
              TextButton(onPressed: () {}, child: Text("Click me")),
              OutlinedButton(onPressed: () {}, child: Text("Click me")),
              CloseButton(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
