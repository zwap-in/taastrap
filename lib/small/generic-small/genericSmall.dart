import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Generic small device
class GenericSmall extends QueryDevice{

  GenericSmall(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 0, maxWidth: 320,  currentMaxWidth: currentMaxWidth);

}