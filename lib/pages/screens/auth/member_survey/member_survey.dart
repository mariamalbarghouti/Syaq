import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:syag/pages/screens/home/home_page/home_page.dart';
import 'package:syag/pages/screens/utilities/lable_with_star_widget.dart';
import 'package:syag/utils/colors.dart';
import 'package:syag/utils/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Meber Survey
// which will be disappeared
// once the member Sign Up 

// TODO later with get
class MemberSurvey extends StatefulWidget {
  const MemberSurvey({Key? key}) : super(key: key);

  @override
  State<MemberSurvey> createState() => _MemberSurveyState();
}

class _MemberSurveyState extends State<MemberSurvey> {
  // for image displayer
  final CarouselController _controller = CarouselController();
  int currentPageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar 
      appBar: AppBar(
        title: Text("members".tr),
        leading: IconButton(
          onPressed: () => Get.back(),
          padding: EdgeInsets.zero,
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
            size: 20.sp,
          ),
        ),
      ),
      // Body
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "please_answer_the_questions".tr,
                        style: Get.textTheme.headline2!
                            .copyWith(color: faddenGreyColor),
                      ),
                      Text("$currentPageIndex /5",
                          style: Get.textTheme.headline2),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: StepProgressIndicator(
                      totalSteps: 5,
                      direction: Axis.horizontal,
                      currentStep: currentPageIndex,
                      padding: 0,
                      selectedColor: primaryColor,
                      unselectedColor: faddenGreyColor.withOpacity(0.5),
                      selectedSize: 7.sp,
                      unselectedSize: 6.sp,
                      roundedEdges: const Radius.elliptical(6, 03),
                    ),
                  ),
                ],
              ),
            ),
            // ),
            SliverFillRemaining(
              child: CarouselSlider.builder(
                itemCount: 5,
                options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: false,
                  height: double.infinity,
                  enableInfiniteScroll: false,
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  // physics: const BouncingScrollPhysics(),
                ),
                // viewportFraction:0,
                carouselController: _controller,
                itemBuilder: (context, index, realIndex) {
                  // SchedulerBinding.instance!.addPostFrameCallback((_) {
                  //   //yourcode
                  //   currentPageIndex = index;
                  // });
                  return ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: Text(
                          "$currentPageIndex. " + 'member_survey'.tr,
                          textAlign: TextAlign.justify,
                          style: Get.textTheme.headline3!.copyWith(
                            color: blackColor,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                        // maxLength: 5,
                        maxLines: 5,

                        minLines: 1,
                        // maxLines: 20,
                        style: inputStyle,
                        decoration: const InputDecoration()
                            .applyDefaults(Get.theme.inputDecorationTheme)
                            .copyWith(
                              label: LableWithStarWidget(
                                text: 'the_answer'.tr,
                                style: Get.theme.textTheme.headline2!
                                    .copyWith(color: blackColor),
                              ),
                            ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(4.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (currentPageIndex != 1)
              Material(
                type: MaterialType.circle,
                color: whiteColor,
                elevation: 5,
                // clipBehavior: Clip.antiAliasWithSaveLayer,
                shadowColor: shadowColor.withOpacity(0.5),
                child: IconButton(
                  onPressed: () {
                    // currentPageIndex-=currentPageIndex;
                    // print("current $currentPageIndex");
                    if (currentPageIndex > 0) {
                      setState(() {
                        currentPageIndex -= 1;
                      });
                    }
                    _controller.previousPage();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 25.sp,
                  ),
                ),
              )
            else
              const SizedBox.shrink(),
            Material(
              type: MaterialType.circle,
              color: whiteColor,
              elevation: 5,
              shadowColor: shadowColor.withOpacity(0.5),
              child: IconButton(
                onPressed: () {
                  if (currentPageIndex < 5) {
                    setState(() {
                      currentPageIndex += 1;
                    });
                  _controller.nextPage();
                  }else{
                    Get.offAll(()=>const HomePage());
                  }
                },
                icon: Icon(
                  Icons.arrow_forward,
                  size: 25.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ":"Please Answer The Questions",
//   "the_answer":"The
// member_survey
