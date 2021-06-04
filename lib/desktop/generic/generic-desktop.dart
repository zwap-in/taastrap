import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Generic desktop
class GenericDesktop extends QueryDevice{

  GenericDesktop(BuildContext context, Orientation? orientation, int? currentMinWidth, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 1200, maxWidth: -1, currentMinWidth: currentMinWidth, currentMaxWidth: currentMaxWidth);

}