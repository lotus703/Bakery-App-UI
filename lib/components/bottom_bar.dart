import 'package:flutter/material.dart';
import 'package:shop_app/components/badge.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/account/account_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import '../screens/home/home_screen.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key key}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  PageController _pageController;
  int _page = 0;

  //static const TextStyle optionStyle = TextStyle(fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Row(
      //     children: <Widget>[
      //       Icon(
      //         Icons.person_outline,
      //         size: 30.0,
      //       ),
      //       FlatButton(
      //         onPressed: () {},
      //         child: Text(
      //           "Đăng nhập",
      //           style: TextStyle(color: kPrimaryColor),
      //         ),
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(18.0),
      //           side: BorderSide(color: kPrimaryColor),
      //         ),
      //       )
      //     ],
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: IconBadge(
      //         icon: Icons.notifications_outlined,
      //         size: 30.0,
      //       ),
      //       onPressed: () {},
      //       tooltip: "Notifications",
      //     ),
      //   ],
      // ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          HomeScreen(),
          LoginSuccessScreen(),
          HomeScreen(),
          AccountScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 3),
            IconButton(
              icon: Icon(
                Icons.home,
                size: 24.0,
              ),
              color: _page == 0
                  ? kPrimaryColor
                  : Theme.of(context).textTheme.caption.color,
              onPressed: () => _pageController.jumpToPage(0),
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 24.0,
              ),
              color: _page == 1
                  ? kPrimaryColor
                  : Theme.of(context).textTheme.caption.color,
              onPressed: () => _pageController.jumpToPage(1),
            ),
            IconButton(
              icon: Icon(
                Icons.store_outlined,
                size: 24.0,
              ),
              color: _page == 2
                  ? kPrimaryColor
                  : Theme.of(context).textTheme.caption.color,
              onPressed: () => _pageController.jumpToPage(2),
            ),
            IconButton(
              icon: IconBadge(
                icon: Icons.person,
                size: 24.0,
              ),
              color: _page == 3
                  ? kPrimaryColor
                  : Theme.of(context).textTheme.caption.color,
              onPressed: () => _pageController.jumpToPage(3),
            ),
            SizedBox(width: 3),
          ],
        ),
        color: Colors.white,
        shape: CircularNotchedRectangle(),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
