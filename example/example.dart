import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_responsive_layouts/flutter_responsive_layouts.dart';

/// @Description: show the app bar just on iphone 4's layout or iphone x's layout

/// The main function to start the application
main() async{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  /// @Description:
  ///   - it returns the device type based on this two layouts
  /// @Params:
  ///   - BoxConstraints size: the size of the current device
  /// @Return:
  ///   - int: the device type value
  int _deviceType(BoxConstraints size){
    Iphone4 _iphone4Layout = Iphone4(null, null, size.minWidth as int, size.maxWidth as int);
    IphoneX _iphoneXLayout = IphoneX(null, null, size.minWidth as int, size.maxWidth as int);
    return _iphoneXLayout.isPortraitLandscape() ? 0 : (_iphone4Layout.isPortraitLandscape() ? 1 : 2);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(builder: (context, size){
        return Scaffold(
          appBar: _deviceType(size) == 0 || _deviceType(size) == 1 ? AppBar() : null,
          body: Container(),
        );
      },)
    );
  }
}

