import 'package:flutter/material.dart';
import 'package:uitask/molecules/card_header.dart';
import 'package:uitask/molecules/card_tile.dart';
import 'package:uitask/molecules/divider.dart';
import 'package:uitask/organisms/bottom_text_field.dart';
import 'package:uitask/organisms/image_list.dart';
import 'package:uitask/organisms/like_trey.dart';
import 'package:uitask/organisms/tag_list_tile.dart';
import 'package:uitask/tokens/assets.dart';
import 'package:uitask/tokens/sizes.dart';
import 'package:uitask/tokens/spacing.dart';
import 'package:uitask/tokens/strings.dart';

class MainTemplete extends StatelessWidget {
  const MainTemplete({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> data = ["2023", "TODAYISMONDAY", "TOP", "POPS!", "WOW", "ROW"];

    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardHeaderTile(
              path: Assets.user1,
              height: 50,
              text: false,
              subHeader: Strings.subHeader,
              title: Strings.userName,
              subheadertext: true,
              subTitle: Strings.subtitle,
              weight: Strings.subtitle2,
            ),
            const CardHeader(
              title: Strings.headerTitle,
              body: Strings.body,
              titletext: true,
              bodytext: true,
            ),
            const SizedBox(
              height: Spacing.spaceMD,
            ),
            TagListTile(data: data),
            const SizedBox(
              height: Spacing.spaceMD,
            ),
            const ImageSection(),
            const SizedBox(
              height: Spacing.spaceSL,
            ),
            const LikeTrey(liketext: true, isComment: true),
            const DividerHorizontal(height: 3),
            const SizedBox(
              height: Spacing.spaceSL,
            ),
            const CardHeaderTile(
              text: true,
              path: Assets.user1,
              height: 50,
              subHeader: Strings.subHeader,
              title: Strings.userName,
              subTitle: Strings.subtitle,
              weight: Strings.subtitle2,
              subheadertext: false,
            ),
            const Column(
              children: [
                CardHeader(
                  body: Strings.body2,
                  bodytext: true,
                  title: Strings.title,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, bottom: 0, top: 0),
                  child: LikeTrey(liketext: false, isComment: true),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, bottom: 0, top: 0),
                  child: CardHeaderTile(
                    text: true,
                    path: Assets.user2,
                    height: 50,
                    subHeader: Strings.subHeader,
                    title: Strings.userName2,
                    subTitle: Strings.subtitle,
                    weight: Strings.subtitle2,
                    subheadertext: false,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: Sizes.sizeSM),
              child: CardHeader(
                body: Strings.headerTitle2,
                bodytext: true,
                title: Strings.title,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: Sizes.sizeSM),
              child: LikeTrey(),
            ),
            const DividerHorizontal(height: 3),
            const BottomTextField(),
          ],
        ),
      ),
    );
  }
}
