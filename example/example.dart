import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_responsive_layouts/flutter_responsive_layouts.dart';

/// @Description: show the app bar just on iphone 4's layout or iphone x's layout
///

/// The main function to start the application
main() async{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Iphone4 _iphone4Layout = Iphone4(context, null);
    IphoneX _iphoneXLayout = IphoneX(context, null);

    int _deviceType = _iphoneXLayout.isPortraitLandscape() ? 0 : (_iphone4Layout.isPortraitLandscape() ? 1 : 2);

    return MaterialApp(
      home: Scaffold(
        appBar: _deviceType == 0 || _deviceType == 1 ? AppBar() : null,
        body: Container(),
      )
    );
  }
}

