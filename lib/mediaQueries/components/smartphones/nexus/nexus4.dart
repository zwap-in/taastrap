import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - Nexus 4
class Nexus4 extends QueryDevice{

  Nexus4(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 384, maxWidth: 592,  currentMaxWidth: currentMaxWidth);

}