import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio_website/util/textstyle.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';
import 'package:pretty_animated_buttons/widgets/pretty_shadow_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomButton extends StatefulWidget {
  IconData icon;
  final Function onpressed;
  CustomButton(this.icon, this.onpressed, {super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {
          // Add your button click logic here
          widget.onpressed();
        },
        child: Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              border: _isHovered
                  ? Border.all(color: Colors.lightBlue, width: 2)
                  : Border.all(color: Colors.white, width: 2),
              shape: BoxShape.circle,
              color: _isHovered ? Colors.transparent : Colors.transparent,
            ),
            child: WidgetAnimator(
              atRestEffect: WidgetRestingEffects.swing(),
              child: Icon(
                widget.icon,
                size: 30,
                color: _isHovered ? Colors.lightBlue : Colors.white,
              ),
            )),
      ),
    );
  }
}

class CustomButtonOne extends StatefulWidget {
  String text;
  double fontsize;
  final Function onpressed;
  CustomButtonOne(this.text, this.fontsize, this.onpressed, {super.key});

  @override
  State<CustomButtonOne> createState() => _CustomButtonOneState();
}

class _CustomButtonOneState extends State<CustomButtonOne> {
  bool _isHovered = false;
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: InkWell(
        onTap: () {},
        child: PrettyWaveButton(
          backgroundColor: _isHovered ? Colors.lightBlue : Colors.white,
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: widget.fontsize,
              fontWeight: FontWeight.bold,
              color: _isHovered ? Colors.white : Colors.black,
            ),
          ),
          onPressed: () {
            widget.onpressed();
          },
        ),
      ),
    );
  }
}

class CustomContainer extends StatefulWidget {
  final String image;
  final String text;
  final String githubLink;
  final String imageUrl;
  final String videoUrl;
  double height;
  double width;
  CustomContainer(this.image, this.text, this.githubLink, this.imageUrl,
      this.videoUrl, this.height, this.width,
      {Key? key})
      : super(key: key);

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            // Add your button click logic here
          },
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHovered = false;
              });
            },
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.circular(15),
              ),
              height: widget.height,
              width: widget.width, // Adjust this as needed
              child: _isHovered
                  ? Container(
                      color: _isHovered
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.transparent,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.githubLink);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("Github Code"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.imageUrl);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("View Image"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ),
          ),
        ),
        SizedBox(
          width: 60,
        ),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              widget.text,
              textStyle: AppTextStyle.name4TextStyle(),
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomContainer1 extends StatefulWidget {
  final String image;
  final String text;
  final String githubLink;
  final String imageUrl;
  final String videoUrl;
  double height;
  double width;
  CustomContainer1(this.image, this.text, this.githubLink, this.imageUrl,
      this.videoUrl, this.height, this.width,
      {Key? key})
      : super(key: key);

  @override
  _CustomContainer1State createState() => _CustomContainer1State();
}

class _CustomContainer1State extends State<CustomContainer1> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            // Add your button click logic here
          },
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHovered = false;
              });
            },
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fitHeight),
                borderRadius: BorderRadius.circular(15),
              ),
              height: widget.height,
              width: widget.width, // Adjust this as needed
              child: _isHovered
                  ? Container(
                      color: _isHovered
                          ? Colors.grey.withOpacity(0.2)
                          : Colors.transparent,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.githubLink);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("Github Code"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                final Uri _url = Uri.parse(widget.imageUrl);
                                if (!await launchUrl(_url)) {
                                  throw Exception('Could not launch $_url');
                                }
                              },
                              child: Text("View Image"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ),
          ),
        ),
        SizedBox(
          width: 60,
        ),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText(
              widget.text,
              textStyle: AppTextStyle.name4TextStyle(),
              textAlign: TextAlign.center,
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
      ],
    );
  }
}

Future<void> _launchUrl() async {}
