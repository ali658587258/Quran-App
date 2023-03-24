import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../src/app_color.dart';

class CardItem extends StatelessWidget {

  final functon;
  final String text;
  final String number;


  CardItem({required this.text,required this.number,required this.functon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: functon,
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7,right: 20,left: 20,bottom: 5),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.KAppColor
                    ),
                    child: Center(
                      child: Text(
                        number,
                        style: TextStyle(
                            color: AppColor.kWhiteColor
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 20,
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        color: AppColor.KMText,
                      fontSize: 20,
                      fontFamily: 'quran',
                        shadows: [
                          Shadow(
                            offset: Offset(.5, .5),
                            blurRadius: 1.0,
                            color: AppColor.KText,
                          )
                        ]),
                    textDirection: TextDirection.rtl,
                    ),
                ],
              ),
            ),
            Divider(
              thickness: 0.75,
            )
          ],
        ),
      ),
    );
  }
}
