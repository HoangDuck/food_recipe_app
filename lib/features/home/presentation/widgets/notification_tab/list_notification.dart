import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/features/home/presentation/providers/notification_state/notification_state_provider.dart';
import 'package:food_recipe_app/features/home/presentation/widgets/notification_tab/item_notification.dart';
import 'package:food_recipe_app/shared/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/shared/theme/app_colors.dart';
import 'package:food_recipe_app/shared/theme/app_strings.dart';
import 'package:food_recipe_app/shared/theme/text_style.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class ListNotification extends HookConsumerWidget{
  final TypeNotification type;
  const ListNotification({super.key, this.type = TypeNotification.all});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ScreenUtil.init(context, designSize: const Size(375,812));
    final state = ref.watch(notificationNotifierProvider);
    List<Notifications> listFoodTrending = state.listNotifications;
    // TODO: implement build
    return SingleChildScrollView(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GroupedListView<Notifications, String>(
            elements: listFoodTrending,
            padding: EdgeInsets.zero,
            groupBy: (element) => element.time.toString(),
            groupComparator: (value1, value2) => value1.toString().compareTo(value2.toString()),
            itemComparator: (item1, item2) =>
                item2.idNotification!.compareTo(item1.idNotification!),
            order: GroupedListOrder.ASC,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            useStickyGroupSeparators: true,
            groupSeparatorBuilder: (value) => Container(
              padding: EdgeInsets.fromLTRB(16.sp,12.sp,0.sp,12.sp),
              color: AppColors.white,
              child: Text(
                value,
                style: AppTextStyles.poppinsLabelBoldV2,
              ),
            ),
            indexedItemBuilder: (context, element, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 12.sp),
                child: ItemNotification(notification: element,),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(42.sp, 16.sp, 42.sp, 0.sp),
            child: Text(
              AppStrings.youreallSet,
              style: AppTextStyles.poppinsTinyRegular,
            ),
          )
        ],
      ),
    );
  }

}