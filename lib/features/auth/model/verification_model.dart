import 'package:crypto_wallet/core/constant/other/assets.gen.dart';

class VerificationModel {
  static final listVerification = [
    {
      'icon': Assets.icons.ktp.path,
      'title': 'National ID Card',
      'value': 'ktp',
    },
    {
      'icon': Assets.icons.passport.path,
      'title': 'Passport',
      'value': 'passport',
    },
    {
      'icon': Assets.icons.sim.path,
      'title': 'Driver License',
      'value': 'sim',
    }
  ];
}
