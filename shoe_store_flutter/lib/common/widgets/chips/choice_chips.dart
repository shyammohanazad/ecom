import 'package:ecomm_store_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyChoiceChips extends StatelessWidget {
  const MyChoiceChips({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = MyAppHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent), // Thsis the only way to keep Unselected chips color to transparent.
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        onSelected: onSelected,
        selected: selected,
        labelStyle: TextStyle(color: selected ? MyAppColors.white : null),
        avatar: isColor
            ? MyAppCircularContainer(
                width: 50,
                height: 50,
                background: MyAppHelperFunctions.getColor(text)!,
              )
            : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        shape: isColor ? CircleBorder() : null,
        backgroundColor: isColor ? MyAppHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
