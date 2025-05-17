import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:task_intern_md_edtech/app/routes/app_pages.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    var duration = const Duration(seconds: 3);
    Timer(duration, () {
      Get.offAllNamed(Routes.PARENT_TAB);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: LoadingAnimationWidget.waveDots(
                color: Colors.yellow,
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
