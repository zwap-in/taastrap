import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - Generic tablet
class Nexus9 extends QueryDevice{

  Nexus9(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 1536, maxWidth: 2048, currentMaxWidth: currentMaxWidth, );

}