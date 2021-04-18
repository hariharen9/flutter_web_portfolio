import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:url_launcher/url_launcher.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
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
                        "Check out my latest blog posts",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "(I am in an On-And-Off Relationship with BLOGGING 😉)",
                        style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "My Blog",
                        style: GoogleFonts.poppins(
                            fontSize: 46.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
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
                                  onPressed: _launchBlog,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://miro.medium.com/max/700/0*pRgsuT9nTcx3ktNE",
                                        head: "Technology is eating our Brains",
                                        sub:
                                            "In the past 10 years, the technological advancements that we humans have achieved are truly surreal. People who said moon landing will be impossible are now discussing a tour to the red planet MARS."),
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _launchBlog,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://miro.medium.com/max/700/0*rWgwiS7Lwh86dECG",
                                        head:
                                            "How to Change Application Name and Launcher Icon in Flutter",
                                        sub:
                                            "Today, I’ll tell you how you can change the default application name and launcher icon in a Flutter Application. Sometimes we create an application and give it a random name, but sooner or later, we realized that we need to change the name of the application."),
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _launchBlog,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://miro.medium.com/max/1000/0*v8L0sz661Or-FpTv",
                                        head: "Augmented Reality-Boon or Bane",
                                        sub:
                                            "Hello buddy! How are you doing? Hope you are doing good in this pandemic situation. I recently delved a bit deeper into the topic of Augmented Reality and I am going to share my thoughts on it now. Let's get started!"),
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _launchBlog,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://miro.medium.com/max/700/0*A1pQ2wE2RCzu2sLO",
                                        head: "How I use YouTube Effectively.",
                                        sub:
                                            "We all use Youtube, But for what? Entertainment? yeah it’s alright , but to what extent ? Literally everyday I used to spend hours by staring into it but without really gaining anything in return. During this pandemic we all are locked inside our homes and it is a golden time to improve our skills and gain additional knowledge, explore our hobbies, building our-self for better future."),
                                  ),
                                ),
                              ),
                              BootstrapCol(
                                fit: FlexFit.tight,
                                sizes: 'col-md-6 col-lg-4 col-sm-12 col-xs-12',
                                child: FlatButton(
                                  onPressed: _launchBlog,
                                  child: Container(
                                    width: 370.0,
                                    child: BlogCard(
                                        image:
                                            "https://miro.medium.com/max/700/1*Rv14Zh4TLwSAbB1c1DV_Rw.png",
                                        head:
                                            "How to Download Courses from Udemy for FREE",
                                        sub:
                                            "Hello everyone. In this article you will know about how to download Udemy courses for free! This is purely using coupon codes for 100% off and is completely used for educational purposes (trust me 😉)"),
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

const url = "https://hariharen.medium.com/";

void _launchBlog() async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch the URL';
