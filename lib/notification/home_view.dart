import 'package:flutter/material.dart';
import 'package:flutter_application/notification/notification.dart';
import 'package:provider/provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class RemainderHomePageTest extends StatefulWidget {
  @override
  _RemainderHomePageTestState createState() => _RemainderHomePageTestState();
}

class _RemainderHomePageTestState extends State<RemainderHomePageTest> {
  @override
  void initState() {
    Provider.of<NotificationService>(context, listen: false).initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
                child: Consumer<NotificationService>(
      builder: (context, model, _) =>
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () => model.instantNotification(),
            child: Text('Scheduled Notification')),
        ElevatedButton(
            onPressed: () => model.cancelNotification(),
            child: Text('Cancel Notification')),
      ]),
    ))));
  }
}
