import 'package:flutter/material.dart';
import '../../detection/models/waste_model.dart';

class CultivationScreen extends StatefulWidget {
  const CultivationScreen({super.key});

  @override
  State<CultivationScreen> createState() => _CultivationScreenState();
}

class _CultivationScreenState extends State<CultivationScreen> {
  late Future<List<WasteModel>?> futureWasteModel;

  // @override
  // void initState() {
  //   super.initState();
  //   futureWasteModel = ReadJson.readJsonData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 30,
        title: const Text(
          "quizz",
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
      body: 
      Text ("Empty", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
          
    );
  }
}
