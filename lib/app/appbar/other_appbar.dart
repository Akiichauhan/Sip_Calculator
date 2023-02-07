import 'package:flutter/material.dart';

import '../const/colors.dart';

class OtherAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color? backgroundColor, myColor, mainColor;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final TextStyle? style;
  final bool? centerTitle;

  final List<Widget>? actions;

  const OtherAppbar({
    Key? key,
    // ignore: non_constant_identifier_names
    this.backgroundColor,
    this.style,
    this.bottom,
    this.title,
    this.myColor,
    this.mainColor,
    this.centerTitle,
    this.leading,
    this.actions,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        centerTitle: centerTitle,
        iconTheme: const IconThemeData(
          color: AppColors.appbarShareColor,
        ),
        //backgroundColor: AppColors.whiteColor,
        backgroundColor: mainColor,
        elevation: 0.0,
        title: Text(
          title!,
          style: style,
        ),
        bottom: bottom,
        leading: leading,
        actions: actions,
      ),
    );
  }
}
