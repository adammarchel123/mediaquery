import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Color(0xff6451E3),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final List<CardDatabase> database = [
    CardDatabase(image: 'images/card1.jpg', name: 'Adam Marchel'),
    CardDatabase(image: 'images/card2.jpg', name: 'Ilham Marchel'),
    CardDatabase(image: 'images/card3.jpg', name: 'Iqbal Muhammad')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              listTile,
              welcomeToClass,
              structure,
              Banner(),
              Container(
                margin: EdgeInsets.fromLTRB(15, 25, 15, 15),
                child: Text(
                  'Candidate list',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20)),
                                    image: DecorationImage(
                                        image:
                                            AssetImage(database[index].image),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(
                                  database[index].name,
                                  style: fsize_14,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                                child: Text(
                                  'An active student',
                                  style: fsize_12,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: MediaQuery.of(context).size.height / 26,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff6451E3)),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text(
                                  'follow election',
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xff6451E3)),
                                )),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextStyle fsize_14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

TextStyle fsize_12 = TextStyle(fontSize: 12);
TextStyle fsize_18 =
    TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black);
TextStyle fsize_23 = TextStyle(fontSize: 23, fontWeight: FontWeight.w600);

ListTile listTile = ListTile(
  title: Text(
    'Good Morning',
    style: fsize_12,
  ),
  subtitle: Text('Jordhan Figueroa', style: fsize_18),
  trailing: Icon(Icons.notification_add_outlined),
);

Container welcomeToClass = Container(
    margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
    child: Text(
      'Welcome to Class \nStructure App',
      style: fsize_23,
    ));

class StructureColumn extends StatelessWidget {
  const StructureColumn(
      {Key? key,
      required this.color,
      required this.iconData,
      required this.text})
      : super(key: key);

  final int color;
  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 7,
          height: MediaQuery.of(context).size.width / 7,
          decoration: BoxDecoration(
              color: Color(color),
              borderRadius:
                  BorderRadius.circular(MediaQuery.of(context).size.width / 7)),
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(text, style: fsize_12)
      ],
    );
  }
}

Container structure = Container(
  margin: EdgeInsets.fromLTRB(0, 35, 0, 35),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      StructureColumn(
          iconData: Icons.comment, color: 0xffEE615E, text: 'Chairman'),
      StructureColumn(
          iconData: Icons.phone, color: 0xff66B8E3, text: 'Representative'),
      StructureColumn(
          iconData: Icons.settings, color: 0xffF2BF4A, text: 'Treasurer'),
      StructureColumn(
          iconData: Icons.camera_alt, color: 0xff62C357, text: 'Osis'),
    ],
  ),
);

class Banner extends StatelessWidget {
  const Banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 25, 0, 15),
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'This application can be run online or offline and is very easy to operate.',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height / 26,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xff6451E3)),
                        child: Center(
                            child: Text(
                          'Follow soon',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        )),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/illustration_card.png'))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardDatabase {
  String image;
  String name;

  CardDatabase({required this.image, required this.name});
}
