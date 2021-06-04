import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Pixel
class Pixel extends QueryDevice{

  Pixel(BuildContext? context, Orientation? orientation, int? currentMinWidth, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 640, currentMinWidth: currentMinWidth, currentMaxWidth: currentMaxWidth);

}