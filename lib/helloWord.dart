import 'package:flutter/material.dart';
import 'model/posts.dart';

void main()=> runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //MaterialApp 自定义Material风格App
    return MaterialApp(
      home:Home(),
      //主题设置
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
    );
  }
}

/*
  自定义hello部件 居中显示,40字体 加粗显示 黄色
 */
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
    );;
  }
}

class Home extends StatelessWidget {

  Widget _listItemBuilder(BuildContext buildContext,int index){
    //返回一个Widget容器
    return Container(
      color: Colors.white,
      //外边距 EdgeInsets.all 四周的间距
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          //引用本地图片 使用本地图片地址时,需要在pubscpec.yaml中 assets参数下,将文件图片路径配置好
          Image.asset(posts[index].imageUrl),
          SizedBox(
            height: 20.0,
          ),
          Text(
            posts[index].title,
            style: Theme.of(buildContext).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(buildContext).textTheme.subhead,
          ),
          //使用网络图片
//          Image.network(''),
        SizedBox(height: 16.0,
        ),
        ],
      ),
    );
//    Text(posts[index].title)
  }

  @override
  Widget build(BuildContext context) {
    //Scaffold 包含了Material风格的常用组件,例如,页面顶部,底部等
    return Scaffold(
      appBar: AppBar(
        title: Text('my appBar'
        ),
        //elevation 界面顶部阴影效果 数值越大阴影效果越大
        elevation: 40.0,
      ),

      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
      backgroundColor: Colors.grey[100],
    );
  }
}