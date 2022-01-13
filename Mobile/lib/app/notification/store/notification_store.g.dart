// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotificationStore on NotificationStoreBase, Store {
  final _$loadingAtom = Atom(name: 'NotificationStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$casesAtom = Atom(name: 'NotificationStoreBase.cases');

  @override
  List<Case> get cases {
    _$casesAtom.reportRead();
    return super.cases;
  }

  @override
  set cases(List<Case> value) {
    _$casesAtom.reportWrite(value, super.cases, () {
      super.cases = value;
    });
  }

  final _$onCaseDetailsAsyncAction =
      AsyncAction('NotificationStoreBase.onCaseDetails');

  @override
  Future onCaseDetails(Case item, BuildContext context) {
    return _$onCaseDetailsAsyncAction
        .run(() => super.onCaseDetails(item, context));
  }

  @override
  String toString() {
    return '''
loading: ${loading},
cases: ${cases}
    ''';
  }
}
