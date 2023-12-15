import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/theme/themedata.dart';

late double h, w;

class PageviewContent extends StatelessWidget {
  const PageviewContent(
      {super.key,
      required this.text,
      required this.image,
      required this.title});
  final String text, image, title;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        SizedBox(
          height: h * .01,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: w * .04),
          width: double.infinity,
          height: h * .28,
          child: SvgPicture.asset(
            image,
            // fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: h * .038,
        ),
        Container(
          margin: EdgeInsets.only(bottom: h * .013),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: googleFontstyle(TextStyle(
              height: w * .0035,
              color: Palatt.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            )),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * .045),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                height: w * .0044,
                color: Palatt.grey,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
