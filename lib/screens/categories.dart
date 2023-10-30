import 'package:flutter/material.dart';
import 'package:onlinebookhubapp/categories_division/Programming_division.dart';
import 'package:onlinebookhubapp/categories_division/astronomy_division.dart';
import 'package:onlinebookhubapp/categories_division/biology_division.dart';
import 'package:onlinebookhubapp/categories_division/chemistry_division.dart';
import 'package:onlinebookhubapp/categories_division/history_division.dart';
import 'package:onlinebookhubapp/categories_division/nursery_division.dart';
import 'package:onlinebookhubapp/models/biology.dart';
import 'package:onlinebookhubapp/models/product_detail1.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Categories')),
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Add some space between title and body
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12), // Set padding to zero
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  InkWell(
                    onDoubleTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NurseryScreen(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/cat/nur2.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Nursery',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HistoryScreen(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/cat/history.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'History',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BiologyScreen(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/cat/bio1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Biology',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProgrammingScreen(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/cat/book3.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Programming',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                     onDoubleTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChemistryScreen(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/cat/chem.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Chemistry',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                     onDoubleTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AstronomyScreen(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/cat/str1.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Astronomy',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
