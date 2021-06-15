/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/cupertino.dart';

/// base implementation for any device check
abstract class QueryDevice {

  /// The min width of the query device
  final double minWidth;

  /// The max width of the query device
  final double maxWidth;

  /// The build context of the current device
  final BuildContext? context;

  /// The max width size of the current device
  final int? currentMaxWidth;

  /// An optional instance of the orientation
  final Orientation? orientation;

  QueryDevice({
    required this.minWidth,
    required this.maxWidth,
    this.context,
    this.currentMaxWidth,
    this.orientation
  });

  /// check if the current context is with portrait and landscape view
  bool isPortraitLandscape(){
    if(context == null && currentMaxWidth != null){
      final bool check = currentMaxWidth! >= this.minWidth;
      bool otherCheck = true;
      if(this.maxWidth != -1)
        otherCheck = currentMaxWidth! <= this.maxWidth;
      return check && otherCheck;
    }
    else if(context != null && currentMaxWidth == null){
      return context!.size!.width >= this.minWidth && context!.size!.width < this.maxWidth;
    }
    else{
      return false;
    }
  }

  ///  check if the current context is with portrait view
  bool isPortrait(){
    return this.orientation == Orientation.portrait && this.isPortraitLandscape();
  }

  /// check if the current context is with landscape view
  bool isLandscape(){
    return this.orientation == Orientation.landscape && this.isPortraitLandscape();
  }

}


