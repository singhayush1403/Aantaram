import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 30,
              ),
              Center(
                  child: Image.asset(
                "assets/images/Logo.png",
                height: 30,
              )),
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: new TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Type in your text",
                      fillColor: Colors.white70),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hi Samar!",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: index % 3 == 0
                              ? Image.asset("assets/images/Store.png")
                              : index % 3 == 1
                                  ? Image.asset("assets/images/Store1.png")
                                  : Image.asset("assets/images/Store2.png")),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
        backgroundColor: Colors.white,
        elevation: 10,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
