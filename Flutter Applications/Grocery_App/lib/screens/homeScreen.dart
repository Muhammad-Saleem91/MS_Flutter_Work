import 'package:flutter/material.dart';
import 'package:flutter_project/screens/homeView.dart';
import 'package:flutter_project/utils/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({super.key});

  @override
  State<home_Screen> createState() => home_ScreenState();
}

class home_ScreenState extends State<home_Screen>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int tabSelect = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      tabSelect = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          const HomeView(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 3, offset: Offset(0, -2))
            ]),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: AppColors.primary,
            labelStyle: TextStyle(
                color: AppColors.primary,
                fontSize: 12,
                fontWeight: FontWeight.w600),
            unselectedLabelColor: AppColors.primaryText,
            unselectedLabelStyle: TextStyle(
                color: AppColors.primaryText,
                fontSize: 12,
                fontWeight: FontWeight.w600),
            tabs: [
              Tab(
                text: "Shop",
                icon: SvgPicture.asset(
                  "assets/icons/shop_icon.svg",
                  width: 25,
                  height: 25,
                  color: tabSelect == 0
                      ? AppColors.primary
                      : AppColors.primaryText,
                ),
              ),
              Tab(
                text: "Explore",
                icon: SvgPicture.asset(
                  "assets/icons/explore_icon.svg",
                  width: 25,
                  height: 25,
                  color: tabSelect == 1
                      ? AppColors.primary
                      : AppColors.primaryText,
                ),
              ),
              Tab(
                text: "Cart",
                icon: SvgPicture.asset(
                  "assets/icons/cart_icon.svg",
                  width: 25,
                  height: 25,
                  color: tabSelect == 2
                      ? AppColors.primary
                      : AppColors.primaryText,
                ),
              ),
              Tab(
                text: "Favourite",
                icon: SvgPicture.asset(
                  "assets/icons/fav_icon.svg",
                  width: 25,
                  height: 25,
                  color: tabSelect == 3
                      ? AppColors.primary
                      : AppColors.primaryText,
                ),
              ),
              Tab(
                text: "Account",
                icon: SvgPicture.asset(
                  "assets/icons/account_icon.svg",
                  width: 25,
                  height: 25,
                  color: tabSelect == 4
                      ? AppColors.primary
                      : AppColors.primaryText,
                ),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
