import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Iphone X
class IphoneX extends QueryDevice{

  IphoneX(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 375, maxWidth: 812);

}