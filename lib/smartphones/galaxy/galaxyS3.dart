import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - GalaxyS3
class GalaxyS3 extends QueryDevice{

  GalaxyS3(BuildContext? context, Orientation? orientation, int? currentMinWidth, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 640, currentMinWidth: currentMinWidth, currentMaxWidth: currentMaxWidth);

}