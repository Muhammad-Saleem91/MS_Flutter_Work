import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_project/utils/Colors.dart';
import 'package:flutter_project/utils/Common%20Widget/section.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List ExclusiveOfferArr = [
    {
      "name": "Organic Bananas",
      "icon": "assets/images/Banana_img.svg",
      "quantity": "7",
      "unit": "Pcs, Prices",
      "price": "\$1.99"
    },
    {
      "name": "Red Apple",
      "icon": "assets/images/Apple_img.svg",
      "quantity": "1",
      "unit": "Kg, Prices",
      "price": "\$4.99"
    }
  ];

  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/logo_icon.svg",
                    width: 40,
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/Exclude.svg",
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Bahadurabad ,Karachi",
                    style: TextStyle(
                      color: AppColors.DarkGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: txtSearch,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(13.0),
                          child: SvgPicture.asset(
                            "assets/icons/search_icon.svg",
                            width: 20,
                            height: 20,
                          ),
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Store",
                        hintStyle: TextStyle(
                            color: AppColors.secondaryText,
                            fontWeight: FontWeight.w600,
                            fontSize: 14)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 115,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F3F2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    "assets/images/banner.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SectionView(
                title: "Exclusive Offer",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                onPressed: () {},
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    itemCount: ExclusiveOfferArr.length,
                    itemBuilder: (context, index) {
                      var Product_obj = ExclusiveOfferArr[index] as Map? ?? {};

                      return Container();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
