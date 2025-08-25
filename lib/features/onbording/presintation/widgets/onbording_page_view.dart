import 'package:flutter/material.dart';
import 'package:fruits_app/core/utlis/app_image.dart';
import 'package:fruits_app/features/onbording/presintation/widgets/page_view_item.dart';

class OnbordingPageView extends StatelessWidget {
  const OnbordingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          backGroungImage: Assets.page_view_2_background_image,
          image: Assets.page_view_2_iamge,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text("ابحث وتسوق"),
        ),
        PageViewItem(
          backGroungImage: Assets.page_view_2_background_image,
          image: Assets.page_view_1_iamge,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("مرحبًا بك في"),
              Text(" HUB"),
              Text("Fruit"),
            ],
          ),
        ),
      ],
    );
  }
}
