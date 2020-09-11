import 'package:flutter/material.dart';
import 'package:shop_app/components/account_button.dart';
import 'package:shop_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                backgroundColor: kPrimaryColor,
                automaticallyImplyLeading: false,
                elevation: 20.0,
                title: Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    Text(
                      "Đăng nhập",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              AccountButton(
                press: () {},
                iconData: Icons.star_outline,
                text: "Pewpew Rewards",
              ),
              AccountButton(
                press: () {},
                iconData: Icons.person_outline,
                text: "Thông tin tài khoản",
              ),
              AccountButton(
                press: () {},
                iconData: Icons.music_note_outlined,
                text: "Nhạc đang phát",
              ),
              AccountButton(
                press: () {},
                iconData: Icons.history_outlined,
                text: "Lịch sử",
              ),
              AccountButton(
                press: () {},
                iconData: Icons.help_center_outlined,
                text: "Giúp đỡ",
              ),
              AccountButton(
                press: () {},
                iconData: Icons.settings_outlined,
                text: "Cài đặt",
              )
            ],
          ),
        ),
      ),
    );
  }
}
