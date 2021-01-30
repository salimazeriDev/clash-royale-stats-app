import 'package:clashroyalestats/style/dimens.dart';
import 'package:flutter/material.dart';

const _contentPadding = Dimens.s;

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
  }) : super(key: key);

  double _bottomPadding(BuildContext context) {
    final _bottomPadding = MediaQuery.of(context).padding.bottom;
    return _bottomPadding >= _contentPadding ? _bottomPadding : _contentPadding;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: _contentPadding,
        right: _contentPadding,
        top: _contentPadding,
        bottom: _bottomPadding(context),
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FlatButton(
            onPressed: () {},
            child: Text('profile'),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('decks'),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('cards'),
          ),
        ],
      ),
    );
  }
}
