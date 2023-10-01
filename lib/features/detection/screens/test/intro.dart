import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import './button.dart';
import './qr_generate.dart';
import 'qr_scanner.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //todo logo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Image.asset(
                'assets/images/splash.png',
                // height: 200,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //todo Game title
            Text(
              "Picture scanner",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
        
            const Spacer(flex: 1),

            const SizedBox(
              height: 15,
            ),

            //todo scan button
            MyButton(
              text: "Scan picture",
              onPressed: () {
                HapticFeedback.vibrate();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.white,
              ),
            ),

            const Spacer(flex: 2),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              child: Divider(
                color: Colors.black,
                thickness: 2,
              ),
            ),

            //todo developer details
            Text(
              "Developed by The Pastels",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}