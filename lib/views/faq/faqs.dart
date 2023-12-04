import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/space.dart';

class FAQs extends GetView {
  const FAQs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "FAQs"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceVertical(15),
            Text(
              "FAQs",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Palatt.black,
              ),
            ),
            spaceVertical(15),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Palatt.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Palatt.boxShadow,
                            blurRadius: 4,
                          )
                        ]),
                    child: ExpansionTile(
                      iconColor: Palatt.primary,
                      collapsedIconColor: Palatt.primary,
                      title: Text(
                        "Lorem ipsum",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Palatt.black,
                        ),
                      ),
                      childrenPadding: EdgeInsets.all(10),
                      children: [
                        Text(
                          "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Fin bus Bono rum et Malo rum for use.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Palatt.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
