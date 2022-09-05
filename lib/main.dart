import 'package:flutter/material.dart';
import 'package:mobile/pages/landing_page.dart';
import 'package:mobile/pages/stop_watch.dart';
import 'package:mobile/pages/salutation_page.dart';
import 'package:mobile/pages/menu.dart';

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
