import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:taastrap/taastrap.dart';

/// The main function to start the application
main() async{
  runApp(MyApp());
}

class ExampleCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child:  Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image.network('https://zwap.in/api/media/explorer_babTtSn_QVt1BZG.png', height: 50, width: 50,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                    " when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(onPressed: () {  }, child: Text("Test button"),),
            )
          ],
        ),
      ),
    );
  }


}

class MyApp extends StatelessWidget {

  final Map<Widget, Map<String, int>> widgets = {
    ExampleCard() : {'xl': 12},
    ExampleCard() : {},
    ExampleCard() : {},
    ExampleCard() : {},
    ExampleCard() : {},
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(builder: (context, size){
        Generic _generic = Generic(maxWith: size.maxWidth.toInt());
        int _deviceType = _generic.deviceType();
        return DeviceInherit(
            deviceType: _deviceType,
            child: Scaffold(
              body: _deviceType == -1 ? Container() : SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: ResponsiveRow(children: this.widgets,),
              ),
            )
        );
      },
      )
    );
  }
}

