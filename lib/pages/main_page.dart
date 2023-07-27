import 'package:flutter/material.dart';
import 'package:uitask/organisms/app_bar.dart';
import 'package:uitask/templates/main_templete.dart';
import 'package:uitask/tokens/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: detailAppBar(context),
      body: const MainTemplete(),
    );
  }
}
