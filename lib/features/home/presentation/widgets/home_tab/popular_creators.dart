import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/home_tab/item_popular_creator.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';

class PopularCreators extends ConsumerWidget{
  const PopularCreators({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(20.sp, 12.sp, 19.sp, 12.sp),
      child: SizedBox(
        height: 187.sp,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Padding(
                padding: EdgeInsets.fromLTRB(0.sp,0.sp,0.sp,16.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(AppStrings.popularCreator,style: AppTextStyles.poppinsH5Bold,),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(AppStrings.seeAll,style: AppTextStyles.poppinsLabelBold,),
                        const Icon(Icons.arrow_forward_rounded, color: AppColors.buttonPrimaryNoIconLargeColor,)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 119.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(4, (index) => const ItemPopularCreator()),
                ),
              ),
            ]
        ),
      ),
    );
  }
}