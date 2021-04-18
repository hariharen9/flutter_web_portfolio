import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool condition = false;
  double height = 0;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    setState(() {
      condition = false;
      height = 1500;
      Future.delayed(Duration(milliseconds: 600), () {
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
                controller: controller,
                physics: NeverScrollableScrollPhysics(),
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
                              size: 40.0,
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Get to know me",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "About Me",
                        style: GoogleFonts.poppins(
                            fontSize: 46.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      BootstrapRow(height: 600, children: [
                        BootstrapCol(
                          sizes: 'col-md-12 col-lg-4 col-sm-12',
                          child: MediaQuery.of(context).size.width < 992
                              ? CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "Asset/hari.jpg",
                                  ),
                                  radius:
                                      MediaQuery.of(context).size.width * 0.2)
                              : Container(
                                  height: 500,
                                  child: Image(
                                    image: AssetImage(
                                      "Asset/hari.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                        BootstrapCol(
                          sizes: 'col-md-12 col-lg-8 col-sm-12',
                          child: Container(
                            height: 570.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MediaQuery.of(context).size.width > 992
                                    ? Container()
                                    : SizedBox(
                                        height: 35.0,
                                      ),
                                Text(
                                  "Hello there!",
                                  style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      color: Color(0xff009e66),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                AutoSizeText(
                                  "I\'m HariHaren, A Mobile and Web Application Developer",
                                  maxLines: 2,
                                  style: GoogleFonts.poppins(
                                      fontSize: 33.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                AutoSizeText(
                                  "I am a Student who is currently persuing my batchelors degree on COMPUTRE SCIENCE here at Coimbatore Institute of Technology. I have also been very curious about how computers work and Currently I chose to reside & make Development as my turf. I help convert a vision and an idea into meaningful and useful products. To be blunt, I make Web and Mobile Applications. Having a sharp eye for product evolution helps me prioritize tasks, iterate fast and deliver faster. I have a knack for Gaming and 3D Modelling too.",
                                  maxLines: 8,
                                  style: GoogleFonts.poppins(
                                      fontSize: 20.0,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 25.0,
                                ),
                                Container(
                                  width: double.maxFinite,
                                  height: 2.0,
                                  color: Colors.white70,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child:
                                        MediaQuery.of(context).size.width > 800
                                            ? Row(
                                                children: [
                                                  Cvcard(
                                                    text1: "Name : ",
                                                    text2: "HariHaren",
                                                  ),
                                                  Spacer(),
                                                  Cvcard(
                                                    text1: "Mail : ",
                                                    text2:
                                                        "thisishariharen@gmail.com",
                                                  ),
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Cvcard(
                                                    text1: "Name : ",
                                                    text2: "HariHaren",
                                                  ),
                                                  Spacer(),
                                                  Cvcard(
                                                    text1: "Mail : ",
                                                    text2:
                                                        "thisishariharen@gmail.com",
                                                  ),
                                                ],
                                              )),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: MediaQuery.of(context).size.width > 800
                                      ? Row(
                                          children: [
                                            Cvcard(
                                              text1: "Age : ",
                                              text2: "21",
                                            ),
                                            Spacer(),
                                            Cvcard(
                                              text1: "From : ",
                                              text2: "TamilNadu, IN",
                                            ),
                                          ],
                                        )
                                      : Column(
                                          children: [
                                            Cvcard(
                                              text1: "Age : ",
                                              text2: "21",
                                            ),
                                            Spacer(),
                                            Cvcard(
                                              text1: "From : ",
                                              text2: "TamilNadu, IN",
                                            ),
                                          ],
                                        ),
                                ),
                                SizedBox(
                                  height: 35.0,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        color: Color(0xff009e66),
                                      ),
                                      child: Center(
                                        child: FlatButton(
                                          onPressed: _launchResume,
                                          child: Text(
                                            "Download CV",
                                            style: GoogleFonts.poppins(
                                                fontSize: 16.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                      ),
                                    ),
                                    MediaQuery.of(context).size.width > 670
                                        ? Container(
                                            color: Colors.white70,
                                            width: 300.0,
                                            height: 1.0,
                                            margin: EdgeInsets.only(
                                                left: 7.0, right: 10.0),
                                          )
                                        : Container(),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Things I know ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 25.0,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Tools and Frameworks",
                                  style: GoogleFonts.poppins(
                                      fontSize: 46.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      BootstrapRow(height: 200, children: [
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.mobile1,
                            head: "Mobile Development",
                            sub:
                                "Flutter - Cross platform mobile application developer",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.creditcard,
                            head: "Web Development",
                            sub: " React, Bootstrap, Flutter Web",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.iconfontdesktop,
                            head: "UI/UX Design",
                            sub: "Adobe XD, Figma, Sketch, Framer",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.bars,
                            head: "3D Modelling",
                            sub: "Blender 3D, Spline",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.videocamera,
                            head: "Photo & Video manipulation",
                            sub:
                                "Adobe Photoshop, Premier pro, After effects, DaVinci Resolve, Illustrator",
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-sm-12 col-md-12 col-lg-6',
                          child: ServiceCard(
                            icon: AntDesign.tool,
                            head: "Tools",
                            sub:
                                "VS Code, Android Studio, Pycharm, IntelliJ, Node",
                          ),
                        ),
                      ]),
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

class PlanCard extends StatefulWidget {
  final IconData icon;
  final String btext;
  PlanCard({this.btext, this.icon});
  @override
  _PlanCardState createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      height: 550,
      color: Color(0xff161616),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            color: Color(0xff009e66),
            size: 75.0,
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            "Mobile App Design",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Responsive Design",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Database Development",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Web Design",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "24/7 Support",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            height: 40.0,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xff009e66),
            ),
            child: Center(
              child: Text(
                widget.btext,
                style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final IconData icon;
  final String head;
  final String sub;

  ServiceCard({
    this.head,
    this.icon,
    this.sub,
  });
  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hover = true;
          print("true");
        });
      },
      onExit: (value) {
        setState(() {
          hover = false;
          print("false");
        });
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(-1, 1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5)
              ],
              color: Color(0xff161616),
            ),
            margin: EdgeInsets.only(bottom: 50.0),
            height: 230,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 35.0, right: 35, bottom: 30, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        widget.icon,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        widget.head,
                        style: GoogleFonts.poppins(
                            fontSize: 23.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        widget.sub,
                        style: GoogleFonts.poppins(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                AnimatedContainer(
                  duration: Duration(milliseconds: 800),
                  curve: Curves.easeInOut,
                  height: 2.0,
                  color: !hover ? Color(0xff161616) : Color(0xff009e66),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Cvcard extends StatefulWidget {
  final String text1;
  final String text2;
  Cvcard({this.text2, this.text1});
  @override
  _CvcardState createState() => _CvcardState();
}

class _CvcardState extends State<Cvcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            widget.text1,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
          Text(
            widget.text2,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Color(0xff009e66),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

const urlresume =
    "https://drive.google.com/file/d/1lxr3LVzqeeLvDwy04DotC-3oLlh_pF2r/view?usp=sharing";

void _launchResume() async => await canLaunch(urlresume)
    ? await launch(urlresume)
    : throw 'Could not launch the URL';
