import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/theme/app_assets.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';
import 'package:fluxstore_ui/app/utills/app_key.dart';

class FluxstoreAppBar extends StatefulWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;
  final double borderRadius;
  final String? title;
  final bool notification;
  final bool wallet;
  final bool drawer;
  final bool time;
  final List<Widget>? actions;
  final double? toolbarHeight;
  final ValueChanged<bool>? onchange;
  final ValueNotifier? valueNotifier;
  final Widget? leading;

  /// If [wallet] is true then must assign [valueNotifier]
  const FluxstoreAppBar({
    super.key,
    this.bottom,
    this.borderRadius = 30,
    this.title,
    this.notification = false,
    this.wallet = false,
    this.drawer = false,
    this.time = false,
    this.actions,
    this.toolbarHeight,
    this.onchange,
    this.valueNotifier,
    this.leading,
  });

  @override
  State<FluxstoreAppBar> createState() => _FluxstoreAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(
        toolbarHeight ?? (kToolbarHeight + (bottom == null ? 0 : 50)),
      );
}

class _FluxstoreAppBarState extends State<FluxstoreAppBar> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0.0,
      leading: widget.leading ??
          (widget.drawer
              ? IconButton(
                  onPressed: () {
                    Keys.appScaffoldKey.currentState?.openDrawer();
                  },
                  icon: ImageIcon(
                    AssetImage(AppIcons.drawer),
                    size: 22,
                  ),
                )
              : null),
      title: widget.title == null
          ? Image.asset(
              AppLogos.fantasyLogo,
              width: width * 0.3,
              height: height * 0.3,
            )
          : Text(
              widget.title!,
              style: boldBlack.copyWith(fontSize: 20),
            ),
      bottom: widget.bottom,
      actions: widget.actions ??
          [
            // if (widget.time)
            //   Center(
            //     child: Padding(
            //       padding: const EdgeInsets.only(right: 10),
            //       child: Text(
            //         '07h 10m 27s',
            //         style: normalWhite.copyWith(fontSize: 15),
            //       ),
            //     ),
            //   ),
            if (widget.notification)
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const NotificationScreen(),
                  //   ),
                  // );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: const ImageIcon(
                    AssetImage(AppIcons.notification),
                    size: 40,
                  ),
                ),
              ),
            // if (widget.wallet)
            //   ValueListenableBuilder(
            //     valueListenable: widget.valueNotifier!,
            //     builder: (context, value, child) {
            //       return GestureDetector(
            //         onTap: () {
            //           widget.onchange!(!value);
            //           // widget.walletKey!.currentState?.wallet();
            //         },
            //         child: Padding(
            //           padding: const EdgeInsets.symmetric(horizontal: 18),
            //           child: SvgPicture.asset(
            //             value ? AppIcons.wallet : AppIcons.walletActive,
            //             height: 18, width: 18,
            //             // color:  Colors.grey : AppColors.white,
            //           ),
            //         ),
            //       );
            //     },
            //   )
          ],
      backgroundColor: Colors.transparent,
    );
  }
}
