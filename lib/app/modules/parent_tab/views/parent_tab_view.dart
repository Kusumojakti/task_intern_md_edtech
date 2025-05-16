import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/parent_tab_controller.dart';

class ParentTabView extends GetView<ParentTabController> {
  const ParentTabView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ParentTabView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ParentTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
