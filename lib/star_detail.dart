import 'package:example_selfimprove/star_listi.dart';
import 'package:flutter/material.dart';

import 'models/star.dart';

class StarDetail extends StatelessWidget {
  int cameIndex;
  Star? selectedStar;
  StarDetail(this.cameIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    selectedStar = StarList.allStars![cameIndex];
    // debugPrint("check it==>>>>>  $cameIndex");
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.pink,
              ),
            ),
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset(
                  "assets/${selectedStar!.starImage}",
                  fit: BoxFit.contain,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            primary: true,
            title: FittedBox(
              // width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "${selectedStar!.starName} Ýyldyzy we Aýratynlyklary",
                softWrap: true,
                style: const TextStyle(
                    fontFamily: 'MyFont',
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 246, 249),
                    // border: Border.all(color: Colors.pink, width: 3.0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Text(selectedStar!.starDetail,
                    style: const TextStyle(
                        height: 2,
                        fontSize: 18,
                        color: Color.fromARGB(255, 202, 50, 100),
                        fontFamily: 'MyFont')),
              ),
            ),
          )
        ],
      ),
    );
  }
}
