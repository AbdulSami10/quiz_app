import 'package:flutter/material.dart';
import 'package:quiz/questions_summary/summary_items.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItems(itemData: data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
