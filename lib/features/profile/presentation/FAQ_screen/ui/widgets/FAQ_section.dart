import 'package:doctor_app/core/theming/app_colors.dart';
import 'package:doctor_app/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';

class FAQSection extends StatefulWidget {
  const FAQSection({super.key});

  @override
  State<FAQSection> createState() => _FAQSectionState();
}

class _FAQSectionState extends State<FAQSection> {
  final Set<int> expanded = {};

  final List<Map<String, String>> faqs = [
    {
      "question": "What should I expect during a doctor's appointment?",
      "answer":
          "During a doctor's appointment, you can expect to discuss your medical history, current symptoms or concerns, and any medications or treatments you are taking. The doctor will likely perform a physical exam and may order additional tests or procedures if necessary.",
    },
    {
      "question": "What should I bring to my doctor's appointment?",
      "answer":
          "Bring your ID, insurance card, list of medications, and any relevant medical records.",
    },
    {
      "question": "What if I need to cancel or reschedule my appointment?",
      "answer":
          "Contact the clinic as soon as possible to cancel or reschedule.",
    },
    {
      "question": "How do I make an appointment with a doctor?",
      "answer": "You can book through the app or call the clinic directly.",
    },
    {
      "question": "How early should I arrive for my doctor's appointment?",
      "answer": "Arrive 15-20 minutes early to complete any paperwork.",
    },
    {
      "question": "How long will my doctor's appointment take? ",
      "answer":
          "Appointments typically last 15-30 minutes, but may vary based on your needs.",
    },

    {
      "question": "How much will my doctor's appointment cost? ",
      "answer":
          "Costs vary based on insurance and services; check with your provider for details.",
    },

    {
      "question": "What should I look for in a good doctor? ",
      "answer":
          "Look for qualifications, experience, communication skills, and patient reviews.",
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
