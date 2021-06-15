import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - GalaxyS4
///   - GalaxyS5
///   - Galaxy Note 3
class GalaxyS45Note3 extends QueryDevice{

  GalaxyS45Note3(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 320, maxWidth: 640, currentMaxWidth: currentMaxWidth, );

}