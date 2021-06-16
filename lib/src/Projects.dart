import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool condition = false;
  double height = 0;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    setState(() {
      condition = false;
      height = 1500;
      Future.delayed(Duration(milliseconds: 400), () {
        setState(() {
          height = 0;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101010),
      body: Container(
        child: Stack(
          children: [
            SmoothScrollWeb(
              controller: controller,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                controller: controller,
                child: Center(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 25.0, right: 25.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                height = MediaQuery.of(context).size.height;
                              });
                              Future.delayed(Duration(milliseconds: 1000), () {
                                Navigator.pop(context);
                              });
                            },
                            child: Container(
                                child: Icon(
                              Icons.clear_rounded,
                              color: Colors.white,
                              size: 35.0,
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 43.0,
                      ),
                      Text(
                        "Check out my latest Projects here",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Projects",
                        style: GoogleFonts.poppins(
                            fontSize: 46.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Visit my GitHub for many more projects.",
                            style: GoogleFonts.montserrat(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          FlatButton(
                              child: Icon(
                                AntDesign.github,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: _launchGithub),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            " - ⏪ Press this icon 😉",
                            style: GoogleFonts.montserrat(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width > 1300
                              ? MediaQuery.of(context).size.width * 0.65
                              : MediaQuery.of(context).size.width > 1200
                                  ? MediaQuery.of(context).size.width * 0.75
                                  : MediaQuery.of(context).size.width * 0.85,
                          child: BootstrapRow(
                            height: 361,
                            children: [
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _cashtrack,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://play-lh.googleusercontent.com/Gas7uD7_5AOu53NBkW0RaCbS2_4TIFek1olb2HGe_2pVg-H5EzuWFpRCbW6kwwAZNaI=s180-rw",
                                        head: "CashTrack",
                                        sub:
                                            "Are you someone who suffers from impulse buying? Are you planning to increase your savings to buy a new phone or go on a nice vacation, but always lose track of how you spend your money? This app is here to help you achieve your next big goal."),
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _angst,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://play-lh.googleusercontent.com/kLxvPxrqHaFL9lljlV0mbzI3-QqK6F2VHi11LoYPJR7zvC0K3VJ7605b61xx2kWzbog=s180-rw",
                                        head: "Angst",
                                        sub:
                                            "Angst is your guide to reduce your mind-wandering and to feel less anxious. Our handpicked collection of ASMRs, Podcasts, Reading, Exercises, Quizzes, and Videos would help you feel less anxious and would definitely accompany you the next time when you have an anxiety attack."),
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _bookyourdoc,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://sc04.alicdn.com/kf/U3db117176e5048109d53049785397510I.png",
                                        head: "BookYourDoc",
                                        sub:
                                            "In the past year, Many suffered to book doctors appointment. This app will minimize the effort. using a realtime database. you can immediately book a Doctor"),
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _bookyourlot,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://www.asmag.com/upload/pic/case/35333.378375.jpg",
                                        head: "BookYourLot",
                                        sub:
                                            "Hassel free parking spot booking. In Just a click of a button."),
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _pyct,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjcK1uS4MzNKyXn9po6gN62K0TopxC9IiAaw&usqp=CAU",
                                        head: "Pyctionary",
                                        sub:
                                            "A clever dictionaty using Python and machine learning"),
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _autocor,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://hips.hearstapps.com/sev.h-cdn.co/assets/16/26/980x490/landscape-1467062285-autocorrect-fails.jpg",
                                        head: "AutoCorrect",
                                        sub:
                                            "A clever autocorector with probability and suggesstions"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                    top: condition ? null : 0,
                    bottom: condition ? 0 : null,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                      onEnd: () {
                        // setState(() {
                        //   condition ? condition = false : condition = true;
                        //   Future.delayed(Duration(milliseconds: 400), () {
                        //     height = 0;
                        //   });
                        // });
                      },
                      height: height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlogCard extends StatefulWidget {
  final String image;
  final String head;
  final String sub;
  BlogCard({this.head, this.image, this.sub});

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      height: 351 + 10.0,
      //color: Colors.red,
      width: 370,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: Colors.white70,
                image: DecorationImage(
                  image: NetworkImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
              height: 231,
              width: 370,
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: Text(
                widget.head,
                maxLines: 1,
                style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              width: 370,
              child: Text(
                widget.sub,
                maxLines: 3,
                softWrap: true,
                style: GoogleFonts.poppins(
                    height: 1.65,
                    fontSize: 14.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}

const urlbyd = "https://github.com/hariharen9/bookyourdoc";

void _bookyourdoc() async => await canLaunch(urlbyd)
    ? await launch(urlbyd)
    : throw 'Could not launch the URL';

const urlcashtrack =
    "https://play.google.com/store/apps/details?id=com.hariharen.cashtrack&hl=en_IN&gl=US";

void _cashtrack() async => await canLaunch(urlcashtrack)
    ? await launch(urlcashtrack)
    : throw 'Could not launch the URL';

const urlangst =
    "https://play.google.com/store/apps/details?id=com.trouvaille.angst&hl=en_IN&gl=US";

void _angst() async => await canLaunch(urlangst)
    ? await launch(urlangst)
    : throw 'Could not launch the URL';

const urlbookyourlot = "https://github.com/hariharen9/bookyourlot";

void _bookyourlot() async => await canLaunch(urlbookyourlot)
    ? await launch(urlbookyourlot)
    : throw 'Could not launch the URL';

const urlpyct = "https://github.com/hariharen9/Pyctionary";

void _pyct() async => await canLaunch(urlpyct)
    ? await launch(urlpyct)
    : throw 'Could not launch the URL';
const urlautocorrect =
    "https://github.com/hariharen9/Autocorrect-with-Probability";

void _autocor() async => await canLaunch(urlautocorrect)
    ? await launch(urlautocorrect)
    : throw 'Could not launch the URL';

const urlGH = "https://github.com/hariharen9";

void _launchGithub() async => await canLaunch(urlGH)
    ? await launch(urlGH)
    : throw 'Could not launch the URL';
