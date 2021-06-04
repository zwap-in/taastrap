import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Nexus 7
class Nexus7 extends QueryDevice{

  Nexus7(BuildContext? context, Orientation? orientation, int? currentMinWidth, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 601, maxWidth: 906, currentMinWidth: currentMinWidth, currentMaxWidth: currentMaxWidth);

}