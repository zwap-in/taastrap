import 'package:flutter/cupertino.dart';

/// @Description: base implementation for any device check
abstract class QueryDevice {

  /// The min width of the query device
  final double minWidth;

  /// The max width of the query device
  final double maxWidth;

  /// The build context of the current device
  final BuildContext context;

  /// An optional instance of the orientation
  final Orientation? orientation;

  QueryDevice({
    required this.context,
    required this.minWidth,
    required this.maxWidth,
    this.orientation
  });

  /// @Description check if the current context is with portrait and landscape view
  /// @Params:
  ///   - BuildContext context: The context to get the sizes
  /// @Return: bool => bool check for this condition
  bool isPortraitLandscape(){
    return this.context.size!.width >= this.minWidth && this.context.size!.width < this.maxWidth;
  }

  /// @Description check if the current context is with portrait view
  /// @Params:
  ///   - BuildContext context: The context to get the sizes
  /// @Return: bool => bool check for this condition
  bool isPortrait(){
    return this.orientation == Orientation.portrait && this.isPortraitLandscape();
  }

  /// @Description check if the current context is with landscape view
  /// @Params:
  ///   - BuildContext context: The context to get the sizes
  /// @Return: bool => bool check for this condition
  bool isLandscape(){
    return this.orientation == Orientation.landscape && this.isPortraitLandscape();
  }

}


