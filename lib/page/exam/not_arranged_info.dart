// Copyright 2023 BenderBlog Rodriguez and contributors.
// SPDX-License-Identifier: MPL-2.0

import 'package:flutter/material.dart';
import 'package:watermeter/model/xidian_ids/exam.dart';
import 'package:watermeter/page/public_widget/empty_list_view.dart';
import 'package:watermeter/page/public_widget/public_widget.dart';

class NoArrangedInfo extends StatelessWidget {
  final List<ToBeArranged> list;
  const NoArrangedInfo({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("目前无安排考试的科目"),
      ),
      body: Builder(builder: (context) {
        if (list.isEmpty) {
          return const EmptyListView(text: "目前所有科目均已安排考试");
        }
        return DataList<ToBeArranged>(
          list: list,
          initFormula: (toUse) => Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 6,
            ),
            elevation: 0,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            child: ListTile(
              title: Text(
                toUse.subject,
                textScaler: const TextScaler.linear(1.1),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              subtitle: Text("编号: ${toUse.id}"),
            ),
          ),
        );
      }),
    );
  }
}
