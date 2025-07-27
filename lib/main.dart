import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spotify/core/configs/theme/app_theme.dart';
import 'package:spotify/spotify/presentation/choose_mode/bloc/theme_logic.dart';
import 'package:spotify/spotify/presentation/splash/pages/splash.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );

  //Firebase Setup
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Spotify());
}

class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeLogic()),
      ],
      child: BlocBuilder<ThemeLogic, ThemeMode>(
       builder: (context, mode) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme:AppTheme.lightTheme,
            themeMode: mode,
            darkTheme: AppTheme.darkTheme,
            home: const SplashPage()
        ),
      ),
    );
  }
}
