import 'package:flutter/material.dart';
import 'package:kontrollu_saglik/constants/Theme.dart';
import 'package:kontrollu_saglik/widgets/input.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

// import 'package:now_ui_flutter/screens/trending.dart';
// import 'package:now_ui_flutter/screens/fashion.dart';
// import 'package:now_ui_flutter/screens/notifications.dart';
// import 'package:now_ui_flutter/screens/search.dart';
// import 'package:now_ui_flutter/screens/cart.dart';

class Navbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String categoryOne;
  final String categoryTwo;
  final bool searchBar;
  final bool backButton;
  final bool transparent;
  final bool reverseTextcolor;
  final bool rightOptions;
  final List<String> tags;
  final Function getCurrentPage;
  final bool isOnSearch;
  final TextEditingController searchController;
  final Function searchOnChanged;
  final bool searchAutofocus;
  final bool noShadow;
  final Color bgColor;

  Navbar(
      {this.title = "Home",
      this.categoryOne = "",
      this.categoryTwo = "",
      this.tags,
      this.transparent = false,
      this.rightOptions = true,
      this.reverseTextcolor = false,
      this.getCurrentPage,
      this.searchController,
      this.isOnSearch = false,
      this.searchOnChanged,
      this.searchAutofocus = false,
      this.backButton = false,
      this.noShadow = false,
      this.bgColor = UIColors.white,
      this.searchBar = false});

  final double _prefferedHeight = 180.0;

  @override
  _NavbarState createState() => _NavbarState();

  @override
  Size get preferredSize => Size.fromHeight(_prefferedHeight);
}

class _NavbarState extends State<Navbar> {
  String activeTag;

  ItemScrollController _scrollController = ItemScrollController();

  void initState() {
    if (widget.tags != null && widget.tags.length != 0) {
      activeTag = widget.tags[0];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool categories =
        widget.categoryOne.isNotEmpty && widget.categoryTwo.isNotEmpty;
    final bool tagsExist =
        widget.tags == null ? false : (widget.tags.length == 0 ? false : true);

    return Container(
        height: widget.searchBar
            ? (!categories
                ? (tagsExist ? 211.0 : 178.0)
                : (tagsExist ? 262.0 : 210.0))
            : (!categories
                ? (tagsExist ? 162.0 : 102.0)
                : (tagsExist ? 200.0 : 150.0)),
        decoration: BoxDecoration(
            color: !widget.transparent ? widget.bgColor : Colors.transparent,
            boxShadow: [
              BoxShadow(
                  color: !widget.transparent && !widget.noShadow
                      ? UIColors.muted
                      : Colors.transparent,
                  spreadRadius: -10,
                  blurRadius: 12,
                  offset: Offset(0, 5))
            ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                                !widget.backButton
                                    ? Icons.menu
                                    : Icons.arrow_back_ios,
                                color: !widget.transparent
                                    ? (widget.bgColor == UIColors.white
                                        ? UIColors.text
                                        : UIColors.white)
                                    : (widget.reverseTextcolor
                                        ? UIColors.text
                                        : UIColors.white),
                                size: 28.0),
                            onPressed: () {
                              if (!widget.backButton)
                                Scaffold.of(context).openDrawer();
                              else
                                Navigator.pop(context);
                            }),
                        Text(widget.title,
                            style: TextStyle(
                                color: !widget.transparent
                                    ? (widget.bgColor == UIColors.white
                                        ? UIColors.text
                                        : UIColors.white)
                                    : (widget.reverseTextcolor
                                        ? UIColors.text
                                        : UIColors.white),
                                fontWeight: FontWeight.w400,
                                fontSize: 24.0)),
                      ],
                    ),
                    if (widget.rightOptions)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Notifications()));
                            },
                            child: IconButton(
                                icon: Icon(Icons.notifications_active,
                                    color: !widget.transparent
                                        ? (widget.bgColor == UIColors.white
                                            ? UIColors.text
                                            : UIColors.white)
                                        : (widget.reverseTextcolor
                                            ? UIColors.text
                                            : UIColors.white),
                                    size: 30.0),
                                onPressed: null),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Cart()));
                            },
                            child: IconButton(
                                icon: Icon(Icons.shopping_basket,
                                    color: !widget.transparent
                                        ? (widget.bgColor == UIColors.white
                                            ? UIColors.text
                                            : UIColors.white)
                                        : (widget.reverseTextcolor
                                            ? UIColors.text
                                            : UIColors.white),
                                    size: 30.0),
                                onPressed: null),
                          ),
                        ],
                      )
                  ],
                ),
                if (widget.searchBar)
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 4, left: 15, right: 15),
                    child: Input(
                        placeholder: "What are you looking for?",
                        controller: widget.searchController,
                        onChanged: widget.searchOnChanged,
                        autofocus: widget.searchAutofocus,
                        suffixIcon: Icon(
                          Icons.zoom_in,
                          color: UIColors.time,
                          size: 20,
                        ),
                        onTap: () {
                          // if (!widget.isOnSearch)
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Search()));
                        }),
                  ),
                SizedBox(
                  height: 10.0,
                ),
                if (categories)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Trending()));
                        },
                        child: Row(
                          children: [
                            Icon(Icons.camera,
                                color: UIColors.text, size: 18.0),
                            SizedBox(width: 8),
                            Text(widget.categoryOne,
                                style: TextStyle(
                                    color: UIColors.text, fontSize: 14.0)),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        color: UIColors.text,
                        height: 25,
                        width: 1,
                      ),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Fashion()));
                        },
                        child: Row(
                          children: [
                            Icon(Icons.shopping_cart,
                                color: UIColors.text, size: 18.0),
                            SizedBox(width: 8),
                            Text(widget.categoryTwo,
                                style: TextStyle(
                                    color: UIColors.text, fontSize: 14.0)),
                          ],
                        ),
                      )
                    ],
                  ),
                if (tagsExist)
                  Container(
                    height: 40,
                    child: ScrollablePositionedList.builder(
                      itemScrollController: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.tags.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            if (activeTag != widget.tags[index]) {
                              setState(() => activeTag = widget.tags[index]);
                              _scrollController.scrollTo(
                                  index:
                                      index == widget.tags.length - 1 ? 1 : 0,
                                  duration: Duration(milliseconds: 420),
                                  curve: Curves.easeIn);
                              if (widget.getCurrentPage != null)
                                widget.getCurrentPage(activeTag);
                            }
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: index == 0 ? 46 : 8, right: 8),
                              padding: EdgeInsets.only(
                                  top: 4, bottom: 4, left: 20, right: 20),
                              // width: 90,
                              decoration: BoxDecoration(
                                  color: activeTag == widget.tags[index]
                                      ? UIColors.info
                                      : UIColors.tabs,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(54.0))),
                              child: Center(
                                child: Text(widget.tags[index],
                                    style: TextStyle(
                                        color: activeTag == widget.tags[index]
                                            ? UIColors.white
                                            : UIColors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0)),
                              )),
                        );
                      },
                    ),
                  )
              ],
            ),
          ),
        ));
  }
}