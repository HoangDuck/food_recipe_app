
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/icon_play_video.dart';
import 'package:food_recipe_app/core/domain/models/meals/meals.dart';

class ItemVideoRecipeDetail extends ConsumerWidget {
  final Meals meal;
  final Size size;
  final List<Widget> extendWidgets;

  const ItemVideoRecipeDetail(
      {super.key,
        required this.meal,
        this.size = const Size(335, 220), this.extendWidgets = const []});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    return SizedBox(
      height: size.height.h,
      width: size.width.w,
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.sp),
        child: Stack(
          children: [
            Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.sp),
                  child: Image.network(
                    meal.strMealThumb ?? '',
                    fit: BoxFit.fitWidth,

                    errorBuilder: (context, error, stackTrace) {
                      return Container();
                    },
                  ),
                )),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: IconPlayVideo(
                  onTap: () {},
                ),
              ),
            ),
            ...extendWidgets
          ],
        ),
      ),
    );
  }
}