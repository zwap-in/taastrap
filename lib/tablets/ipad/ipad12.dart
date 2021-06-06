import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Ipad Pro 12.9"
class Ipad12 extends QueryDevice{

  Ipad12(BuildContext? context, Orientation? orientation, int? currentMaxWidth)
      : super(context: context, orientation: orientation, minWidth: 1024, maxWidth: 1366, currentMaxWidth: currentMaxWidth, );

}