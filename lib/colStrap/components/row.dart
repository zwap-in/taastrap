import 'package:flutter/cupertino.dart';

import 'element.dart';

/// It creates a responsive rows
class ResponsiveRow extends StatelessWidget{

  /// The children to make responsive with a mapping sizes
  final Map<Widget, Map<String, int>> children;

  /// The device type in current use
  final int deviceType;

  ResponsiveRow({Key? key,
    required this.children,
    required this.deviceType
  }): super(key: key);

  /// It retrieves the children in many row as it needs
  List<Row> _getChildren(){
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
      if(tmpCounter > 5){
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
    return Column(
      children: this._getChildren(),
    );
  }

}