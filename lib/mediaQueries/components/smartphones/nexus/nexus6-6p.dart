import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - Nexus 6
class Nexus6 extends QueryDevice{

  Nexus6(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 592,  currentMaxWidth: currentMaxWidth);

}

/// @Description: it handles the following devices
///   - Nexus 6P
class Nexus6P extends QueryDevice{

  Nexus6P(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 592, currentMaxWidth: currentMaxWidth, );

}