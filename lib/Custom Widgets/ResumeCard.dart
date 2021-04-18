import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class ResumeCardExp extends StatefulWidget {
  final String head;
  ResumeCardExp(this.head);
  @override
  _ResumeCardExpState createState() => _ResumeCardExpState();
}

class _ResumeCardExpState extends State<ResumeCardExp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.head,
            style: GoogleFonts.poppins(
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          SizedBox(
            height: 15.0,
          ),
          CustomCard(
            head: "Naren Group of Companies",
            sub2: "Internship on Product Manufacturing",
            sub: "Internship (1/Mo)",
          ),
          Container(
            height: 1.5,
            width: MediaQuery.of(context).size.width > 950
                ? MediaQuery.of(context).size.width * 0.35
                : MediaQuery.of(context).size.width * 0.7,
            color: Colors.white,
          ),
          CustomCard(
            head: "NITK-STEP",
            sub2:
                "Internship on Iot with Machine Learning at Pantech Solutions",
            sub: "Internship (1/Mo)",
          ),
          Container(
            height: 1.5,
            width: MediaQuery.of(context).size.width > 950
                ? MediaQuery.of(context).size.width * 0.35
                : MediaQuery.of(context).size.width * 0.7,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class ResumeCardEdu extends StatefulWidget {
  final String head;
  ResumeCardEdu(this.head);
  @override
  _ResumeCardEduState createState() => _ResumeCardEduState();
}

class _ResumeCardEduState extends State<ResumeCardEdu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.head,
            style: GoogleFonts.poppins(
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          SizedBox(
            height: 15.0,
          ),
          CustomCard(
            head: "SSLC",
            sub2:
                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio quo repudiandae",
            sub: "RJ Matriculation Higher Secondary School - Coimbatore / 2016",
          ),
          Container(
            height: 1.5,
            width: MediaQuery.of(context).size.width > 950
                ? MediaQuery.of(context).size.width * 0.35
                : MediaQuery.of(context).size.width * 0.7,
            color: Colors.white,
          ),
          CustomCard(
            head: "Diploma - ECE",
            sub2: "Diploma in Electronics and Eommunication Engineering",
            sub: "PSG Institute of Technology / 2017 - 2019",
          ),
          Container(
            height: 1.5,
            width: MediaQuery.of(context).size.width > 950
                ? MediaQuery.of(context).size.width * 0.35
                : MediaQuery.of(context).size.width * 0.7,
            color: Colors.white,
          ),
          CustomCard(
            head: "Batchelor's Degree - CSE",
            sub2: "BE in the Dept of. Computer Science Engineering",
            sub: "Coimbatore Institute of Techology / 2019 - 2022",
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String head;
  final String sub;
  final String sub2;
  CustomCard({this.head, this.sub, this.sub2});

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: MediaQuery.of(context).size.width > 950
          ? MediaQuery.of(context).size.width * 0.35
          : MediaQuery.of(context).size.width * 0.7,
      color: Color(0xff161616),
      child: Row(
        children: [
          Container(
            width: 50,
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: 2,
                  color: Color(0xff009e66),
                ),
                Positioned(
                  top: 50.0,
                  left: 1,
                  child: Container(
                    height: 20.0,
                    width: 25.0,
                    color: Color(0xff009e66),
                  ),
                ),
                Positioned(
                  top: 53,
                  left: 19.5,
                  child: Transform.rotate(
                    angle: 45 * math.pi / 180,
                    child: Container(
                      height: 14.0,
                      width: 14.0,
                      color: Color(0xff009e66),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width > 950
                ? MediaQuery.of(context).size.width * 0.35 - 60
                : MediaQuery.of(context).size.width * 0.7 - 65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                ),
                Text(
                  widget.head,
                  style:
                      GoogleFonts.poppins(fontSize: 21.0, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.sub,
                  style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  widget.sub2,
                  style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
