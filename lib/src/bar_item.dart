import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  final List<BarItem> barItems;
  final Duration duration;
  final Function onBarTap;
  final BarStyle barStyle;

  AnimatedBottomBar(
      {this.barItems, this.duration, this.onBarTap, this.barStyle});

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar>
    with TickerProviderStateMixin {
  int selectedBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: 32.0,
          top: 16.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildBarItem(),
        ),
      ),
    );
  }

  List<Widget> _buildBarItem() {
    List<Widget> _barItems = List();
    for (int i = 0; i < widget.barItems.length; i++) {
      BarItem item = widget.barItems[i];
      bool isSelected = selectedBarIndex == i;
      _barItems.add(InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          setState(() {
            selectedBarIndex = i;
            widget.onBarTap(selectedBarIndex);
          });
        },
        child: AnimatedContainer(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          duration: widget.duration,
          decoration: BoxDecoration(
              color:
                  isSelected ? item.color.withOpacity(0.2) : Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Row(
            children: <Widget>[
              Icon(item.icon,
                  color: isSelected ? item.color : Colors.black,
                  size: widget.barStyle.iconSize),
              SizedBox(width: 10),
              AnimatedSize(
                duration: widget.duration,
                curve: Curves.easeInOut,
                vsync: this,
                child: Text(
                  isSelected ? item.title : '',
                  style: TextStyle(
                      color: item.color,
                      fontWeight: widget.barStyle.fontWeight,
                      fontSize: widget.barStyle.fontSize),
                ),
              ),
            ],
          ),
        ),
      ));
    }
    return _barItems;
  }
}

class BarStyle {
  final double fontSize, iconSize;
  final FontWeight fontWeight;

  BarStyle(
      {this.fontSize = 18,
      this.fontWeight = FontWeight.w600,
      this.iconSize = 32});
}

class BarItem {
  final String title;
  final IconData icon;
  final Color color;
  final Widget child;

  BarItem({
    @required this.title,
    @required this.icon,
    @required this.color,
    @required this.child,
  });
}
