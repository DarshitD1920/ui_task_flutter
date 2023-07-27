import 'package:flutter/material.dart';
import 'package:uitask/atoms/network_image.dart';
import 'package:uitask/molecules/page_indicator.dart';
import 'package:uitask/tokens/spacing.dart';

class ImageSection extends StatefulWidget {
  const ImageSection({super.key});

  @override
  State<ImageSection> createState() => _ImageSectionState();
}

class _ImageSectionState extends State<ImageSection> {
  int selectedindex = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 5; i++) {
      list.add(i == selectedindex ? indicator(true) : indicator(false));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        Positioned.fill(
            child: PageView.builder(
          itemCount: 5,
          onPageChanged: (int page) {
            setState(() {
              selectedindex = page;
            });
          },
          itemBuilder: (context, index) => const NetworkImageUI(
              url:
                  "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
              widthImage: 375,
              heightImage: 450),
        )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: Spacing.spaceMD),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
        )
      ]),
    );
  }
}
