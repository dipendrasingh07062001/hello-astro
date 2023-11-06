import 'package:flutter/material.dart';

import '../../widgets/textwidgets.dart';

class WalletBalance extends StatefulWidget {
  final Color color;
  final double size;
  const WalletBalance({super.key, required this.color, this.size = 14});

  @override
  State<WalletBalance> createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
  @override
  Widget build(BuildContext context) {
    return textStyle(
      "₹ 200",
      widget.color,
      fontSize: widget.size,
      fontWeight: FontWeight.bold,
    );
  }
}
