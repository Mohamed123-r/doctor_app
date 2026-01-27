import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../generated/l10n.dart';

class FAQSection extends StatefulWidget {
  const FAQSection({super.key});

  @override
  State<FAQSection> createState() => _FAQSectionState();
}

class _FAQSectionState extends State<FAQSection> {
  final Set<int> expanded = {};

  late final List<Map<String, String>> faqs = [
    {
      "question": S.of(context).whatShouldIExpectDuringADoctorsAppointment,
      "answer":
          S.of(context).duringADoctorsAppointmentYouCanExpectToDiscussYour,
    },
    {
      "question": S.of(context).whatShouldIBringToMyDoctorsAppointment,
      "answer":
          S.of(context).bringYourIdInsuranceCardListOfMedicationsAndAny,
    },
    {
      "question": S.of(context).whatIfINeedToCancelOrRescheduleMyAppointment,
      "answer":
          S.of(context).contactTheClinicAsSoonAsPossibleToCancelOr,
    },
    {
      "question": S.of(context).howDoIMakeAnAppointmentWithADoctor,
      "answer": S.of(context).youCanBookThroughTheAppOrCallTheClinic,
    },
    {
      "question": S.of(context).howEarlyShouldIArriveForMyDoctorsAppointment,
      "answer": S.of(context).arrive1520MinutesEarlyToCompleteAnyPaperwork,
    },
    {
      "question": S.of(context).howLongWillMyDoctorsAppointmentTake,
      "answer":
          S.of(context).appointmentsTypicallyLast1530MinutesButMayVaryBasedOn,
    },

    {
      "question": S.of(context).howMuchWillMyDoctorsAppointmentCost,
      "answer":
          S.of(context).costsVaryBasedOnInsuranceAndServicesCheckWithYour,
    },

    {
      "question": S.of(context).whatShouldILookForInAGoodDoctor,
      "answer":
          S.of(context).lookForQualificationsExperienceCommunicationSkillsAndPatientReviews,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: faqs.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = faqs[index];
        final isExpanded = expanded.contains(index);

        return Column(
          children: [
            ExpansionTile(
              tilePadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              trailing: Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
              shape: const RoundedRectangleBorder(),
              collapsedShape: const RoundedRectangleBorder(),
              backgroundColor: Colors.transparent,
              collapsedBackgroundColor: Colors.transparent,
              clipBehavior: Clip.none,

              onExpansionChanged: (value) {
                setState(() {
                  if (value) {
                    expanded.add(index);
                  } else {
                    expanded.remove(index);
                  }
                });
              },
              title: Text(
                item["question"]!,
                style: AppTextStyles.regular14(context),
              ),
              children: [
                Text(
                  item["answer"]!,
                  style: AppTextStyles.regular12(
                    context,
                  ).copyWith(color: AppColors.body),
                ),
              ],
            ),
            Divider(
              color: AppColors.grey40,
              thickness: 1,
              height: 0,
              endIndent: 16,
              indent: 16,
            ),
          ],
        );
      },
    );
  }
}
