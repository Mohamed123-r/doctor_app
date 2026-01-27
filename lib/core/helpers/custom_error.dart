import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

Future<void> errorDialog(
  BuildContext context, {
  required String massage,
}) async {
  await AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.error,
    title: S.of(context).error,
    desc: massage,
    btnOk: AppButton(
      title: S.of(context).ok,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  ).show();
}

Future<void> successDialog(
  BuildContext context, {
  required String massage,
}) async {
  await AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.success,
    title: S.of(context).success,
    desc: massage,
    btnOk: AppButton(
      title: S.of(context).ok,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  ).show();
}
Future<void> loadingDialog(BuildContext context) async {
  await AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.noHeader,
    title: S.of(context).loading,
    desc: S.of(context).pleaseWait,
    dismissOnBackKeyPress: false,
    dismissOnTouchOutside: false,
    body: Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).primaryColor,
      ),
    ),
  ).show();
}

Future<void> warningDialog(
  BuildContext context, {
  required String massage,
}) async {
  await AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.warning,
    title: S.of(context).warning,
    desc: massage,
    btnOk: AppButton(
      // isMinWidth: true,
      title: S.of(context).ok,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    btnCancel: AppButton(
      // isMinWidth: true,
      isSecondary: true,
      title: S.of(context).cancel,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  ).show();
}

Future<void> soonDialog(BuildContext context) async {
  await AwesomeDialog(
    context: context,
    dialogType: DialogType.info,
    animType: AnimType.scale,
    title: S.of(context).comingSoon,
    desc: S.of(context).thisFeatureIsComingSoon,
    btnOkOnPress: () {},
  ).show();
}
