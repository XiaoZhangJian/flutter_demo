import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1553596448657&di=ecdfacc4a3b69c65ae092086f2e0af46&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201806%2F10%2F20180610012541_ffluf.thumb.700_0.jpg"),
          alignment: Alignment.topCenter,

          fit:BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withAlpha(100),
            BlendMode.hardLight
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
              ),
              // color: Color.fromRGBO(3, 54, 255, 1.0),
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
                boxShadow: [
                  BoxShadow(
                    offset: Offset(6.0, 7.0),
                    color: Color.fromRGBO(16, 20, 188, 1.0),
                    blurRadius: 1.0,
                    spreadRadius: -3.0,
                  )
                ],
                shape: BoxShape.circle,
                // gradient: RadialGradient(
                //   colors: [
                //     Color.fromRGBO(7, 102, 255, 1.0),
                //     Color.fromRGBO(3, 28, 128, 1.0),
                //   ]
                // )
                 gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.topRight
                )
              ),

          )
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
        text: 'zhangjian',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.io',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.black
            )
          )
        ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {

    final TextStyle _textStyle =TextStyle(
    fontSize: 18.0,
  );

  final String _title = "击壤歌";
  final String _author = "佚名";
  @override
  Widget build(BuildContext context) {
    return Text(
      "《$_title》—— $_author 日出而作，日入而息。凿井而饮，耕田而食。帝力于我何有哉！",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}