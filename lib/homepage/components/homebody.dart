import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urbaanbuy/homepage/components/bottom_section.dart';
import 'package:urbaanbuy/homepage/components/carsoule.dart';
import 'package:urbaanbuy/homepage/components/custumappbar.dart';

class Homebody extends StatefulWidget {
  const Homebody({Key? key}) : super(key: key);

  @override
  State<Homebody> createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.h),
                        const UpperSection(),
                        SizedBox(height: 15.h),
                        const Sliderx(),
                        SizedBox(height: 20.h),
                        const BottomSection(),
                        // Use BottomSection here
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
