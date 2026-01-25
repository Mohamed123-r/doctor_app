import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_text_field.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final doctor = {
      "name": "Dr. John Doe",
      "phone": "+1 234 567 890",
      "degree": "MD, Cardiology",
      "price": "150",
      "gender": "male",
    };
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Center(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.grey40),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              child: const Icon(Icons.arrow_back_ios_new, size: 18),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        title: Text('Search', style: AppTextStyles.semibold18(context)),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AppTextField(
              hintText: "Search doctor by name",
              keyboardType: TextInputType.text,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  Assets.svgSearchNormal,
                  colorFilter: const ColorFilter.mode(
                    AppColors.grey60,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.grey40,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              doctor["gender"] == "male"
                                  ? Assets.imagesOnboardingDoctor
                                  : Assets.imagesBannerImage,
                              width: 75,
                              height: 75,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                doctor["name"] ?? '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.bold16(
                                  context,
                                ).copyWith(color: AppColors.grey100),
                              ),

                              const SizedBox(height: 4),
                              Text(
                                "Degree / ${doctor["degree"]}",
                                style: AppTextStyles.medium14(
                                  context,
                                ).copyWith(color: AppColors.body),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '\$${doctor["price"] ?? ''} / visit',
                                style: AppTextStyles.medium14(
                                  context,
                                ).copyWith(color: AppColors.body),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
