/// IMPORTING THIRD PARTY PACKAGES
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

/// IMPORTING LOCAL PACKAGES
import '../../mediaQueries/mediaQueries.dart';

import 'element.dart';


/// Custom class to build element
class BuildChild{

  /// The tmp widget to add inside this responsive child
  final Widget tmpWidget;

  /// The current size
  final double currentSize;

  /// The max width of the row
  final double maxWidth;

  /// The current counter for the current width
  double currentCounter;

  /// The tmp children list
  List<Widget> tmpChildren;

  /// The finals row to append inside the responsive widget
  List<Row> finals;

  BuildChild({
    required this.tmpWidget,
    required this.currentSize,
    required this.maxWidth,
    required this.currentCounter,
    required this.tmpChildren,
    required this.finals,
  });

  /// It builds the responsive child
  void buildChild(){
    double tmpCounter = this.currentCounter + this.currentSize;
    if(tmpCounter >= this.maxWidth){
      this.finals.add(
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List<Widget>.generate(this.tmpChildren.length, ((index) => this.tmpChildren[index])),
          )
      );
      this.tmpChildren = [tmpWidget];
      this.currentCounter = currentSize;
    }
    else{
      this.tmpChildren.add(tmpWidget);
      this.currentCounter += currentSize;
    }
  }

}


/// It creates a responsive rows
class ResponsiveRow<T> extends StatelessWidget{

  /// The children to make responsive with a mapping sizes
  final T children;

  /// The axis direction of the list scroll
  final Axis axis;

  /// The list controller
  final ScrollController? controller;

  /// Padding for internal custom child
  final EdgeInsets? customInternalPadding;

  /// It renders clickable the element
  final Function()? onClickCallable;

  ResponsiveRow({Key? key,
    required this.children,
    this.axis = Axis.vertical,
    this.controller,
    this.customInternalPadding,
    this.onClickCallable
  }): super(key: key);


  /// It retrieves the children in many row as it needs
  List<Row> _getChildren(int deviceType, double maxWidth){
    List<Row> finals = [];
    List<Widget> tmpChildren = [];
    double counter = 0;
    double childSize;
    bool check = this.children is List;
    if(check){
      List<Widget> elements = this.children as List<Widget>;
      elements.forEach((Widget key) {
        ResponsiveWidget child = key as ResponsiveWidget;
        childSize = child.getSize();
        Widget tmpWidget = Flexible(
          flex: 0,
          fit: FlexFit.tight,
          child: Padding(
            padding: this.customInternalPadding == null ? EdgeInsets.zero : this.customInternalPadding!,
            child: this.onClickCallable != null ? InkWell(
              onTap: () => this.onClickCallable!(),
              child: child,
            ) : child,
          ),
        );
        double leftWidget = this.customInternalPadding != null ? this.customInternalPadding!.left : 0;
        double rightWidget = this.customInternalPadding != null ? this.customInternalPadding!.right : 0;
        double currentSize = childSize + leftWidget + rightWidget;
        BuildChild childBuilt = BuildChild(
            tmpWidget: tmpWidget,
            currentSize: currentSize,
            maxWidth: maxWidth,
            currentCounter: counter,
            tmpChildren: tmpChildren,
            finals: finals
        );
        childBuilt.buildChild();
        counter = childBuilt.currentCounter;
        tmpChildren = childBuilt.tmpChildren;
        finals = childBuilt.finals;
      });
    }
    else{
      Map<Widget, Map<String, int>> elements = this.children as Map<Widget, Map<String, int>>;
      elements.forEach((Widget key, Map<String, int> value) {
        int? xs = value['xs'] ?? null;
        int? sm = value['sm'] ?? null;
        int? md = value['md'] ?? null;
        int? lg = value['lg'] ?? null;
        int? xl = value['xl'] ?? null;
        ResponsiveElement tmpWidget = ResponsiveElement(
            element: key,
            deviceType: deviceType,
            xs: xs,
            sm: sm,
            md: md,
            lg: lg,
            xl: xl
        );
        childSize = tmpWidget.getSizeElement().toDouble();
        BuildChild child = BuildChild(
            tmpWidget: tmpWidget,
            currentSize: childSize,
            maxWidth: maxWidth,
            currentCounter: counter,
            tmpChildren: tmpChildren,
            finals: finals
        );
        child.buildChild();
        counter = child.currentCounter;
        tmpChildren = child.tmpChildren;
        finals = child.finals;
      });
    }
    finals.add(Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List<Widget>.generate(tmpChildren.length, (index) => tmpChildren[index]),
    ));
    return finals;
  }



  @override
  Widget build(BuildContext context) {
    int _deviceType = GetIt.I<Generic>().deviceType();
    return LayoutBuilder(builder: (contextBuilder, constraints){
      return this.controller == null ? (this.axis == Axis.vertical ? Column(
        children: this._getChildren(_deviceType, constraints.maxWidth),
      ) : Row(
        children: this._getChildren(_deviceType, constraints.maxWidth),
      )) : ListView(
        controller: this.controller,
        scrollDirection: this.axis,
        children: this._getChildren(_deviceType, constraints.maxWidth),
      );
    });
  }

}