import 'package:flutter/material.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';

import '../../models/sunshins.dart';

class Horoscope extends StatelessWidget {
  const Horoscope({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text(
            "Horoscope",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          Wrap(
            children: SunshineData.sunshines
                .map((e) => Container(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(e.image),
                                // colorFilter: const ColorFilter.mode(
                                //   Palatt.yellow,
                                //   BlendMode.hardLight,
                                // ),
                              ),
                            ),
                          ),
                          Text(
                            e.name,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 2,
                            ),
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
