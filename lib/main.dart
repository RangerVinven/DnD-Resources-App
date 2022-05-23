import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<bool> isOpen = [true, false, false, false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ExpansionPanelList(
                animationDuration: const Duration(milliseconds: 500),
                expansionCallback: ((panelIndex, isExpanded) {
                  setState(() {
                    isOpen[panelIndex] = isExpanded;
                  });
                }),
                children: [
                  ExpansionPanel(
                    isExpanded: isOpen[0],
                    headerBuilder: ((context, isExpanded) {
                    return const Text("Test");
                  }),
                  body: const Text("Hello")),
                ],
              )
            ],
          )
      )
      )
    );
  }
}