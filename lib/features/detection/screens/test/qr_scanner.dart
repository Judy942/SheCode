import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import './qr_screen_result.dart';
import './tool.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //* qr scan transaction
  bool isScanComplete = false;

  //* flash bool
  bool isFlash = false;

  //* cam bool
  bool isCam = false;

  //* toggle flash controller
  MobileScannerController controller = MobileScannerController();

  //* change page
  void closeScanner() {
    setState(() {
      isScanComplete = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* app bar
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            HapticFeedback.heavyImpact();
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Scanner',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),

      //* body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            //* Body title
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Place your picture here",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    "Scanned Automatically",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),

            //* Camera Container
            Expanded(
              flex: 2,
              child: MobileScanner(
        // fit: BoxFit.contain,
        controller: MobileScannerController(
          detectionSpeed: DetectionSpeed.normal,
          facing: CameraFacing.front,
          torchEnabled: true,
        ),
              onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          final Uint8List? image = capture.image;
          for (final barcode in barcodes) {
            debugPrint('Barcode found! ${barcode.rawValue}');
          }
        },
      ),
              // MobileScanner(
              //   controller: controller,
              //   // allowDuplicates: true,
              //   onDetect: (barcode, args) {
              //     if (!isScanComplete) {
              //       String qrResult = barcode.rawValue ?? "---";
              //       setState(() {
              //         isScanComplete = true;
              //       });
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => QrResultPage(
              //             closeScreen: closeScanner,
              //             qrResult: qrResult,
              //           ),
              //         ),
              //       );
              //     }
              //   },
              // ),
            ),

            //* Tools Container
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //* flash toggle
                  MyTool(
                    onPressed: () {
                      HapticFeedback.heavyImpact();
                      setState(() {
                        isFlash = !isFlash;
                      });
                      controller.toggleTorch();
                    },
                    text: "Flash",
                    icon: Icon(
                      Icons.flash_on,
                      color: isFlash ? Colors.yellow : Colors.white,
                    ),
                  ),

                  //* camera toggle
                  MyTool(
                    onPressed: () {
                      HapticFeedback.heavyImpact();
                      setState(() {
                        isCam = !isCam;
                      });
                      controller.switchCamera();
                    },
                    text: "Camera",
                    icon: const Icon(
                      Icons.switch_camera_outlined,
                      color: Colors.white,
                    ),
                  ),

                  //* gallery toggle
                  MyTool(
                    text: "Gallery",
                    onPressed: () {
                      HapticFeedback.heavyImpact();
                    },
                    icon: const Icon(
                      Icons.browse_gallery_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}