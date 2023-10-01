// ignore_for_file: library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../constants/color_constant.dart';
import '../constants/image_constant.dart';

class AboutNavigationScreen extends StatefulWidget {
  const AboutNavigationScreen({Key? key}) : super(key: key);

  @override
  _AboutNavigationScreenState createState() => _AboutNavigationScreenState();
}

class _AboutNavigationScreenState extends State<AboutNavigationScreen> {
  final mapAbout = {
    "Version": "1.0.0",
    "Description":
        """Classification of Waste là một ứng dụng giúp người dùng phân loại chất thải một cách chính xác và hiệu quả. Ứng dụng này cung cấp thông tin chi tiết về cách phân loại các loại chất thải thông qua một giao diện thân thiện và dễ sử dụng.""",
    "Developers": '1. Bùi Thị Trang 2. Nguyễn Thị Lam Trà',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Image.asset(ImageConstant.splashLogo),
              ),
              Positioned(
                bottom: 10,
                right: 20,
                left: 20,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.primaryColor.withOpacity(0.2),
                          blurRadius: 16,
                          offset: const Offset(1, 1),
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          ImageConstant.logoApp,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Classification of Waste",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "Herbal Learning",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(
              mapAbout.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mapAbout.keys.elementAt(index),
                      style:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      mapAbout.values.elementAt(index),
                      style: TextStyle(
                          letterSpacing: 0.6,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: index == 0
                              ? ColorConstant.primaryColor
                              : Colors.black),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
