// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:food_recipe_app/features/home/presentation/providers/user_state/user_state_provider.dart';
// import 'package:food_recipe_app/features/home/presentation/widgets/account_tab/item_video_recipe_profile.dart';
// import 'package:food_recipe_app/shared/domain/models/meals/meals.dart';
//
// class ListRecipeProfile extends ConsumerWidget{
//   const ListRecipeProfile({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(userNotifierProvider);
//     List<Meals> listMealsProfile = state.listMeals;
//     ScreenUtil.init(context, designSize: const Size(375,812));
//     // TODO: implement build
//     return Padding(
//       padding: EdgeInsets.all(20.w),
//       child: CustomScrollView(
//         slivers: [
//
//         ],
//       ),
//     );
//   }
//
// }