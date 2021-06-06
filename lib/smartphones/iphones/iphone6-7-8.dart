import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Iphone 6
///   - Iphone 6S
///   - Iphone 7
///   - Iphone 8
class Iphone678 extends QueryDevice{

  Iphone678(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 375, maxWidth: 667,  currentMaxWidth: currentMaxWidth);

}

class Iphone678Plus extends QueryDevice{

  Iphone678Plus(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 414, maxWidth: 736, currentMaxWidth: currentMaxWidth, );

}