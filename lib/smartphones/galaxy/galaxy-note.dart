import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_layouts/base.dart';

/// @Description: it handles the following devices
///   - GalaxyS4
///   - GalaxyS5
///   - Galaxy Note 3
class GalaxyS45Note3 extends QueryDevice{

  GalaxyS45Note3(BuildContext context, Orientation? orientation)
      : super(context: context, orientation: orientation, minWidth: 320, maxWidth: 640);

}