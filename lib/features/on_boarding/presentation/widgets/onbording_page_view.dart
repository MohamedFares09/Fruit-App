import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_image.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/features/on_boarding/presentation/widgets/page_view_item.dart';

class OnbordingPageView extends StatelessWidget {
  const OnbordingPageView(
      {super.key, required this.pageController, required this.currentPage});
  final PageController pageController;
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisable: true,
          backGroungImage: Assets.page_view_2_background_image,
          image: Assets.page_view_1_iamge,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "مرحبًا بك في",
                style: AppTextStyles.bold23,
              ),
              Text(
                " HUB",
                style: AppTextStyles.bold23.copyWith(color: Color(0xffF4A91F)),
              ),
              Text(
                "Fruit",
                style: AppTextStyles.bold23.copyWith(color: Color(0xff1B5E37)),
              ),
            ],
          ),
        ),
        PageViewItem(
          isVisable: false,
          backGroungImage: Assets.page_view_2_background_image,
          image: Assets.page_view_2_iamge,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text(
            "ابحث وتسوق",
            style: AppTextStyles.bold23,
          ),
        ),
      ],
    );
  }
}
