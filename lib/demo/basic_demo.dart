import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1427619798,3243000733&fm=26&gp=0.jpg'),
        alignment: Alignment.topCenter,
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(//颜色滤镜
          Colors.indigoAccent[400].withOpacity(0.5),
          BlendMode.hardLight,//混合模式
        ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [//阴影效果
                BoxShadow(
                  offset: Offset(6, 7),//阴影的偏移
                  color: Color.fromRGBO(16, 20, 188, 1.0),//阴影颜色
                  blurRadius: 25.0,//阴影模糊程度
                  spreadRadius: -9.0,//阴影扩散程度
                ),
              ],
              shape: BoxShape.circle,//改变盒子的形状
              //渐变效果
              // gradient: RadialGradient( //镜像渐变
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 28, 128, 1.0),
              //   ],
              // ), 
              gradient: LinearGradient( //线性渐变
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: AlignmentDirectional.bottomCenter,
              ), 
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'hello',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 17.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return Text(
      '君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。岑夫子，丹丘生，将进酒，杯莫停。与君歌一曲，请君为我倾耳听。钟鼓馔玉不足贵，但愿长醉不愿醒。古来圣贤皆寂寞，惟有饮者留其名。陈王昔时宴平乐，斗酒十千恣欢谑。主人何为言少钱，径须沽取对君酌。五花马，千金裘，呼儿将出换美酒，与尔同销万古愁。',
      textAlign: TextAlign.left,
      style: _textStyle,
      // maxLines: 3,
      // overflow: TextOverflow.ellipsis,
    );
  }
}
