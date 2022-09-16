import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freedom/home/food_page_body.dart';
import 'package:freedom/utils/color.dart';
import 'package:freedom/widgets/big_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //container for navbar
        Container(
          child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    BigText(text: "Nigeria", color: AppColors.mainColor),
                    Row(
                      children: [
                         SizedBox(
                        width: 10,
                      ),
                        BigText(
                          text: "Osun",
                          color: Colors.black54,
                        
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ]),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              )),
        ),
      FoodPageBody() ],
    ));
  }
}
