import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:HariHaren/src/About.dart';
import 'package:HariHaren/src/Blog.dart';
import 'package:HariHaren/src/Contact.dart';
import 'package:HariHaren/src/Landing.dart';
import 'package:HariHaren/src/Resume.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler _landingPageHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Landing());

  static Handler _aboutHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          About());

  static Handler _blogHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Blog());

  static Handler _contactHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Contact());

  static Handler _resumeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Resume());

  static void setupRouter() {
    router.define(
      '/',
      handler: _landingPageHandler,
    );
    router.define(
      '/About',
      handler: _aboutHandler,
      // transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/Blog',
      handler: _blogHandler,
      // transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/Contact',
      handler: _contactHandler,
      // transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/Resume',
      handler: _resumeHandler,
      // transitionType: TransitionType.fadeIn,
    );
  }
}
