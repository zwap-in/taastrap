import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Nexus 5
class Nexus5 extends QueryDevice{

  Nexus5(BuildContext? context, Orientation? orientation, int? currentMinWidth, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 592, currentMaxWidth: currentMaxWidth, currentMinWidth: currentMinWidth);

}