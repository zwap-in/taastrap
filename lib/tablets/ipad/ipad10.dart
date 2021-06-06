import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Ipad Pro 10.5"
class Ipad10 extends QueryDevice{

  Ipad10(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 834, maxWidth: 1112,  currentMaxWidth: currentMaxWidth);

}