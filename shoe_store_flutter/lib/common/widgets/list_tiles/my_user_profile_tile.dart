import 'package:ecomm_store_app/common/widgets/images/my_circular_image.dart';
import 'package:ecomm_store_app/utils/constants/colors.dart';
import 'package:ecomm_store_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key,
    required this.userName,
    required this.userEmail,
    this.userImage = MyAppImageStrings.defaultUserImageM, this.onTap,
  });

  final String userName;
  final String userEmail;
  final String userImage;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: MyCircularImage(
        image: userImage,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        userName,
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: MyAppColors.white),
      ),
      subtitle: Text(
        userEmail,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: MyAppColors.white),
      ),
      trailing: IconButton(
        onPressed: onTap,
        icon: Icon(Iconsax.edit, color: MyAppColors.white),
      ),
    );
  }
}
