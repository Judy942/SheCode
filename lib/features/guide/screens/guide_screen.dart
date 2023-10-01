import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();

  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedOpacity(
                      opacity: _activePage > 0 ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child: GestureDetector(
                          onTap: () async {
                            _controller.animateToPage(
                              _activePage - 1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          },
                          child: const Icon(Icons.arrow_back)),
                    ),
            //        
                
          ],
        ),
      ),
            )
          ],
        )
      ),
    );
  }

}
