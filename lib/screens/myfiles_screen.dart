import 'package:flutter/material.dart';

import '../reusable_widget/reusable_appbar.dart';

class MyfileScreen extends StatefulWidget {
  const MyfileScreen({Key? key}) : super(key: key);

  @override
  State<MyfileScreen> createState() => _MyfileScreenState();
}

class _MyfileScreenState extends State<MyfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusbaleAppbar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 16),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 14.0,
              mainAxisSpacing: 12.0,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                height: 160,
                width: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.blue.withOpacity(0.1)
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/my_files_active.png',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text('20 pages')
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              color: Colors.blueAccent),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text('Documents files'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.more_vert_outlined),
                                  ],
                                ),
                                Text('23/01/2023')
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
