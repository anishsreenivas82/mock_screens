import 'package:flutter/material.dart';
import 'package:mock_screens/constants/custom_theme.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key, required this.lock});
  final bool lock;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              // image: const DecorationImage(
              //     image: AssetImage('assets/images/Indiagate.png'),
              //     opacity: 0.8,
              //     fit: BoxFit.scaleDown),
              borderRadius: BorderRadius.circular(20),
              color: CustomTheme.lightgrey),
        ),
        Container(
          height: 120,
          width: 120,
          child: const Image(
            image: AssetImage('assets/images/Indiagate.png'),
          ),
        ),
        Positioned(
            left: 10,
            top: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: CustomTheme.darkBlue,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'POTRAIT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        lock
            ? const Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  Icons.lock,
                  color: CustomTheme.purple,
                ))
            : Container()
      ],
    );
  }
}
