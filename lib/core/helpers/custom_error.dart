import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';

Future<void> errorDialog(
  BuildContext context, {
  required String massage,
}) async {
  await AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.error,
    title: "Error",
    desc: massage,
    btnOk: AppButton(
      title: "Ok",
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
    title: "Success",
    desc: massage,
    btnOk: AppButton(
      title: "Ok",
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
    title: "Loading",
    desc: "Please wait...",
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
    title: "Warning",
    desc: massage,
    btnOk: AppButton(
      // isMinWidth: true,
      title: "Ok",
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    btnCancel: AppButton(
      // isMinWidth: true,
      isSecondary: true,
      title: "Cancel",
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
    title: "Coming soon",
    desc: "This feature is coming soon",
    btnOkOnPress: () {},
  ).show();
}
