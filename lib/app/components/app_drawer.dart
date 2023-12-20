import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/theme/app_assets.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Sunie Pham ",
              style: boldWhite.copyWith(fontSize: 15),
            ),
            accountEmail: Text(
              "sunieux@gmail.com",
              style: normalWhite.copyWith(fontSize: 13),
            ),
            decoration: const BoxDecoration(color: AppColors.fluxstoreBlack),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 3, color: AppColors.fluxstoreyWhite),
              ),
              child: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: const Color(0xFF778899),
                  backgroundImage: const AssetImage(AppImages.profile)),
            ),
          ),
          // const SizedBox(height: 27),
          // Selector<CashProvider, AmountModel?>(
          //   selector: (p0, p1) => p1.amountDetail,
          //   builder: (context, amount, child) {
          //     return ListTile(
          //       visualDensity:
          //           const VisualDensity(horizontal: -4, vertical: -4),
          //       leading: SizedBox(
          //         width: 19,
          //         height: 19,
          //         child: SvgPicture.asset(AppIcons.myBalance),
          //       ),
          //       title: Text('My Balance', style: normalBlack),
          //       trailing: Text(
          //         '₹ ${amount?.totalAmount ?? 0.0}',
          //         style: boldBlack.copyWith(fontSize: 15),
          //       ),
          //     );
          //   },
          // ),
          // ListTile(
          //   visualDensity:
          //       const VisualDensity(horizontal: -4, vertical: -4),
          //   leading: SizedBox(
          //     width: 19,
          //     height: 19,
          //     child: SvgPicture.asset(
          //       AppIcons.myProile,
          //     ),
          //   ),
          //   title: Text('My Profile', style: normalBlack),
          //   onTap: () {
          //     tabManager.onTabChanged(0);
          //     Navigator.pop(context);
          //     Navigator.push(
          //       Keys.homeKey.currentContext!,
          //       MaterialPageRoute(
          //         builder: (context) => const FantasyProfile(),
          //       ),
          //     );
          //   },
          // ),
          // ListTile(
          //   visualDensity: const VisualDensity(
          //     horizontal: -4,
          //     vertical: -4,
          //   ),
          //   leading: SizedBox(
          //     width: 19,
          //     height: 19,
          //     child: SvgPicture.asset(AppIcons.myAccount),
          //   ),
          //   onTap: () {
          //     tabManager.onTabChanged(0);
          //     Navigator.pop(context);
          //     Navigator.push(
          //       //context,
          //       Keys.homeKey.currentContext!,
          //       MaterialPageRoute(
          //         builder: (context) => const MyAccount(),
          //       ),
          //     );
          //   },
          //   title: Text('My Account', style: normalBlack),
          // ),
          // ListTile(
          //   visualDensity: const VisualDensity(
          //     horizontal: -4,
          //     vertical: -4,
          //   ),
          //   leading: SizedBox(
          //     width: 19,
          //     height: 19,
          //     child: SvgPicture.asset(AppIcons.funds),
          //   ),
          //   title: Text('Add Funds', style: normalBlack),
          //   onTap: () {
          //     tabManager.onTabChanged(0);
          //     Navigator.pop(context);
          //     Navigator.push(
          //       //context,
          //       Keys.homeKey.currentContext!,
          //       MaterialPageRoute(
          //         builder: (context) => const AddCashScreen(),
          //       ),
          //     );
          //   },
          // ),
          // ListTile(
          //   visualDensity:
          //       const VisualDensity(horizontal: -4, vertical: -4),
          //   leading: SizedBox(
          //     height: 19,
          //     width: 19,
          //     child: SizedBox(
          //       width: 19,
          //       height: 19,
          //       child: SvgPicture.asset(
          //         AppIcons.aboutUs,
          //       ),
          //     ),
          //   ),
          //   title: Text('About Us', style: normalBlack),
          // ),
          // ListTile(
          //   visualDensity:
          //       const VisualDensity(horizontal: -4, vertical: -4),
          //   leading: SizedBox(
          //     width: 19,
          //     height: 19,
          //     child: SvgPicture.asset(
          //       AppIcons.privacy,
          //     ),
          //   ),
          //   title: Text('Privacy Policy', style: normalBlack),
          // ),
          // ListTile(
          //     visualDensity:
          //         const VisualDensity(horizontal: -4, vertical: -4),
          //     leading: SizedBox(
          //       width: 19,
          //       height: 19,
          //       child: SvgPicture.asset(
          //         AppIcons.logout,
          //       ),
          //     ),
          //     title: Text('Logout', style: normalBlack),
          //     onTap: logout),
        ],
      ),
    );
  }

  logout() async {
    // MySharedPreferences.instance.removeAll();
    // Navigator.pushAndRemoveUntil(
    //   context,
    //   MaterialPageRoute(builder: (context) => const InitialScreen()),
    //   (route) => false,
    // );
    // await provider.logout().then((value) {
    //   if (value) {
    //     MySharedPreferences.instance.removeAll();

    //     Navigator.pushAndRemoveUntil(
    //         context,
    //         MaterialPageRoute(builder: (context) => const InitialScreen()),
    //         (route) => false);
    //   }
    // });
  }
}
