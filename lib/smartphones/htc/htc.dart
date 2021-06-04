import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - HtcOne
class HtcOne extends QueryDevice{

  HtcOne(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 640);

}