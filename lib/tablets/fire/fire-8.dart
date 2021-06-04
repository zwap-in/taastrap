import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Kindle Fire HD 8.9"
class Fire8 extends QueryDevice{

  Fire8(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 1200, maxWidth: 1600);

}