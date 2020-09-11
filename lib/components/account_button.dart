import 'package:flutter/material.dart';

import '../size_config.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({
    Key key,
    this.text,
    this.press,
    this.iconData,
  }) : super(key: key);
  final IconData iconData;
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
          color: Colors.white,
          onPressed: press,
          child: Row(
            children: <Widget>[
              Icon(
                iconData,
                color: Colors.grey,
              ),
              Text(text)
            ],
          )),
    );
  }
}
