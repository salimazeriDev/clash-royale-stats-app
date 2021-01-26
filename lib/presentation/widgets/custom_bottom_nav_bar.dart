import 'package:clashroyalestats/style/dimens.dart';
import 'package:flutter/material.dart';

const _contentPadding = Dimens.s;

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: _contentPadding,
        right: _contentPadding,
        top: _contentPadding,
        bottom: _bottom(context),
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FlatButton(
            onPressed: () => null,
            child: Text('profile'),
          ),
          FlatButton(
            onPressed: () => null,
            child: Text('decks'),
          ),
          FlatButton(
            onPressed: () => null,
            child: Text('cards'),
          ),
        ],
      ),
    );
  }

  double _bottom(BuildContext context) {
    final _bottomPadding = MediaQuery.of(context).padding.bottom;
    return _bottomPadding >= _contentPadding ? _bottomPadding : _contentPadding;
  }
}
