import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - Nexus 5
class Nexus5 extends QueryDevice{

  Nexus5(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 592, currentMaxWidth: currentMaxWidth, );

}