
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import '../../../../constants/size.dart';
import '../../../../constants/style.dart';

// ignore: must_be_immutable
class HomeItem extends StatelessWidget {
   HomeItem({
    required this.lottieIcon,
    required this.textDecoration,
    required this.callback,
    super.key,
  });
 String lottieIcon;
 String textDecoration;
 VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: callback,
      child: SizedBox(
        width: homeIconSizedBoxWidth,
       height: homeIconSizedBoxWidth,
        child: Column(
          children: [
           Lottie.asset(lottieIcon,
           height: homeIconSizedBoxWidth-5.h,
           fit: BoxFit.scaleDown),
           SizedBox(
            height: 1.h,
           ),
            Text(textDecoration,style: bodyLargeStyle,overflow: TextOverflow.ellipsis,maxLines: 2,),
          ],
        ),
      ),
    );
  }
}
