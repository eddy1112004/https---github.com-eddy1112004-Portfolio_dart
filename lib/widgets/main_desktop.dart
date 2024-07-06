import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI'm Aditya Gupta\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get in touch"),
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: CustomColor.whitePrimary, width: 8.0),
                top: BorderSide(color: Colors.blueGrey, width: 8.0),
                right: BorderSide(color: CustomColor.whitePrimary, width: 8.0),
                left: BorderSide(color: Colors.blueGrey, width: 8.0),
              ),
            ),
            child: Image.asset(
              "assets/Robo.jpg",
              width: screenWidth / 4,
            ),
          ),
        ],
      ),
    );
  }
}
