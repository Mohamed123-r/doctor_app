import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LanguageBody extends StatefulWidget {
  const LanguageBody({super.key});

  @override
  State<LanguageBody> createState() => _LanguageBodyState();
}

class _LanguageBodyState extends State<LanguageBody> {
  String selectedLanguage = 'English';

  final List<String> languages = [
    'Arab',
    'English',
    'France',
    'Ghana',
    'Indonesia',
    'India',
    'Italia',
    'Japan',
    'Russia',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: AppTextStyles.medium12(
                context,
              ).copyWith(color: AppColors.grey60),
              prefixIcon: SvgPicture.asset(
                Assets.svgSearchNormal,
                fit: BoxFit.scaleDown,
              ),
              filled: true,
              fillColor: Colors.grey.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final lang = languages[index];
                final _ = lang == selectedLanguage;
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedLanguage = lang;
                    });
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Text(
                              lang,
                              style: AppTextStyles.regular14(context),
                            ),
                            const Spacer(),
                            Radio<String>(
                              value: lang,
                              groupValue: selectedLanguage,
                              side: BorderSide(color: AppColors.grey60),
                              onChanged: (value) {
                                setState(() {
                                  selectedLanguage = value!;
                                });
                              },
                              activeColor: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: AppColors.grey40,
                        thickness: 1,
                        height: 0,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppButton(title: "Save", onPressed: () {}),
        ),
      ],
    );
  }
}