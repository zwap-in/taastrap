import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Generic medium
class GenericMedium extends QueryDevice{

  GenericMedium(BuildContext? context, Orientation? orientation, int? currentMinWidth, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 992, maxWidth: 1200, currentMaxWidth: currentMaxWidth, currentMinWidth: currentMinWidth);

}