import 'package:flutter/material.dart';
import 'package:mediaquery/card_database.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

    static final List<CardDatabase> database = [
    CardDatabase(image: 'images/card1.jpg', name: 'Adam Marchel'),
    CardDatabase(image: 'images/card2.jpg', name: 'Ilham Marchel'),
    CardDatabase(image: 'images/card3.jpg', name: 'Iqbal Muhammad')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: database.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.fromLTRB(15, 0, 0, 5),
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.4,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage(database[index].image),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        database[index].name,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                      child: Text(
                        'An active student',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height / 26,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff6451E3)),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        'follow election',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff6451E3)),
                      )),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
