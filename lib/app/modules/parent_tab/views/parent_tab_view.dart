import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_intern_md_edtech/app/components/wg_bottombar.dart';
import 'package:task_intern_md_edtech/app/modules/akun/controllers/akun_controller.dart';
import 'package:task_intern_md_edtech/app/modules/akun/views/akun_view.dart';
import 'package:task_intern_md_edtech/app/modules/home/controllers/home_controller.dart';
import 'package:task_intern_md_edtech/app/modules/home/views/home_view.dart';
import 'package:task_intern_md_edtech/app/modules/pesanan/controllers/pesanan_controller.dart';
import 'package:task_intern_md_edtech/app/modules/pesanan/views/pesanan_view.dart';
import 'package:task_intern_md_edtech/app/modules/promo/controllers/promo_controller.dart';
import 'package:task_intern_md_edtech/app/modules/promo/views/promo_view.dart';

import '../controllers/parent_tab_controller.dart';

class ParentTabView extends GetView<ParentTabController> {
  const ParentTabView({super.key});
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    final listPages = <Widget>[
      GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => HomeView(),
      ),
      GetBuilder<PesananController>(
        init: PesananController(),
        builder: (_) => PesananView(),
      ),
      GetBuilder<PromoController>(
        init: PromoController(),
        builder: (_) => PromoView(),
      ),
      GetBuilder<AkunController>(
        init: AkunController(),
        builder: (_) => AkunView(),
      ),
    ];

    return PopScope(
      canPop: false,
      // ignore: deprecated_member_use
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
      },
      child: Obx(() {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: Center(child: listPages[controller.index.value]),
          extendBody: true,
          bottomNavigationBar: BottomAppBar(
            height: 85,
            color: Colors.white,
            elevation: 8,
            shadowColor: Colors.grey,
            child: Padding(
              padding: EdgeInsets.only(top: 6, bottom: 6),
              child: Row(children: bottomBarMenus),
            ),
          ),
        );
      }),
    );
  }

  List<Widget> get bottomBarMenus {
    return [
      WgBottomBar(
        title: "Beranda",
        icon: "assets/icons/ic-home.png",
        indexValue: controller.index.value,
        index: 0,
        tap: () => controller.setIndex(0),
      ),
      WgBottomBar(
        title: "Pesanan",
        icon: "assets/icons/ic-ticket.png",
        indexValue: controller.index.value,
        index: 1,
        tap: () => controller.setIndex(1),
      ),
      WgBottomBar(
        title: "Promo",
        icon: "assets/icons/ic-discount.png",
        indexValue: controller.index.value,
        index: 2,
        tap: () => controller.setIndex(2),
      ),
      WgBottomBar(
        title: "Akun",
        icon: "assets/icons/ic-profile.png",
        indexValue: controller.index.value,
        index: 3,
        tap: () => controller.setIndex(3),
      ),
    ];
  }
}
