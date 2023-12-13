// import 'package:flutter/material.dart';

// import '../../widgets/textwidgets.dart';

// class WalletBalance extends StatefulWidget {
//   final Color color;
//   final double size;
//   const WalletBalance({super.key, required this.color, this.size = 14});

//   @override
//   State<WalletBalance> createState() => _WalletBalanceState();
// }

// class _WalletBalanceState extends State<WalletBalance> {
//   @override
//   Widget build(BuildContext context) {
//     return textStyle(
//       "₹ 200",
//       widget.color,
//       fontSize: widget.size,
//       fontWeight: FontWeight.bold,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/views/bottomsheet/paymentdetails.dart';
import 'package:hello_astro_user/widgets/custom_button.dart';

import '../../theme/colorpalatt.dart';
import '../../widgets/textwidgets.dart';

class WalletBalanceView extends StatelessWidget {
  WalletBalanceView({super.key});
  late double h, w;
  ScrollController controller = ScrollController();
  final _formKey = GlobalKey<FormState>();
  bool val = false;
  bool isChecked = false;

  String isTypeSelected = "";
  @override
  Widget build(BuildContext context) {
    late double h = MediaQuery.of(context).size.height;
    late double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Palatt.white,
      appBar: AppBar(
        toolbarHeight: h * .073,
        elevation: 2,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            textStyle('Wallet Balance: ', Palatt.black,
                fontSize: 22, fontWeight: FontWeight.w500),
            // textStyle('₹90', Palatt.primary, w * .054, FontWeight.w500),
            const WalletBalance(
              color: Palatt.primary,
              size: 22,
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Form(
          key: _formKey,
          child: ListView(
            controller: controller,
            shrinkWrap: true,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 20, bottom: 20),
                width: double.infinity,
                // height: 420,
                // padding: EdgeInsets.symmetric(
                //     horizontal: w * .042, vertical: h * .028),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Palatt.boxShadow,
                    blurRadius: 4,
                  ),
                ]),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: h * .141,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(w * .017),
                        // height: h * .15,
                        width: 23,
                        decoration: BoxDecoration(
                          color: Palatt.primary,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Column(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                height: 20,
                                decoration: const BoxDecoration(
                                  color: Palatt.primaryDark,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(7),
                                    bottomRight: Radius.circular(7),
                                  ),
                                ),
                                child: textStyle('New user only', Colors.white,
                                    fontSize: 10, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: h * .01,
                            ),
                            textStyle('₹1', Colors.white,
                                fontSize: w * .054,
                                fontWeight: FontWeight.w900),
                            textStyle('Get ₹100', Colors.white,
                                fontSize: w * .043,
                                fontWeight: FontWeight.w900),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: h * .02,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: w * .042,
                    right: w * .042,
                    top: w * .042,
                    bottom: w * .025),
                width: double.infinity,
                // height: h * .105,
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Palatt.boxShadow, blurRadius: 4),
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Row(
                        children: [
                          Image.asset('assets/png/icons/coupon.png'),
                          SizedBox(width: w * .02),
                          textStyle('Coupon', Colors.black,
                              fontSize: w * .041, fontWeight: FontWeight.w900),
                          SizedBox(width: w * .65),
                          Image.asset('assets/png/icons/arrow_forward.png')
                        ],
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const Coupon()),
                        // );
                      },
                    ),
                    SizedBox(height: h * .014),
                    TextFormField(
                      style: TextStyle(
                          fontSize: w * .038, fontWeight: FontWeight.w500),
                      keyboardType: TextInputType.name,
                      cursorColor: Palatt.primary,
                      // cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(w * .02),
                        hintText: 'Please enter a valid code',
                        hintStyle: TextStyle(fontSize: w * .033),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: w * .0022, color: Colors.black45),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: w * .0022, color: Colors.black45),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: w * .042,
                    left: w * .042,
                    right: w * .042,
                    bottom: w * .032),
                width: double.infinity,
                // height: h * .123,
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Palatt.boxShadow, blurRadius: 4),
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/png/icons/rupee.png'),
                        SizedBox(width: w * .02),
                        textStyle('Amount', Colors.black,
                            fontSize: w * .041, fontWeight: FontWeight.w900),
                      ],
                    ),
                    SizedBox(height: h * .015),
                    TextFormField(
                      style: TextStyle(
                          fontSize: w * .038, fontWeight: FontWeight.w500),
                      keyboardType: TextInputType.number,
                      cursorColor: Palatt.primary,
                      // cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(w * .03),
                        hintText: 'Enter amount',
                        hintStyle: TextStyle(fontSize: w * .033),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: w * .0022, color: Colors.black45),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: w * .0022, color: Colors.black45),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(7)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: w * .01),
                width: double.infinity,
                // height: h * .46,
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(color: Palatt.boxShadow, blurRadius: 4),
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: h * .01,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * .03),
                        child: CustomElevatedButton(
                            onPressed: () {
                              Get.bottomSheet(PaymentDetail());
                            },
                            width: 345,
                            height: 50,
                            child: textStyle('Proceed to Pay', Colors.white,
                                fontSize: 16, fontWeight: FontWeight.normal))),
                    SizedBox(
                      height: h * .02,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container listTileContainer(String number) {
    late double h = Get.height;
    late double w = Get.width;
    return Container(
      height: w * .043,
      width: w * .043,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isTypeSelected == number ? Palatt.primary : Colors.white,
          border: Border.all(
              color: isTypeSelected == number ? Palatt.primary : Palatt.grey)),
      child: Center(
        child: Visibility(
          visible: isTypeSelected == number ? true : false,
          child: FittedBox(
            child: Icon(Icons.check, color: Colors.white, size: w * .033),
          ),
        ),
      ),
    );
  }
}

class WalletBalance extends StatefulWidget {
  final Color color;
  final double size;
  const WalletBalance({super.key, required this.color, this.size = 22});

  @override
  State<WalletBalance> createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
  @override
  void initState() {
    super.initState();
    // cron();
  }

  RxString walletamount = "".obs;
  @override
  Widget build(BuildContext context) {
    return textStyle(
      "₹ 200",
      widget.color,
      fontSize: widget.size,
      fontWeight: FontWeight.w500,
    );
  }

  // cron() async {
  //   final cron = Cron();
  //   try {
  //     cron.schedule(Schedule.parse('*/5 * * * * *'), () async {
  //       walletamount.value = await getWalletApi();
  //       AstroProfile.price = double.parse(walletamount.value);
  //     });

  //     // await Future.delayed(const Duration(seconds: 20));
  //     // await cron.close();
  //   } on ScheduleParseException {
  //     // "ScheduleParseException" is thrown if cron parsing is failed.
  //     await cron.close();
  //   }
  // }
}
