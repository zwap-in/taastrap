import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - GalaxyS6
class GalaxyS6 extends QueryDevice{

  GalaxyS6(BuildContext? context, Orientation? orientation, int? currentMinWidth, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 640, currentMaxWidth: currentMaxWidth, currentMinWidth: currentMinWidth);

}