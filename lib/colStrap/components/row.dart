import 'package:flutter/cupertino.dart';
import 'package:taastrap/taastrap.dart';

import 'element.dart';

/// It creates a responsive rows
class ResponsiveRow extends StatelessWidget{

  /// The children to make responsive with a mapping sizes
  final Map<Widget, Map<String, int>> children;

  /// The list controller
  final ScrollController? controller;

  /// The axis direction of the list scroll
  final Axis axis;

  ResponsiveRow({Key? key,
    required this.children,
    this.axis = Axis.vertical,
    this.controller
  }): super(key: key);

  /// It retrieves the children in many row as it needs
  List<Row> _getChildren(int deviceType){
    List<Row> finals = [];
    List<Widget> tmpChildren = [];
    int counter = 0;
    this.children.forEach((Widget key, Map<String, int> value) {
      int? xs = value['xs'] ?? null;
      int? sm = value['sm'] ?? null;
      int? md = value['md'] ?? null;
      int? lg = value['lg'] ?? null;
      int? xl = value['xl'] ?? null;
      ResponsiveElement tmp = ResponsiveElement(
        element: key,
        deviceType: deviceType,
        xs: xs,
        sm: sm,
        md: md,
        lg: lg,
        xl: xl
      );
      int currentSize = tmp.getSizeElement();
      int tmpCounter = counter + currentSize;
      if(tmpCounter > 12){
        finals.add(
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: tmpChildren,
            )
        );
        tmpChildren = [tmp];
        counter = currentSize;
      }
      else{
        tmpChildren.add(tmp);
        counter += currentSize;
      }
    });
    finals.add(Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: tmpChildren,
    ));
    return finals;
  }



  @override
  Widget build(BuildContext context) {

    int _deviceType = DeviceInherit.of(context).deviceType;

    return ListView(
      controller: this.controller,
      scrollDirection: this.axis,
      children: this._getChildren(_deviceType),
    );
  }

}