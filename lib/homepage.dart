import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text(
            " Bottom Navigation Bar",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(children: [
          Expanded(
            child: Container(
              color: _currentIndex == 0
                  ? Colors.deepOrange
                  : _currentIndex == 1
                      ? Colors.green
                      : Colors.brown,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                  color:
                      _currentIndex == 0 ? Colors.redAccent : Colors.deepOrange,
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                  color: _currentIndex == 1 ? Colors.green : Colors.pinkAccent,
                  child: const Column(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                  color: _currentIndex == 2 ? Colors.brown : Colors.green,
                  child: const Column(
                    children: [
                      Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        "message",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ]));
  }
}
