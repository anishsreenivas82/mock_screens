import 'package:flutter/material.dart';
import 'package:mock_screens/views/widgets/card.dart';
import 'package:mock_screens/views/widgets/scroll_card.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            // bottomOpacity: 0,
            // toolbarOpacity: 0,
            toolbarHeight: 80,
            elevation: 0,
            backgroundColor: Colors.white,
            actions: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
                  child: Row(
                    children: [
                      Text(
                        'HAPPINESS',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.settings, color: Colors.black)
                    ],
                  ),
                ),
              )
            ]),
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: 'Hey, '),
                          TextSpan(
                            text: 'Melissa',
                            style: TextStyle(
                              fontSize: 28.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: '👋')
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Let\'s start creating!',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CardWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'FOR YOU',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0; i < 10; i++)
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SmallCard(
                              lock: false,
                            ),
                          )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'POPULAR NOW',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0; i < 10; i++)
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SmallCard(lock: true),
                          )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
