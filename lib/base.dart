import 'package:flutter/cupertino.dart';

/// @Description: base implementation for any device check
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

  /// @Description check if the current context is with portrait and landscape view
  /// @Return: bool => bool check for this condition
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

  /// @Description check if the current context is with portrait view
  /// @Return: bool => bool check for this condition
  bool isPortrait(){
    return this.orientation == Orientation.portrait && this.isPortraitLandscape();
  }

  /// @Description check if the current context is with landscape view
  /// @Return: bool => bool check for this condition
  bool isLandscape(){
    return this.orientation == Orientation.landscape && this.isPortraitLandscape();
  }

}


