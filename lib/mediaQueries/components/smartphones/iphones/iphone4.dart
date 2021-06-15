import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - Iphone 4
///   - Iphone 4S
class Iphone4 extends QueryDevice{

  Iphone4(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 320, maxWidth: 480,  currentMaxWidth: currentMaxWidth);

}