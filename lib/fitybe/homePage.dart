import 'package:fitvybe/fitybe/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:fitvybe/fitybe/bookings.dart';
import 'package:fitvybe/fitybe/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currIdx=0;
  List<Widget> bottomNav=[
    Dashboard(),
    Booking(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currIdx,
        backgroundColor:Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        onTap: (value) {
          setState(() {
            currIdx=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar),label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          
      ]),
      body: IndexedStack(
        children: bottomNav,
        index: currIdx,
      ),
    );
  }
}