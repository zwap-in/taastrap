import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Pixel XL
class PixelXl extends QueryDevice{

  PixelXl(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 640, currentMaxWidth: currentMaxWidth, );

}