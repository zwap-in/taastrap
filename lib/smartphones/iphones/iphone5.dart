import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Iphone 5
///   - Iphone 5S
///   - Iphone 5C
///   - Iphone 5SE
class Iphone5 extends QueryDevice{

  Iphone5(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 320, maxWidth: 568);

}