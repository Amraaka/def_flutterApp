import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = 'el1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      behavior: SnackBarBehavior.floating,
                      content: Text("This is a snackbar"),
                    ),
                  );
                },
                child: Text("Open SnackBar"),
              ),
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(value: 'el1', child: Text("Element 1")),
                  DropdownMenuItem(value: 'el2', child: Text("Element 2")),
                  DropdownMenuItem(value: 'el3', child: Text("Element 3")),
                  DropdownMenuItem(value: 'el4', child: Text("Element 4")),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),

              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              Checkbox(
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
                title: Text("CheckboxListTile"),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              Switch(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: Text("SwitchListTile"),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Slider(
                value: sliderValue,
                divisions: 10,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  print(sliderValue);
                },
              ),

              InkWell(
                splashColor: Colors.yellow,
                onTap: () {
                  print("InkWell");
                },
                child: Container(
                  height: 20,
                  width: double.infinity,
                  color: Colors.white12,
                  child: Center(child: Text("InkWell")),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  print("GestureDetector");
                },
                child: Container(
                  height: 20,
                  width: double.infinity,
                  color: Colors.white12,
                  child: Center(child: Text("GestureDetector")),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Elevated')),
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
