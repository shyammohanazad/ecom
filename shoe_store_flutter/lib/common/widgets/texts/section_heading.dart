import 'package:flutter/material.dart';

class MyAppSectionHeading extends StatelessWidget {
  const MyAppSectionHeading({
    super.key,
    required this.headingText,
    this.textColor,
    this.buttonTitle = 'view all',
    this.onPressed,
    this.showActionButton = true,
  });

  final Color? textColor;
  final String headingText;
  final String buttonTitle;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Popular Categories',
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
