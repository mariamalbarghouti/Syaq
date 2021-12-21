import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:sizer/sizer.dart';
import 'package:syag/utils/colors.dart';

// Image Slider Widget
class ImageSliderWidget extends StatelessWidget {
  const ImageSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SliverToBoxAdapter(
      child: Padding(
          padding:  EdgeInsets.only(top:4.h),
        child: Material(
          child: ImageSlideshow(
            width: double.infinity,
            height: 26.h,
            initialPage: 0,
            indicatorColor: primaryColor,
            // unselected indicator color
            indicatorBackgroundColor: faddenGreyColor,
            // Images
            children: [
              Image.asset(
                'assets/images/home_demo.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/home_demo.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/home_demo.png',
                fit: BoxFit.cover,
              ),
            ],
            onPageChanged: (value) {},
            autoPlayInterval: 3000,
            isLoop: true,
          ),
        ),
      ),
    );
  }
}
