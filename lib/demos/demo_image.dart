import 'package:flutter/material.dart';
import 'package:flutter_system/common/res_constants.dart';

const List<String> IMGS = [
  IMG_URL0,
  IMG_URL1,
  IMG_URL2,
  IMG_URL3,
  IMG_URL4,
  IMG_URL5,
  IMG_URL6,
  IMG_URL7,
  IMG_URL8,
];

/// 图片的几大常见需求：
/// 1. 占位图
/// 2. 圆角
/// 3. 圆形
/// 4. 资源/网络/内存加载
/// 5. 缓存
class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Demo"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          _buildRoundCornerImageByCard(),
          _buildRoundCornerImageByContainer(),
          _buildRoundCornerImageByClipRRect(),
        ],
      )),
    );
  }

  _buildRoundCornerImageByContainer() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: ShapeDecoration(
              image: DecorationImage(
                  image: AssetImage("images/landscape1.jpeg"),
                  fit: BoxFit.fitWidth),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(20))),
          width: double.maxFinite,
          height: 300,
          child: Align(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Container decoration实现圆角(radius = 20)",
                style: TextStyle(color: Colors.white),
              ),
            ),
            alignment: Alignment.bottomCenter,
          ),
        ),
      );

  _buildRoundCornerImageByCard() => Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20)),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              "images/landscape0.jpeg",
              width: double.maxFinite,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Card实现圆角(radius = 20)",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      );

  _buildRoundCornerImageByClipRRect() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("images/landscape2.jpeg"),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "ClipRRect实现圆角(radius = 20)",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      );
}
