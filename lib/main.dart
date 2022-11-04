import 'package:cart/androidscreen/detailsscreen.dart';
import 'package:cart/androidscreen/screenone.dart';
import 'package:cart/androidscreen/screentwo.dart';
import 'package:cart/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'androidscreen/screenprovider.dart';

void main()
{

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.amber)
  );

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<screenoeprovider>(create:(context) => screenoeprovider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home(),
          '/sone':(context) => screenone(),
          '/stwo':(context) => screentwo(),
          '/detail':(context) => detailsScreen(),
        },
      ),
    ),
  );
}