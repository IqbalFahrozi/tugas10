// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:login/login_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routes = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcome to Apps'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.person_pin_circle_outlined,
              size: 150,
              color: Colors.amber,
            ),
          ),
          Column(
            children: [
              Text('Iqbal Fahrozi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              Text('191011450332',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
              Text('Tugas Pertemuan 10'),
              Text('Router dan form login')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 10, 240, 87),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const FormScreen();
                    }));
                  },
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
