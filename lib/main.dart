import 'package:crypto_wallet/core/variables/variable.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/common/routes/navigation.dart';
import 'core/common/routes/routes_handler.dart';
import 'core/common/routes/routes_name.dart';
import 'core/constant/style/app_theme.dart';
import 'core/utils/route_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: Variable.supabaseUrl,
    anonKey: Variable.supabaseKey,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkTheme,
      navigatorKey: navigatorKey,
      initialRoute: RoutesName.initial,
      onGenerateRoute: RoutesHandler.onGenerateRoute,
      debugShowCheckedModeBanner: false,
      navigatorObservers: [routeObserver],
    );
  }
}
