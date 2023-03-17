import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_chewie_player/screens/videoPlay/provider/videoplay_provider.dart';
import 'package:video_chewie_player/screens/videoPlay/view/videoplay_screen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => videoplay_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => videoplay_screen(),
        },
      ),
    ),
  );
}