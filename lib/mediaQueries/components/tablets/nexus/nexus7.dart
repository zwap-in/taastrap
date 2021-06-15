import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - Nexus 7
class Nexus7 extends QueryDevice{

  Nexus7(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 601, maxWidth: 906,  currentMaxWidth: currentMaxWidth);

}