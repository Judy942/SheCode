// ignore_for_file: unused_element

import 'package:flutter/material.dart';



class DetailOlahTanaman extends StatefulWidget {
  const DetailOlahTanaman({super.key});

  @override
  State<DetailOlahTanaman> createState() => _DetailOlahTanamanState();
}

class _DetailOlahTanamanState extends State<DetailOlahTanaman> {
  // ignore: unused_field
  final _controller = PageController();
 

  // int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 30,
      ),
    );
  }

  bool _isLoggedIn() {
    // @TODO: Check if user logged in or not
    return false;
  }
}
