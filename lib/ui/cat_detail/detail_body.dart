import 'package:flutter/material.dart';
import 'package:catbox/models/cat.dart';



class CatDetailBody extends StatelessWidget {
  final Cat cat;

  CatDetailBody(
    this.cat
  );

  @override
  Widget build(BuildContext context){
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;

    var locationInfo =new Row(
      children: [
        new Icon(
          Icons.place,
          color: Colors.white,
          size: 16.0,
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: new Text(
            cat.location,
            style: textTheme.subhead.copyWith(color: Colors.white),
          ),
        ),
      ],
    );

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Text(
          cat.name,
          style: textTheme.headline.copyWith(color: Colors.white),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: locationInfo,
        ),
      ],
    );
  }
}
