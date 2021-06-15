import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - Kindle Fire HD 7
class Fire7Hd extends QueryDevice{

  Fire7Hd(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 800, maxWidth: 1280, currentMaxWidth: currentMaxWidth, );

}