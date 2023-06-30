import 'package:flutter/material.dart';
import 'package:mock_screens/constants/custom_theme.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 0.25,
      decoration: const BoxDecoration(
          color: CustomTheme.darkBlue,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
                // height: 200,
                // width: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(0))),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get Full\nHappiness',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Let\'s Go ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: CustomTheme.lightyellow,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(Icons.arrow_forward,
                                color: CustomTheme.lightyellow)
                          ]),
                    ],
                  ),
                )),
          ),
          Flexible(
            flex: 1,
            child: Container(
              // height: 200,
              // width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage('assets/images/card.png')),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
