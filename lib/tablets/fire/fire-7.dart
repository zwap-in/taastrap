import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Kindle Fire HD 7
class Fire7Hd extends QueryDevice{

  Fire7Hd(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 800, maxWidth: 1280);

}