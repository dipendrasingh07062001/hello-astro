import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/home/homecontroller.dart';
import 'package:hello_astro_user/controllers/homenav/controller.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/custom_button.dart';

import '../../routes/app_pages.dart';

class RechargeHistoryView extends StatelessWidget {
  const RechargeHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Words.RechargeHistory.tr,
        height: 60,
        actions: [
          InkWell(
            onTap: () {
              Get.offAllNamed(Routes.homenav, arguments: 3);
            },
            child: Container(
              width: 73,
              margin: const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
              padding: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Palatt.primary),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/png/icons/Icon_wallet.png'),
                  const SizedBox(width: 6),
                  const Text('₹ 200',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Palatt.white))
                ],
              ),
            ),
          )
        ],
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(15, 22, 15, 10),
          decoration: const BoxDecoration(color: Palatt.white, boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 1, spreadRadius: 1)
          ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IntrinsicHeight(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Words.Total.tr,
                            style: googleFontstyle(TextStyle(
                                fontSize: 15,
                                color: Palatt.black,
                                fontWeight: FontWeight.w500))),
                        SizedBox(height: 5),
                        Text(Words.Balance,
                            style: googleFontstyle(TextStyle(
                                fontSize: 15,
                                color: Palatt.black,
                                fontWeight: FontWeight.w500))),
                      ],
                    ),
                    SizedBox(width: 25),
                    Text('₹200.0',
                        style: TextStyle(
                            fontSize: 20,
                            color: Palatt.primary,
                            fontWeight: FontWeight.w700)),
                    SizedBox(width: 16),
                    VerticalDivider(
                      width: 7,
                      thickness: 1,
                      color: Colors.black38,
                    )
                  ],
                ),
              ),
              CustomElevatedButton(
                onPressed: () {},
                backgroundColor: Palatt.primary,
                width: 146,
                height: 40,
                borderRadius: 10,
                child: Text(Words.Rechargenow.tr,
                    style: googleFontstyle(TextStyle(
                        fontSize: 16,
                        color: Palatt.white,
                        fontWeight: FontWeight.w500))),
              ),
            ],
          ),
        ),
        Expanded(
          child: DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 15, right: 15, top: 20, bottom: 5),
                  decoration: BoxDecoration(
                      color: Palatt.primaryLight,
                      border: Border.all(
                        color: Palatt.primary,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  width: double.infinity,
                  height: 50,
                  child: TabBar(
                    labelPadding: const EdgeInsets.all(0),
                    labelStyle: googleFontstyle(const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      height: 2,
                    )),
                    indicator: BoxDecoration(
                      color: Palatt.primary,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    // indicatorWeight: 3,
                    // indicatorColor: Palatt.primary,
                    isScrollable: false,
                    unselectedLabelColor: Palatt.primary,
                    labelColor: Colors.white,
                    tabs: [
                      Tab(
                        text: Words.WalletTransactions.tr,
                      ),
                      Tab(
                        text: Words.PaymentLogs.tr,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListView.builder(
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          return Container(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 15, left: 15, right: 15),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Palatt.boxShadow.withOpacity(0.7)),
                                ),
                              ),
                              child: Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/png/images/rupee-icons@2x.png',
                                    height: 58,
                                    width: 58,
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Chat with ved for 10 minutes',
                                        style: googleFontstyle(TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)),
                                      ),
                                      Text(
                                          '07-07-2022 12:40 PM\n${Words.TransactionID.tr}: AAF62A6F645',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal,
                                              height: 2)),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('₹200.0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Palatt.red,
                                              fontWeight: FontWeight.w700)),
                                      Text('\ninvoice',
                                          style: googleFontstyle(TextStyle(
                                            fontSize: 13,
                                            color: Palatt.primary,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline,
                                          ))),
                                    ],
                                  ),
                                ],
                              )
                              // child: ListTile(
                              //   leading: Image.asset(
                              //       'assets/png/images/rupee-icons@2x.png'),
                              //   title: const Text('Chat with ved for 10 minutes',
                              //       style: TextStyle(
                              //           fontSize: 15,
                              //           fontWeight: FontWeight.w500)),
                              //   subtitle: const Text(
                              //       '07-07-2022 12:40 PM\nTRANSACTION ID: AAF62A6F645',
                              //       style: TextStyle(
                              //           fontSize: 13,
                              //           fontWeight: FontWeight.normal)),
                              //   trailing: const Column(
                              //     crossAxisAlignment: CrossAxisAlignment.end,
                              //     children: [
                              //       Text('₹200.0',
                              //           style: TextStyle(
                              //               fontSize: 20,
                              //               color: Palatt.red,
                              //               fontWeight: FontWeight.w700)),
                              //       Text('\ninvoice',
                              //           style: TextStyle(
                              //               fontSize: 13,
                              //               color: Palatt.primary,
                              //               fontWeight: FontWeight.w500)),
                              //     ],
                              //   ),
                              // ),
                              );
                        },
                      ),
                      ListView.builder(
                        itemCount: 30,
                        itemBuilder: (context, index) {
                          return Container(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 15, left: 15, right: 15),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Palatt.boxShadow.withOpacity(0.7)),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/png/images/rupee-icons@2x.png',
                                    height: 58,
                                    width: 58,
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        Words.Recharge.tr,
                                        style: googleFontstyle(TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)),
                                      ),
                                      Text(
                                          '07-07-2022 12:40 PM\n' +
                                              Words.TransactionID.tr +
                                              ': AAF62A6F645',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal,
                                              height: 2.3)),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('₹200.0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Palatt.red,
                                              fontWeight: FontWeight.w700)),
                                      Text('\nFailed',
                                          style: googleFontstyle(TextStyle(
                                            fontSize: 15,
                                            color: Palatt.red,
                                            fontWeight: FontWeight.w500,
                                          ))),
                                    ],
                                  ),
                                ],
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
