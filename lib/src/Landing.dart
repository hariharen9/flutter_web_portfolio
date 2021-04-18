import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:url_launcher/url_launcher.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

List navitems = ["About", "Resume", "Blog", "Contact"];
List text = ["Student", "Designer", "Devoleper"];

class _LandingState extends State<Landing> {
  double width = 180;
  String name = text[0];
  double height = 1500;
  int i = 0;
  bool condition;

  @override
  void initState() {
    width = 0;
    condition = true;
    super.initState();
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        width = 180;
        height = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101010),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://media.giphy.com/media/3ov9jL6YCEBtw9hF2o/giphy.gif"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0),
                        child: Text(
                          "H-H",
                          style: GoogleFonts.montserrat(
                              fontSize: 31.0,
                              // fontWeight: FontWeight.w100,
                              color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: navitems
                            .map((e) => NavButton(
                                  text: e,
                                  function: () {
                                    setState(() {
                                      condition = true;
                                      height =
                                          MediaQuery.of(context).size.height;
                                    });

                                    Future.delayed(Duration(milliseconds: 200),
                                        () {
                                      Navigator.pushNamed(context, '/$e');
                                    });
                                  },
                                ))
                            .toList(),
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "HARIHAREN",
                        style: GoogleFonts.montserrat(
                            fontSize: 71.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "I'm a ",
                              style: GoogleFonts.courierPrime(
                                  fontSize: 31.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 1000),
                              curve: Curves.easeInOut,
                              width: width,
                              onEnd: () {
                                if (i == 3) i = 0;
                                if (width == 0) {
                                  name = text[i++];
                                }
                                Future.delayed(Duration(milliseconds: 200), () {
                                  setState(() {
                                    width == 200 ? width = 0 : width = 200;
                                  });
                                });
                              },
                              child: Text(
                                name,
                                softWrap: false,
                                style: GoogleFonts.courierPrime(
                                    fontSize: 31.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                            Container(
                              height: 29.0,
                              width: 3.0,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Row(
                              children: [
                                Text(
                                  "ENGLISH",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "தமிழ்",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "മലയാളം",
                                  style: GoogleFonts.poppins(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Column(
                            children: [
                              FlatButton(
                                child: Icon(
                                  AntDesign.twitter,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                onPressed: _launchTwitter,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              FlatButton(
                                  child: Icon(
                                    AntDesign.facebook_square,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  onPressed: _launchFacebook),
                              SizedBox(
                                height: 15.0,
                              ),
                              FlatButton(
                                  child: Icon(
                                    AntDesign.linkedin_square,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  onPressed: _launchLinkedin),
                              SizedBox(
                                height: 15.0,
                              ),
                              FlatButton(
                                  child: Icon(
                                    AntDesign.github,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  onPressed: _launchGithub),
                              SizedBox(
                                height: 15.0,
                              ),
                              FlatButton(
                                  child: Icon(
                                    AntDesign.instagram,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  onPressed: _launchInsta),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavButton extends StatefulWidget {
  final String text;
  final Function function;
  NavButton({this.function, this.text});
  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.function();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: FlatButton(
          child: Text(
            widget.text,
            style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}

const urlTW = "https://twitter.com/thisishariharen";
const urlFB = "https://www.facebook.com/hari.haren.94/";
const urlLI = "https://linkedin.com/in/hariharen9";
const urlGH = "https://github.com/hariharen9";
const urlIN = "https://instagram.com/thisishariharen";

void _launchTwitter() async => await canLaunch(urlTW)
    ? await launch(urlTW)
    : throw 'Could not launch the URL';
void _launchFacebook() async => await canLaunch(urlFB)
    ? await launch(urlFB)
    : throw 'Could not launch the URL';
void _launchLinkedin() async => await canLaunch(urlLI)
    ? await launch(urlLI)
    : throw 'Could not launch the URL';
void _launchGithub() async => await canLaunch(urlGH)
    ? await launch(urlGH)
    : throw 'Could not launch the URL';
void _launchInsta() async => await canLaunch(urlIN)
    ? await launch(urlIN)
    : throw 'Could not launch the URL';
