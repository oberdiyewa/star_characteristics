import 'package:flutter/material.dart';

import 'models/star.dart';
import 'my_data/strings.dart';

class StarList extends StatelessWidget {
  static List<Star>? allStars;

  @override
  Widget build(BuildContext context) {
    allStars = makeDataSource();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottomOpacity: 5,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        backgroundColor: const Color.fromARGB(255, 221, 99, 140),
        title: const Center(
          child: Text(
            "Ýyldyzlar barada",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'MyFont'),
          ),
        ),
      ),
      body: makeList(),
    );
  }

  List<Star> makeDataSource() {
    List<Star> stars = [];

    for (var i = 0; i < 12; i++) {
      String starImage = Strings.STAR_NAMES[i].toLowerCase() + "-${i + 1}.jpg";
      debugPrint(starImage);

      Star newStar = Star(Strings.STAR_NAMES[i], Strings.STAR_DATES[i],
          Strings.STAR_GENERAL_FEATURES[i], starImage);

      stars.add(newStar);
    }

    return stars;
  }

  Widget makeList() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return oneRowStar(context, index);
      },
      itemCount: allStars!.length,
    );
  }

  Widget oneRowStar(BuildContext context, int index) {
    Star currentStar = allStars![index];
    return Padding(
      padding: const EdgeInsets.only(top: 7, bottom: 7, right: 20, left: 20),
      child: Container(
        child: PhysicalModel(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          elevation: 4,
          shadowColor: Color.fromARGB(255, 255, 237, 244),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              onTap: (() {
                Navigator.pushNamed(context, "/starDetail/$index");
              }),
              leading: Image.asset(
                "assets/${currentStar.starImage}",
                width: 64,
                height: 64,
              ),
              title: Text(
                currentStar.starName,
                style: TextStyle(
                    fontFamily: 'MyFont',
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.pink.shade500),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(6),
                child: Text(
                  currentStar.starFeature,
                  style: const TextStyle(
                      fontFamily: 'MyFont',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black38),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.pink,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
