import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learn_to_earn/SQFlite/DB%20/db_helper.dart';

class HomeSQF extends StatefulWidget {
  const HomeSQF({super.key});

  @override
  State<HomeSQF> createState() => _HomeSQFState();
}

class _HomeSQFState extends State<HomeSQF> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
                onPressed: () async {
                  await DatabaseHelper.instance
                      .insertRecord({DatabaseHelper.columnName: "Random"});
                },
                child: const Text("Create")),
            StreamBuilder<List<Map<String, dynamic>>>(
              stream: DatabaseHelper.instance.dataStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Map<String, dynamic>>? data = snapshot.data;
                  if (data != null && data.isNotEmpty) {
                    List names = data.map((item) => item['dawood']).toList();
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        String? name = names[index] ?? "";
                        return ListTile(
                          title: Text(name!),
                        );
                      },
                    );
                  } else {
                    return const Text('No data available');
                  }
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            OutlinedButton(
                onPressed: () async {
                  var output = await DatabaseHelper.instance.queryDatabase();
                  if (kDebugMode) {
                    print(output);
                  }
                },
                child: const Text("Read")),
            OutlinedButton(onPressed: () {}, child: const Text("Update")),
            OutlinedButton(onPressed: ()async {
              await DatabaseHelper.instance
                  .deleteRecord(15);
            }, child: const Text("delete")),
          ],
        ),
      ),
    );
  }
}
