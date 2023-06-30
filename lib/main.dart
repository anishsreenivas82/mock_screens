import 'package:flutter/material.dart';
import 'package:mock_screens/views/screens/wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Wrapper(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   final List<Widget> _list = [
//     const Screen1(),
//     const Screen2(),
//     const Screen1(),
//     const Screen1()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // resizeToAvoidBottomInset: false,
//         extendBody: true,
//         // floatingActionButtonLocation:
//         //     FloatingActionButtonLocation
//         // floatingActionButton: FloatingActionButton(
//         //   onPressed: () {
//         //     // _incrementTab(1);
//         //   },
//         //   tooltip: 'Increment',
//         //   child: new Icon(Icons.add),
//         // ),
//         bottomNavigationBar: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: CustomTheme.darkBlue,
//             ),
//             // child: BottomNavigationBar(
//             //   backgroundColor: Colors.red,
//             //   items: const <BottomNavigationBarItem>[
//             //     BottomNavigationBarItem(
//             //       icon: Icon(Icons.home),
//             //       label: 'Home',
//             //     ),
//             //     BottomNavigationBarItem(
//             //       icon: Icon(Icons.business),
//             //       label: 'Business',
//             //     ),
//             //     BottomNavigationBarItem(
//             //       icon: Icon(Icons.school),
//             //       label: 'School',
//             //     ),
//             //   ],
//             //   currentIndex: _selectedIndex,
//             //   selectedItemColor: Colors.amber[800],
//             //   onTap: _onItemTapped,
//             // ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         _onItemTapped(0);
//                       },
//                       child: Icon(
//                         Icons.home,
//                         // weight: ,
//                         color: (_selectedIndex == 0)
//                             ? CustomTheme.purple
//                             : Colors.grey,
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         _onItemTapped(1);
//                       },
//                       child: Icon(
//                         Icons.photo_library_sharp,
//                         color: (_selectedIndex == 1)
//                             ? CustomTheme.purple
//                             : Colors.grey,
//                       ),
//                     ),
//                     FloatingActionButton(
//                       backgroundColor: CustomTheme.purple,
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Screen3()),
//                         );
//                       },
//                       child: const Icon(Icons.add),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         _onItemTapped(2);
//                       },
//                       child: Badge(
//                         label: const Text('6'),
//                         backgroundColor: CustomTheme.lightyellow,
//                         child: Icon(Icons.notifications,
//                             color: (_selectedIndex == 2)
//                                 ? CustomTheme.purple
//                                 : Colors.grey),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         _onItemTapped(3);
//                       },
//                       child: Icon(
//                         Icons.person,
//                         color: (_selectedIndex == 3)
//                             ? CustomTheme.purple
//                             : Colors.grey,
//                       ),
//                     ),
//                   ]),
//             ),
//           ),
//         ),
//         body: _list[_selectedIndex]);
//   }
// }


// Stack(
                    //   children: <Widget>[
                    //     Icon(Icons.notifications),
                    //     Positioned(
                    //       right: 0,
                    //       child: Container(
                    //         padding: EdgeInsets.all(1),
                    //         decoration: BoxDecoration(
                    //           color: CustomTheme.lightyellow,
                    //           borderRadius: BorderRadius.circular(6),
                    //         ),
                    //         constraints: const BoxConstraints(
                    //           minWidth: 12,
                    //           minHeight: 12,
                    //         ),
                    //         child: Text(
                    //           '10',
                    //           style: new TextStyle(
                    //             color: Colors.white,
                    //             fontSize: 8,
                    //           ),
                    //           textAlign: TextAlign.center,
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
