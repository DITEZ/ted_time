import 'package:flutter/material.dart';

class MyhomeScreen extends StatefulWidget {
  const MyhomeScreen({super.key});

  @override
  State<MyhomeScreen> createState() => _MyhomeScreenState();
}

class _MyhomeScreenState extends State<MyhomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Add a new task')),
        bottomNavigationBar: BottomAppBar(
          elevation: 16.0,
          child: new Row(
             mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
              ],
          ),
        ),
      ),
    );
  }
}
