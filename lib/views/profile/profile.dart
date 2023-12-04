import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';

import '../../controllers/profile/controller.dart';
import '../../widgets/textwidgets.dart';

class Profile extends GetView<ProfileController> {
  var h = Get.height, w = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palatt.white,
        // resizeToAvoidBottomInset: !astrocontroller.isappointing.value,
        appBar: AppBar(
          elevation: 1,
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.more_vert,
          //       size: w * .080,
          //       color: Colors.black,
          //     ),
          //   )
          // ],
          backgroundColor: Palatt.white,
          leading: ModalRoute.of(context)?.canPop == true
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    size: w * .075,
                    color: Palatt.black,
                  ),
                  onPressed: () {
                    // Get.offAll(() => HomeNav(index: 3));
                    Get.back();
                  },
                )
              : null,
          title: textStyle('Intake Form', Palatt.black,
              fontSize: w * .054, fontWeight: FontWeight.w700),
          centerTitle: true,
        ),
        body: Obx(
          () => SingleChildScrollView(
            padding: EdgeInsets.only(
                left: w * .042, right: w * .042, bottom: h * .04),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: h * .023),
              textStyle('Name', Palatt.black,
                  fontSize: w * .041, fontWeight: FontWeight.w900),
              SizedBox(height: h * .02),
              intakeTextFormField("Enter your name", controller.name, ((p0) {
                return null;
              }), TextCapitalization.words),
              SizedBox(height: h * .025),
              textStyle('Gender', Palatt.black,
                  fontSize: w * .041, fontWeight: FontWeight.w900),
              SizedBox(height: h * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  genderContainer('Female', AppImages.female),
                  genderContainer('Male', AppImages.male),
                ],
              ),

              SizedBox(height: h * .025),
              textStyle('Email', Palatt.black,
                  fontSize: w * .041, fontWeight: FontWeight.w900),
              SizedBox(height: h * .02),
              intakeTextFormField(
                "Enter your name",
                controller.email,
                ((p0) {
                  return null;
                }),
              ),
              SizedBox(height: h * .025),
              textStyle('Phone', Palatt.black,
                  fontSize: w * .041, fontWeight: FontWeight.w900),
              SizedBox(height: h * .02),
              intakeTextFormField(
                "Phone No.",
                controller.email,
                ((p0) {
                  return null;
                }),
              ),
              SizedBox(height: h * .025),

              Row(
                children: [
                  textStyle('Birth Date', Palatt.black,
                      fontSize: w * .041, fontWeight: FontWeight.w900),
                  SizedBox(width: w * .32),
                  textStyle('Time', Palatt.black,
                      fontSize: w * .041, fontWeight: FontWeight.w900),
                ],
              ),
              SizedBox(height: h * .02),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  height: h * .06,
                  width: w * .4,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffdbdbdb), width: w * .0044),
                    borderRadius: const BorderRadius.all(Radius.circular(11)),
                  ),
                  child: TextFormField(
                    readOnly: true,
                    textAlignVertical: TextAlignVertical.bottom,
                    controller: controller.name,
                    style: TextStyle(
                        fontSize: w * .044, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                          left: w * .032, top: h * .018, bottom: h * .018),
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down,
                        size: w * .066,
                      ),
                      suffixIconColor: const Color(0xff898989),
                      hintText: "DD/MM/YYYY",
                      hintStyle: TextStyle(
                          color: const Color(0xff898989),
                          fontSize: w * .039,
                          fontWeight: FontWeight.w500),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, color: Colors.transparent),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, color: Colors.transparent),
                      ),
                    ),
                    onTap: () async {
                      FocusScope.of(context).requestFocus(FocusNode());
                      await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now())
                          .then((selectedDate) {
                        // if (selectedDate != null) {
                        //   chatcontroller.dateController.text =
                        //       DateFormat('dd-MM-yyyy').format(selectedDate);
                        //   chatcontroller.birthday = selectedDate;
                        // }
                      });
                    },
                  ),
                ),
                Container(
                  height: h * .06,
                  width: w * .4,
                  padding: EdgeInsets.symmetric(horizontal: w * .032),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xffdbdbdb), width: w * .0044),
                    borderRadius: const BorderRadius.all(Radius.circular(11)),
                  ),
                  child: Center(
                    child: TextFormField(
                      readOnly: true,
                      textAlignVertical: TextAlignVertical.bottom,
                      controller: controller
                          .name, //editing controller of this TextField
                      style: TextStyle(
                          fontSize: w * .044, fontWeight: FontWeight.w500),

                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                            left: w * .032, top: h * .018, bottom: h * .018),
                        hintText: "12:30 PM",
                        hintStyle: TextStyle(
                            color: const Color(0xff898989),
                            fontSize: w * .039,
                            fontWeight: FontWeight.w500),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 0, color: Colors.transparent),
                        ),
                      ),
                      //set it true, so that user will not able to edit text
                      onTap: () async {
                        TimeOfDay? pickedTime = await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );

                        if (pickedTime != null) {
                          DateTime parsedTime = DateTime(
                              2000, 0, 0, pickedTime.hour, pickedTime.minute);
                          // DateFormat.jm()
                          //     // ignore: use_build_context_synchronously
                          //     .parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          // String formattedTime =
                          //     DateFormat('hh:mm a').format(parsedTime);

                          // setState(() {
                          //   chatcontroller.birthTime = parsedTime;
                          //   chatcontroller.timeController.text =
                          //       formattedTime; //set the value of text field.
                          // });
                        } else {}
                      },
                    ),
                  ),
                ),
              ]),
              SizedBox(height: h * .025),
              textStyle('Place Of Birth', Palatt.black,
                  fontSize: w * .041, fontWeight: FontWeight.w900),
              SizedBox(height: h * .02),
              intakeTextFormField(
                "Place Of Birth",
                controller.birthplace,
                ((p0) {
                  return null;
                }),
              ),
              SizedBox(height: h * .025),
              // textStyle('Occupation', Palatt.black,
              //     fontSize: w * .041, fontWeight: FontWeight.w900),
              // SizedBox(height: h * .02),
              // intakeTextFormField(
              //   "Occupation",
              //   chatcontroller.occupation,
              //   ((p0) {
              //     return null;
              //   }),
              // ),
              // SizedBox(height: h * .025),
              // textStyle('Marital status', Palatt.black,
              //     fontSize: w * .041, fontWeight: FontWeight.w900),
              // SizedBox(height: h * .02),
              // intakeTextFormField(
              //   "Marriage",
              //   chatcontroller.maritalStatus,
              //   ((p0) {
              //     return null;
              //   }),
              // ),
              // SizedBox(height: h * .025),
              // textStyle('Area of Concern/Services', Palatt.black,
              //     fontSize: w * .041, fontWeight: FontWeight.w900),
              // SizedBox(height: h * .02),
              // intakeTextFormField(
              //   "Area of concern",
              //   chatcontroller.concern,
              //   ((p0) {
              //     return null;
              //   }),
              // ),
              // SizedBox(height: h * .025),
              // textStyle('Attachment', Palatt.black,
              //     fontSize: w * .041, fontWeight: FontWeight.w900),
              // SizedBox(height: h * .02),

              SizedBox(height: h * .032),
              InkWell(
                onTap: () {},
                child: Container(
                  height: h * .06,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: w * .032),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Palatt.primary,
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                  ),
                  child: textStyle('Submit', Palatt.white,
                      fontSize: w * .04, fontWeight: FontWeight.w500),
                ),
              ),
            ]),
          ),
        ));
  }

  Widget genderContainer(String title, String imagePath) {
    return InkWell(
      onTap: () {
        controller.gender.value = title;
      },
      child: Container(
        height: h * .105,
        width: w * .4,
        decoration: BoxDecoration(
          border: Border.all(
              color: controller.gender.value == title
                  ? Colors.green
                  : const Color(0xffdbdbdb),
              width: w * .0044),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            textStyle(title, Palatt.black,
                fontSize: w * .039, fontWeight: FontWeight.w500),
            SvgPicture.asset(imagePath)
          ],
        ),
      ),
    );
  }

  TextFormField intakeTextFormField(String hintText,
      TextEditingController controller, String? Function(String?)? validator,
      [TextCapitalization textCapitalization = TextCapitalization.none]) {
    return TextFormField(
      showCursor: true,
      autofocus: false,
      style: TextStyle(fontSize: w * .039, fontWeight: FontWeight.w500),
      keyboardType: TextInputType.name,
      textCapitalization: textCapitalization,
      controller: controller,
      cursorColor: Palatt.black,
      validator: validator,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: w * .032, vertical: h * .018),
        isDense: true,
        hintText: hintText,
        hintStyle: TextStyle(
            color: Palatt.grey,
            fontSize: w * .044,
            fontWeight: FontWeight.w500),
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: w * .0044, color: const Color(0xffdbdbdb)),
          borderRadius: const BorderRadius.all(Radius.circular(11)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(width: w * .0044, color: const Color(0xffdbdbdb)),
          borderRadius: const BorderRadius.all(Radius.circular(11)),
        ),
      ),
    );
  }
}
