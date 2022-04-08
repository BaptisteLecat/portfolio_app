import 'package:flutter/material.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/presentation/feature/practice/view/work_view.dart';

class WorkScreen extends StatelessWidget {
  final Work work;
  const WorkScreen({Key? key, required this.work}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WorkView(work: work);
  }
}
