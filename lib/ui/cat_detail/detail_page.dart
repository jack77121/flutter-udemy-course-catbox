import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:catbox/models/cat.dart';
import 'package:catbox/ui/cat_detail/header/detail_header.dart';
import 'package:catbox/ui/cat_detail/detail_body.dart';
import 'package:catbox/ui/cat_detail/footer/detail_footer.dart';

class CatDetailsPage extends StatefulWidget {
  final Cat cat;
  final Object avatarTag;

  CatDetailsPage(
    this.cat, {
      @required this.avatarTag,
    }
  );

  @override
  _CatDetailPageState createState() => new _CatDetailPageState();
}
class _CatDetailPageState extends State<CatDetailsPage> {
  @override
  Widget build(BuildContext context){
    var linearGradient = new BoxDecoration(
      gradient: new LinearGradient(
        begin: FractionalOffset.centerRight,
        end: FractionalOffset.bottomLeft,
        colors: [
          Colors.blue,
          Colors.blue,
        ] 
      ),
    );

    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          decoration: linearGradient,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new CatDetailHeader(
                widget.cat,
                avatarTag: widget.avatarTag,
              ),
              // new CatDetailBody(
                
              // ),
              // new CatShowcase(

              // ),
            ],
          ),
        ),
      ),
    );
  }
}
