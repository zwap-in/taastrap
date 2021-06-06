import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Generic medium
class GenericMedium extends QueryDevice{

  GenericMedium(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 800, maxWidth: 1449, currentMaxWidth: currentMaxWidth, );

}