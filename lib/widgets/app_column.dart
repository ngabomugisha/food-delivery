import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icons_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26),
        SizedBox(height: Dimensions.height20),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                        size: 15,
                      )),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "1256"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "Comments")
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconTextWidget(
                icon: Icons.circle,
                text: "Normal",
                color: Colors.black45,
                iconColor: Colors.redAccent),
            SizedBox(
              width: Dimensions.width15,
            ),
            IconTextWidget(
                icon: Icons.location_on,
                text: "1.7km",
                color: Colors.black45,
                iconColor: Colors.blueAccent),
            SizedBox(
              width: Dimensions.width15,
            ),
            IconTextWidget(
                icon: Icons.access_time_rounded,
                text: "32 min",
                color: Colors.black45,
                iconColor: Colors.red),
          ],
        )
      ],
    );
  }
}
