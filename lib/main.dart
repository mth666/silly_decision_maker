import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Center(
            child: Text('Silly Decision Maker'),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: const SillyDecisionMaker(),
      ),
    );
  }
}

class SillyDecisionMaker extends StatefulWidget {
  const SillyDecisionMaker({super.key});

  @override
  State<SillyDecisionMaker> createState() => _SillyDecisionMakerState();
}

class _SillyDecisionMakerState extends State<SillyDecisionMaker> {
  int rambo = 1;

  get onPressed => null;
  void randomBro() {
    rambo = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      randomBro();
                    });
                  },
                  child: Image.asset('images/ball$rambo.png'),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 0.2,
          ),
          Text('Written By Myo Than Htike')
        ],
      ),
    );
  }
}
