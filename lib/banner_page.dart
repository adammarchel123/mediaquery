import 'package:flutter/material.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

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