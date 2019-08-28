import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import 'myWork.dart';

class AppMainWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AppMainState();
}

class AppMainState extends State<AppMainWidget> {
  // Flutter团队开发的图片选择器（`image_picker`）插件。
  // 适用于iOS和Android的Flutter插件，用于从图像库中拾取图像，并使用相机拍摄新照片。
  // https://pub.dartlang.org/packages/image_picker
  getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    print(image);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            /*我的工作*/
            MyWorkWidget(),
            /*test*/
            _testWidget(),
            _testWidget(),
            _testWidget(),
            _testWidget(),
            /*轻应用*/
          ],
        ),
      ),
    );
  }

  _testWidget() {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: ClipOval(
              child: Image.network(
                "http://pic32.nipic.com/20130813/3347542_160503703000_2.jpg",
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
