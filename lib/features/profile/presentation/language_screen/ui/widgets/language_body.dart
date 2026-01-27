import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/theming/locale_cubit.dart';
import '../../../../../../generated/l10n.dart';

class LanguageBody extends StatefulWidget {
  const LanguageBody({super.key});

  @override
  State<LanguageBody> createState() => _LanguageBodyState();
}

class _LanguageBodyState extends State<LanguageBody> {
  String? selectedLanguage;

  List<String> get languages => [S.of(context).arab, S.of(context).english];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: S.of(context).search,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            Text(lang, style: AppTextStyles.regular14(context)),
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
                      Divider(color: AppColors.grey40, thickness: 1, height: 0),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: AppButton(
            title: S.of(context).save,
            onPressed: () {
              final localeCubit = context.read<LocaleCubit>();
              if (selectedLanguage == S.of(context).arab) {
                localeCubit.setLocale('ar');
              } else {
                localeCubit.setLocale('en');
              }
            },
          ),
        ),
      ],
    );
  }
}
