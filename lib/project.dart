import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio_website/util/CustomButton.dart';
import 'package:myportfolio_website/util/colors.dart';
import 'package:myportfolio_website/util/textstyle.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: AppColors.bgColors,
          child: Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.07,
                right: size.width * 0.1,
                left: size.width * 0.1),
            child: Container(
              child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Projects",
                        style: AppTextStyle.name1TextStyle(),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                          height: 560,
                          child: CustomContainer(
                              "assets/pro1.PNG",
                              "Pizza App\nProject",
                              "https://github.com/HassaanAhmed60211/PizzaApp",
                              "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                              "https://drive.google.com/file/d/1400eQ77pXVrBk6XTMnAfiGAKJbaK5Jo7/view?usp=sharing",
                              500,
                              770)),
                    ],
                  )),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.lightBlue,
          height: 690,
          child: Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.07,
                right: size.width * 0.1,
                left: size.width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainer1(
                    "assets/pro2.PNG",
                    "Ice Cream App\nProject",
                    "https://github.com/HassaanAhmed60211/IceCreamShopApp",
                    "https://drive.google.com/file/d/1LFkIAqqk373iS8mL9HfRsJwNNS8MMpiG/view?usp=sharing",
                    "videoUrl",
                    540,
                    560),
                CustomContainer1(
                    "assets/pro3.PNG",
                    "Calculator App\nProject",
                    "https://github.com/HassaanAhmed60211/digitalcalc_app",
                    "https://drive.google.com/file/d/1uCVPB6rBpKCSFvKrlWyxQZaZg5yV_QFF/view?usp=sharing",
                    "videoUrl",
                    540,
                    500),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: AppColors.bgColors,
          height: 680,
          child: Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.07,
                  right: size.width * 0.1,
                  left: size.width * 0.1),
              child: CustomContainer(
                  "assets/pro4.PNG",
                  "Todo App\nProject",
                  "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/flutter_todoapp",
                  "https://drive.google.com/file/d/1NsJXQN27nf2spnWPrw59XnOIrw2q5mqU/view?usp=sharing",
                  "https://github.com/HassaanAhmed60211",
                  570,
                  750)),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.lightBlue,
          height: 700,
          child: Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.07,
                right: size.width * 0.1,
                left: size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "FRONT END DEVELOPMENT",
                  style: AppTextStyle.name1TextStyle(),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer1(
                        "assets/uii1.PNG",
                        "Pizza Max App UI",
                        "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/pizzamaxapp",
                        "https://drive.google.com/file/d/1KLh5y93W5UQzcmez3N0EBnZ1NWa9Ip3B/view?usp=sharing",
                        "videoUrl",
                        455,
                        610),
                    CustomContainer1(
                        "assets/ui2.PNG",
                        "Music Player App UI",
                        "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/musicifyapp",
                        "https://drive.google.com/file/d/1-1L58vAezNvK-hZf02F3nd_P_jQfvmOB/view?usp=sharing",
                        "videoUrl",
                        455,
                        610),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          color: AppColors.bgColors,
          height: 670,
          child: Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.07,
                right: size.width * 0.1,
                left: size.width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContainer1(
                        "assets/u4.PNG",
                        "ShopBag App UI",
                        "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/shopbagapp",
                        "https://drive.google.com/file/d/1F3Zm-b1O7SS9YjQL5XFZJW_wMI6031uh/view?usp=sharing",
                        "videoUrl",
                        455,
                        610),
                    CustomContainer1(
                        "assets/ui3.PNG",
                        "Examination Form UI",
                        "https://github.com/HassaanAhmed60211/fluttercourse/tree/main/customwidget_datetime",
                        "https://drive.google.com/file/d/1nYISP4ZwwE-jatPazKCdoycGEpaGl3r1/view?usp=sharing",
                        "videoUrl",
                        455,
                        610),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    "© 2023 Hassaan Ahmed. All rights reserved.",
                    style: AppTextStyle.nameTextStyle(16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget rowimage1(BuildContext context, image, text) {
  return Row(
    children: [
      AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText(
            text,
            textStyle: AppTextStyle.name1TextStyle(),
            speed: const Duration(milliseconds: 100),
          ),
        ],
      ),
      SizedBox(
        width: 60,
      ),
      WidgetAnimator(
        atRestEffect: WidgetRestingEffects.wave(),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: AppColors.bgColors,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 500,
          child: Image.asset(image),
        ),
      ),
    ],
  );
}

Widget rowimage2(BuildContext context, image, text) {
  return Row(children: [
    WidgetAnimator(
      atRestEffect: WidgetRestingEffects.wave(),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: AppColors.bgColors,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 570,
        child: Image.asset(image),
      ),
    ),
    SizedBox(
      width: 60,
    ),
    AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText(
          text,
          textStyle: AppTextStyle.name1TextStyle(),
          speed: const Duration(milliseconds: 100),
        ),
      ],
    )
  ]);
}

Widget colimage2(BuildContext context, image, text, height) {
  return Column(
    children: [
      WidgetAnimator(
        atRestEffect: WidgetRestingEffects.wave(),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: AppColors.bgColors,
            borderRadius: BorderRadius.circular(15),
          ),
          height: height,
          child: Image.asset(image),
        ),
      ),
      SizedBox(
        width: 40,
      ),
      AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TyperAnimatedText(
            text,
            textStyle: AppTextStyle.name4TextStyle(),
            textAlign: TextAlign.center,
            speed: const Duration(milliseconds: 100),
          ),
        ],
      ),
    ],
  );
}
