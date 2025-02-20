import 'package:crypto_wallet/core/constant/other/assets.gen.dart';

class SettingModel {
  static final List<dynamic> listSettings = [
    {
      'title': 'Privacy',
      'data': [
        {
          'label': 'Profile',
          'icon': Assets.icons.profile.path,
        },
        {
          'label': 'Security',
          'icon': Assets.icons.securitySmall.path,
        },
      ],
    },
    {
      'title': 'Finance',
      'data': [
        {
          'label': 'History',
          'icon': Assets.icons.history.path,
        },
        {
          'label': 'Limits',
          'icon': Assets.icons.limits.path,
        },
      ],
    },
    {
      'title': 'Account',
      'data': [
        {
          'label': 'Theme',
          'icon': Assets.icons.theme.path,
        },
        {
          'label': 'Notifications',
          'icon': Assets.icons.notifications.path,
        },
      ],
    },
    {
      'title': 'More',
      'data': [
        {
          'label': 'My bonus',
          'icon': Assets.icons.gift.path,
        },
        {
          'label': 'Share with friends',
          'icon': Assets.icons.shareWithFriend.path,
        },
        {
          'label': 'Support',
          'icon': Assets.icons.support.path,
        },
      ],
    },
  ];
}
