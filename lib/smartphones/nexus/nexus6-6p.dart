import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - Nexus 6
class Nexus6 extends QueryDevice{

  Nexus6(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 592);

}

/// @Description: it handles the following devices
///   - Nexus 6P
class Nexus6P extends QueryDevice{

  Nexus6P(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 360, maxWidth: 592);

}