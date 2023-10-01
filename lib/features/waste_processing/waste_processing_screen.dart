import 'package:flutter/material.dart';
import './detail_waste_processing_screen.dart';

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


      body: Text("Empty", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),

      // body: ListView.builder(
      //     itemCount: listTanaman.length,
      //     padding: EdgeInsets.symmetric(
      //       vertical: 16.0,
      //       horizontal: 16.0,
      //     ),
      //     itemBuilder: (context, index) {
      //       return GestureDetector(
      //         onTap: () {
      //           Navigator.of(context).push(
      //               MaterialPageRoute(builder: (_) => DetailOlahTanaman()));
      //           // Navigator.of(context).push(MaterialPageRoute(
      //           //     builder: (context) => DetailScreen(mapDetail: () {
      //           //           if (listTanaman.elementAt(index) == "Jambu Biji") {
      //           //             return mapJambuBiji;
      //           //           } else if (listTanaman.elementAt(index) == "Kari") {
      //           //             return mapKari;
      //           //           } else if (listTanaman.elementAt(index) == "Kunyit") {
      //           //             return mapKunyit;
      //           //           } else if (listTanaman.elementAt(index) == "Sirih") {
      //           //             return mapSirih;
      //           //           } else {
      //           //             return mapSirsak;
      //           //           }
      //           //         }())));
      //         },
      //         child: Container(
      //           margin: EdgeInsets.symmetric(
      //             vertical: 8.0,
      //             horizontal: 8.0,
      //           ),
      //           padding: EdgeInsets.symmetric(
      //             vertical: 8.0,
      //             horizontal: 8.0,
      //           ),
      //           height: 40,
      //           decoration: BoxDecoration(
      //               color: Colors.white,
      //               borderRadius: BorderRadius.circular(8),
      //               boxShadow: [
      //                 BoxShadow(
      //                   color: Colors.grey.withOpacity(0.2),
      //                   blurRadius: 10,
      //                   offset: Offset(0, 3),
      //                 ),
      //               ]),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Text(listTanaman.elementAt(index)),
      //               Icon(
      //                 Icons.navigate_next,
      //                 size: 24,
      //               )
      //             ],
      //           ),
      //         ),
      //       );
      //     }),
    );
  }
}
