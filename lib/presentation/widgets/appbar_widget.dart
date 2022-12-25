import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module/ui_utils/app_assets.dart';
import 'package:module/ui_utils/app_dimensions/app_dimensions.dart';
import 'package:module/ui_utils/mock_data.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: const _LeadingIconWidget(),
      actions: const [
        _ProfileDataWidget(),
        _SettingsBtn(),
      ],
    );
  }
}

/// Левая иконка
class _LeadingIconWidget extends StatelessWidget {
  const _LeadingIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppAssets.appIcon);
  }
}

/// Профиль пользователя
class _ProfileDataWidget extends StatelessWidget {
  const _ProfileDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        _ProfileIconWidget(),
        SizedBox(width: 8),
        _ProfilePersonName(),
      ],
    );
  }
}

/// Иконка пользователя
class _ProfileIconWidget extends StatelessWidget {
  const _ProfileIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: AppDimensions.profileIconSize,
      width: AppDimensions.profileIconSize,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      imageUrl: MockData.profileIconMock,
      placeholder: (context, url) => SvgPicture.asset(
        AppAssets.placeholderIcon,
      ),
    );
  }
}

/// Имя пользователя
class _ProfilePersonName extends StatelessWidget {
  const _ProfilePersonName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Text(MockData.personNameMock.toUpperCase()),
    );
  }
}

/// Шестеренка настроек
class _SettingsBtn extends StatelessWidget {
  const _SettingsBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {}, icon: const Icon(Icons.settings));
  }
}
