import 'package:flutter/material.dart';
import 'package:mock_screens/constants/custom_theme.dart';
import 'package:mock_screens/views/widgets/scroll_card.dart';

class GridContainer extends StatefulWidget {
  const GridContainer({super.key});

  @override
  State<GridContainer> createState() => _GridContainerState();
}

class _GridContainerState extends State<GridContainer> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List<Widget> _list = []
  @override
  Widget build(BuildContext context) {
    // TabController _controller = TabController(length: 3);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 25, 8, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  _onItemTapped(0);
                },
                child: Text('New',
                    style: (_selectedIndex != 0)
                        ? const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)
                        : const TextStyle(
                            fontSize: 18.0,
                            color: CustomTheme.darkBlue,
                            fontWeight: FontWeight.bold)),
              ),
              InkWell(
                onTap: () {
                  _onItemTapped(1);
                },
                child: Text('Popular',
                    style: (_selectedIndex != 1)
                        ? const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)
                        : const TextStyle(
                            fontSize: 18.0,
                            color: CustomTheme.darkBlue,
                            fontWeight: FontWeight.bold)),
              ),
              InkWell(
                onTap: () {
                  _onItemTapped(2);
                },
                child: Text('Animals',
                    style: (_selectedIndex != 2)
                        ? const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)
                        : const TextStyle(
                            fontSize: 18.0,
                            color: CustomTheme.darkBlue,
                            fontWeight: FontWeight.bold)),
              ),
              InkWell(
                onTap: () {
                  _onItemTapped(3);
                },
                child: Text('Cinema',
                    style: (_selectedIndex != 3)
                        ? const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold)
                        : const TextStyle(
                            fontSize: 18.0,
                            color: CustomTheme.darkBlue,
                            fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(10, (index) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: SmallCard(lock: true),
              );
            }),
          ),
        )
      ],
    );
  }
}
