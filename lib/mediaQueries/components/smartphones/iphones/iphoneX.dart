import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - Iphone X
class IphoneX extends QueryDevice{

  IphoneX(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 375, maxWidth: 812,  currentMaxWidth: currentMaxWidth);

}