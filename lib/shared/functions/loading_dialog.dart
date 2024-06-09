import 'package:flutter/material.dart';
import 'package:todo_app/shared/widgets/circular_loading.dart';

loadingDialog(
  BuildContext context,
) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => const PopScope(
      canPop: false,
      child: Dialog.fullscreen(
        backgroundColor: Color.fromRGBO(47, 47, 47, 0.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircularLoading()],
        ),
      ),
    ),
  );
}

stopDialog(
  BuildContext context,
) {
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
  }
}
