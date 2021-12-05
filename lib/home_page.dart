import 'package:flutter/material.dart';
import 'package:mediaquery/banner_page.dart';
import 'package:mediaquery/card_page.dart';
import 'package:mediaquery/list_tile_page.dart';
import 'package:mediaquery/structure_page.dart';
import 'package:mediaquery/title_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTilePage(),
              TitlePage(),
              StructurePage(),
              BannerPage(),
              Container(
                margin: EdgeInsets.fromLTRB(15, 25, 15, 15),
                child: Text(
                  'Candidate list',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              CardPage()
            ],
          ),
        ),
      ),
    );
  }
}
