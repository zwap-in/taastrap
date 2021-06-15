import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - GalaxyS6
class GalaxyS6 extends QueryDevice{

  GalaxyS6(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 640, currentMaxWidth: currentMaxWidth, );

}