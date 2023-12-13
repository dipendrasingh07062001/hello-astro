import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';

import '../../widgets/cards.dart';

class Following extends GetView {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    Widget view = GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 20,
      childAspectRatio: 0.7,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      children: List.generate(10, (index) => const AstroCard()),
    );
    return Scaffold(
      appBar: CustomAppBar(
        title: "Following",
      ),
      body: view,
    );
  }
}
