import 'package:flutter/cupertino.dart';
import 'package:taastrap/mediaQueries/components/queryDevice.dart';

/// @Description: it handles the following devices
///   - Ipad 3
///   - Ipad 4
///   - Ipad Pro
class Ipad34Pro extends QueryDevice{

  Ipad34Pro(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 768, maxWidth: 1024, currentMaxWidth: currentMaxWidth, );

}