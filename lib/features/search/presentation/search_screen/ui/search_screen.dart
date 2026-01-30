import 'dart:async';

import 'package:doctor_app/core/helpers/custom_Dialog.dart';
import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:doctor_app/core/widgets/app_text_field.dart';
import 'package:doctor_app/features/home/presentation/home/widgets/doctor_item.dart';
import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../generated/l10n.dart';
import '../logic/search_cubit.dart';
import '../logic/search_state.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController controller = TextEditingController();

  /// قائمة البحث الأخيرة
  final List<String> recentSearches = [];

  /// Debounce timer
  Timer? _debounce;

  @override
  Widget build(BuildContext context) {
    final searchCubit = context.read<SearchCubit>();

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
              onTap: () => Navigator.pop(context),
            ),
          ),
        ),
        title: Text(
          S.of(context).search,
          style: AppTextStyles.semibold18(context),
        ),
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AppTextField(
              controller: controller,
              hintText: S.of(context).searchDoctorByName,
              keyboardType: TextInputType.text,
              onChanged: (val) {
                setState(() {});

                /// Trigger search
                searchCubit.search(val!);
                // ❗ Cancel ongoing debounce
                _debounce?.cancel();

                // ❗ Start new debounce
                _debounce = Timer(const Duration(seconds: 2), () {
                  /// Add to recent searches only once after stop typing
                  if (val!.isNotEmpty && !recentSearches.contains(val)) {
                    setState(() {
                      recentSearches.insert(0, val);
                    });
                  }
                });
              },
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
              suffixIcon: controller.text.isNotEmpty
                  ? GestureDetector(
                      onTap: () {
                        controller.clear();
                        searchCubit.search("");
                        setState(() {});
                      },
                      child: const Icon(Icons.close, color: AppColors.grey60),
                    )
                  : null,
            ),
          ),

          // 🔹 Recent Search List OR Search Result
          if (controller.text.isEmpty) Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              S.of(context).recentSearch,
                              style: AppTextStyles.semibold18(context),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                warningDialog(
                                  context,
                                  massage:
                                      S.of(context).areYouSureYouWantToClearAllRecentSearches,
                                  onPressed: () {
                                    setState(() {
                                      recentSearches.clear();
                                    });
                                    Navigator.pop(context);
                                  },
                                );
                              },
                              borderRadius: BorderRadius.circular(20),
                              child: Text(
                                S.of(context).clearAllHistory,
                                style: AppTextStyles.regular12(
                                  context,
                                ).copyWith(color: AppColors.primary100),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),

                        // ➤ No recent searches
                        if (recentSearches.isEmpty)
                          Center(
                            child: Text(
                              S.of(context).noRecentSearches,
                              style: AppTextStyles.medium14(
                                context,
                              ).copyWith(color: AppColors.grey60),
                            ),
                          )
                        else
                          // ➤ Show recent searches
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      Icon(
                                        Icons.history_outlined,
                                        color: AppColors.grey60,
                                      ),
                                      const SizedBox(width: 12),
                                      Expanded(
                                        child: Text(
                                          recentSearches[index],
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppTextStyles.medium14(
                                            context,
                                          ).copyWith(color: AppColors.grey100),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            recentSearches.removeAt(index);
                                          });
                                        },
                                        borderRadius: BorderRadius.circular(20),
                                        child: const Icon(
                                          Icons.close,
                                          color: AppColors.grey60,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 8),
                                itemCount: recentSearches.length,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ) else Expanded(
                  child: BlocBuilder<SearchCubit, SearchState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const SizedBox.shrink(),

                        loading: () => const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.primary100,
                          ),
                        ),

                        error: (message) => Center(
                          child: Text(
                            message,
                            style: AppTextStyles.medium14(context),
                          ),
                        ),

                        loaded: (doctors) {
                          if (doctors == null || doctors.isEmpty) {
                            return  Center(
                              child: Text(
                                S.of(context).noDoctorsFoundMatchingYourSearch,
                              ),
                            );
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Text(
                                 "${doctors.length}  ${S.of(context).founds}",
                                  style: AppTextStyles.semibold18(context),
                                ),
                              ),

                              Expanded(
                                child: ListView.separated(
                                  padding: const EdgeInsets.all(16),
                                  itemCount: doctors.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(height: 16),
                                  itemBuilder: (context, index) {
                                    return DoctorItem(doctor: doctors[index]);
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
