

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/src/app_color.dart';

class CustomSearchField extends StatelessWidget {

  final TextEditingController? controller;

  CustomSearchField({
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
      child: Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColor.kGreyColor
        ),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5,),
              borderSide: BorderSide(width: 5,color: AppColor.kGreyColor),
            ),
              labelStyle: const TextStyle(color: Colors.black54),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.kWhiteColor)),
              fillColor: AppColor.kGreyColor,
              label: Text(
              'Search',
              style: (
              TextStyle(
                fontSize: 13
              )
              ),
            ),
            focusColor: AppColor.kGreyColor,
            suffixIcon: Icon(Icons.search,size: 20,)
          )
        ),
      ),
    ) ;
  }
}
