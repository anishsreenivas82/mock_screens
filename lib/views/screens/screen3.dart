import 'package:flutter/material.dart';
import 'package:mock_screens/constants/custom_theme.dart';
import 'package:mock_screens/views/widgets/slider.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  double height = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.purple,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 200,
        ),
        const Image(
          image: AssetImage('assets/images/feeling.png'),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'I\'am feeling',
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Excited',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SliderCarousel(),
        //

        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            CustomTheme.darkyellow)),
                    child: const Text(
                      'Done',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
