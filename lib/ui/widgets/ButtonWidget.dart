import 'package:flutter/material.dart';

import '../../utils/app_style.dart';


class ActionButton extends StatelessWidget {
  final bool? isDisabled;
  final String text;
  final VoidCallback? onPressed;

  const ActionButton({super.key, this.isDisabled, required this.text, this.onPressed});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 20,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
          color: (isDisabled == true)
              ? Styles.primaryColor.withOpacity(0.6)
              : Styles.primaryColor),
      padding: const EdgeInsets.all(16),
      child: InkWell(onTap: onPressed, child: Text(text)),
    );
  }
}
