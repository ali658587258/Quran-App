import 'package:flutter/material.dart';
import 'package:quran/component/card_item.dart';
import 'package:quran/screen/surah_screen.dart';
import 'package:quran/src/app_color.dart';

import '../component/arabic_sur_number.dart';
import '../component/my_drawer.dart';
import '../src/constans.dart';

class HomeScreen extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Go to bookmark',
        child: const Icon(Icons.bookmark),
        backgroundColor: Colors.green,
        onPressed: () async {
          fabIsClicked = true;
          if (await readBookmark() == true) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SurahBuilder(
                      arabic: quran[0],
                      sura: bookmarkedSura - 1,
                      suraName: arabicName[bookmarkedSura - 1]['name'],
                      ayah: bookmarkedAyah,

                    )));
          }
        },
      ),
      backgroundColor: AppColor.kWhiteColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
              ),
              color: AppColor.KAppColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                        onPressed: (){
                          scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(Icons.menu,color: AppColor.kWhiteColor,)
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  const Text(
                    //"القرآن",
                    "Quran",
                    style: TextStyle(
                      //fontFamily: 'quran',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: AppColor.kWhiteColor,
                        shadows: [
                          Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 2.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ]),
                  ),
                ],
              )
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                for (int i = 0; i < 114; i++)
                  CardItem(
                      text: arabicName[i]['name'],

                      number: '${i+1}',
                      functon: () {
                        fabIsClicked = false;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SurahBuilder(
                                arabic: quran[0],
                                sura: i,
                                suraName: arabicName[i]['name'],
                                ayah: 0,
                              )),
                        );
                      },
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
