import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Ipad 1
///   - Ipad 2
///   - Ipad Mini
///   - Ipad Air
class Ipad12MiniAir extends QueryDevice{

  Ipad12MiniAir(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 768, maxWidth: 1024,  currentMaxWidth: currentMaxWidth);

}