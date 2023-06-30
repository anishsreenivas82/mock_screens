import 'package:flutter/material.dart';
import 'package:mock_screens/constants/custom_theme.dart';
import 'package:mock_screens/views/screens/screen1.dart';
import 'package:mock_screens/views/screens/screen2.dart';
import 'package:mock_screens/views/screens/screen3.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _list = [
    const Screen1(),
    const Screen2(),
    const Screen1(),
    const Screen1()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: CustomTheme.darkBlue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        _onItemTapped(0);
                      },
                      child: Icon(
                        Icons.home,
                        // weight: ,
                        color: (_selectedIndex == 0)
                            ? CustomTheme.purple
                            : Colors.grey,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _onItemTapped(1);
                      },
                      child: Icon(
                        Icons.photo_library_sharp,
                        color: (_selectedIndex == 1)
                            ? CustomTheme.purple
                            : Colors.grey,
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: CustomTheme.purple,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen3()),
                        );
                      },
                      child: const Icon(Icons.add),
                    ),
                    InkWell(
                      onTap: () {
                        _onItemTapped(2);
                      },
                      child: Badge(
                        label: const Text('6'),
                        backgroundColor: CustomTheme.lightyellow,
                        child: Icon(Icons.notifications,
                            color: (_selectedIndex == 2)
                                ? CustomTheme.purple
                                : Colors.grey),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _onItemTapped(3);
                      },
                      child: Icon(
                        Icons.person,
                        color: (_selectedIndex == 3)
                            ? CustomTheme.purple
                            : Colors.grey,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        body: _list[_selectedIndex]);
  }
}
