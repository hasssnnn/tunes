import 'package:flutter/material.dart';

import '../models/tune_model.dart';

class CustemContainer extends StatelessWidget {
  const CustemContainer({
    super.key,
    required this.tune,
  });
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          tune.playSound();
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: tune.tuneColor,
          ),
        ),
      ),
    );
  }
}
