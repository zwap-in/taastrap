import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Iphone 4
///   - Iphone 4S
class Iphone4 extends QueryDevice{

  Iphone4(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 320, maxWidth: 480);

}