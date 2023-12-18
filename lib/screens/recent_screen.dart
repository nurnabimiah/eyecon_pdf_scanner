
import 'package:flutter/material.dart';

import '../reusable_widget/app_headertext_widget.dart';
import '../reusable_widget/reusable_appbar.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({Key? key}) : super(key: key);

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusbaleAppbar(),
      
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppHeaderTextWidget(text: 'Recent'),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'images/grid.png',
                        height: 48,
                        width: 23,
                      ))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 20, top: 12, bottom: 12),
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 10),
                      child: ListTile(
                        title: const Text(
                          'Document files',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            '23/03/2023',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        leading: Image.asset('images/my_files_active.png'),
                        trailing: TextButton(
                          onPressed: () {},
                          child: const Text(
                            '20 pages >',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 20, top: 12, bottom: 12),
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 10),
                      child: ListTile(
                        title: const Text(
                          'Document files',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            '23/03/2023',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        leading: Image.asset('images/my_files_active.png'),
                        trailing: TextButton(
                          onPressed: () {},
                          child: const Text(
                            '20 pages >',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 20, top: 12, bottom: 12),
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 10),
                      child: ListTile(
                        title: const Text(
                          'Document files',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            '23/03/2023',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        leading: Image.asset('images/my_files_active.png'),
                        trailing: TextButton(
                          onPressed: () {},
                          child: const Text(
                            '20 pages >',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 20, top: 12, bottom: 12),
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0, left: 10),
                      child: ListTile(
                        title: const Text(
                          'Document files',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            '23/03/2023',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        leading: Image.asset('images/my_files_active.png'),
                        trailing: TextButton(
                          onPressed: () {},
                          child: const Text(
                            '20 pages >',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
