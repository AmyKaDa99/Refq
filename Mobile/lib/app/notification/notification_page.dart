import 'package:flutter/material.dart';
import 'package:refq_mongo/app/notification/component/notification_card.dart';
import 'package:refq_mongo/app/notification/store/notification_store.dart';
import 'package:refq_mongo/shared/export_shared.dart';
import 'package:refq_mongo/shared/widgets/app_back_button.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final NotificationStore _store = NotificationStore();
  @override
  Widget build(BuildContext mainContext) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(horizontalAppPadding),
                  child: Text(
                    LocaleKeys.notification_notification.tr(),
                    style: Theme.of(mainContext).textTheme.headline5,
                  ),
                ),
                const AppBackButton(),
              ],
            ),
            Observer(builder: (context) {
              return Visibility(
                  visible: _store.loading,
                  child: const CircularProgressIndicator());
            }),
            Observer(builder: (context) {
              return Visibility(
                visible: !_store.loading,
                child: Expanded(
                  child: Visibility(
                    visible: _store.cases.isNotEmpty,
                    child: ListView.builder(
                      itemCount: _store.cases.length,
                      padding: EdgeInsets.only(
                          left: horizontalAppPadding.sp,
                          right: horizontalAppPadding.sp),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return NotificationCard(onTapCard: () {
                          _store.onCaseDetails(
                              _store.cases[index], mainContext);
                        });
                      },
                    ),
                    replacement: const Center(
                      child: Text("There are no injuries yet"),
                    ),
                  ),
                ),
                replacement: const SizedBox(),
              );
            })
          ],
        ),
      ),
    );
  }
}
