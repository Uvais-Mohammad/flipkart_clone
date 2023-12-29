import 'package:flutter/material.dart';

class Utils {
  static void showSuccess(BuildContext context, String message,
      {String? title}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle_outline, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (title != null)
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                Text(message),
              ],
            )),
          ],
        ),
        backgroundColor: Colors.green,
        margin: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        animation: CurvedAnimation(
          parent: const AlwaysStoppedAnimation(1),
          curve: Curves.easeOut,
        ),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }

  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.error_outline, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: Colors.red,
        margin: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        animation: CurvedAnimation(
          parent: const AlwaysStoppedAnimation(1),
          curve: Curves.easeOut,
        ),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }

  static void showWarning(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.warning, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: Colors.amber[800],
        margin: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
        animation: CurvedAnimation(
          parent: const AlwaysStoppedAnimation(1),
          curve: Curves.easeOut,
        ),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }

  static String prettyWeight(String? weight) {
    return (double.tryParse(weight ?? '0') ?? 0).toStringAsFixed(2);
  }
}
