import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe_app/home/shared/notification_state_provider.dart';
import 'package:food_recipe_app/home/presentation/widgets/notification_tab/item_notification.dart';
import 'package:food_recipe_app/core/domain/models/notifications/notifications.dart';
import 'package:food_recipe_app/core/presentation/theme/app_colors.dart';
import 'package:food_recipe_app/core/presentation/theme/app_strings.dart';
import 'package:food_recipe_app/core/presentation/theme/text_style.dart';
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
    final scrollController = useScrollController();
    useEffect(() {
      listenerLoadMore(){
        double maxScroll = scrollController.position.maxScrollExtent;
        double currentScroll = scrollController.position.pixels;
        double delta = MediaQuery.of(context).size.width * 0.20;
        if (maxScroll - currentScroll <= delta) {

        }
      }
      scrollController.addListener(listenerLoadMore);
      return (){
        scrollController.removeListener(listenerLoadMore);
      };
    }, [key]);

    return GroupedListView<Notifications, String>(
      controller: scrollController,
      elements: listFoodTrending,
      padding: EdgeInsets.zero,
      groupBy: (element) => element.time.toString(),
      groupComparator: (value1, value2) => value1.toString().compareTo(value2.toString()),
      itemComparator: (item1, item2) =>
          item2.idNotification!.compareTo(item1.idNotification!),
      order: GroupedListOrder.ASC,
      useStickyGroupSeparators: true,
      groupSeparatorBuilder: (value) => Container(
        padding: EdgeInsets.fromLTRB(0.w,0.h,0.w,12.h),
        color: AppColors.white,
        child: Text(
          value,
          style: AppTextStyles.poppinsLabelBoldV2,
        ),
      ),
      indexedItemBuilder: (context, element, index) {
        if(index == -1){
          return Padding(
              padding: EdgeInsets.fromLTRB(42.w, 16.h, 42.w, 0.h),
              child: Text(
                AppStrings.youreallSet,
                style: AppTextStyles.poppinsTinyRegular,
              ),
            );
        }
        return Padding(
          padding: EdgeInsets.only(left: 4.w,right:4.w,bottom: 12.h),
          child: ItemNotification(notification: element,),
        );
      },
    );
  }

}