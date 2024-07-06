import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: CustomColor.scaffoldBg.withOpacity(0.6),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/robo.jpg",
              width: screenWidth,
              height: 350.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Hi,\nI'm Aditya Gupta\nA Flutter Developer",
            style: TextStyle(
              fontSize: 24,
              height: 1.0,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 190.0,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Get in touch"),
            ),
          )
        ],
      ),
    );
  }
}
