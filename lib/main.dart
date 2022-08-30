import 'package:flutter/material.dart';
import 'package:mobile/landing_page.dart';
import 'package:mobile/stop_watch.dart';
import 'package:mobile/salutation_page.dart';
import 'package:mobile/menu.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => Landing_page(),
          // When navigating to the "/second" route, build the SecondScreen widget
        },
      ),
    );