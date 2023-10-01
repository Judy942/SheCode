import 'package:flutter/material.dart';

class PengolahanScreen extends StatefulWidget {
  const PengolahanScreen({super.key});

  @override
  State<PengolahanScreen> createState() => _PengolahanScreenState();
}

class _PengolahanScreenState extends State<PengolahanScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 30,
        title: const Text(
          "History",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 1.5,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),


      body: const Text("Empty", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),

      
    );
  }
}
