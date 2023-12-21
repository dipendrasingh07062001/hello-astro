import 'package:flutter/material.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';

Widget get loader => const Center(
    child: CircularProgressIndicator(color: Palatt.primary, strokeWidth: 2));
