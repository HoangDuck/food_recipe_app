import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountTab extends HookConsumerWidget{
  const AccountTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController(initialPage: 0);
    ScreenUtil.init(context, designSize: const Size(375,812));
    // TODO: implement build
    throw UnimplementedError();
  }

}