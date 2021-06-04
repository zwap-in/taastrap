import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Ipad 3
///   - Ipad 4
///   - Ipad Pro
class Ipad34Pro extends QueryDevice{

  Ipad34Pro(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 768, maxWidth: 1024);

}