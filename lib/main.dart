import 'package:books_app_test/bloc/books_block.dart';
import 'package:books_app_test/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/adapters.dart';

import 'bloc/books_event.dart';
import 'hive/storage.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Hive.initFlutter();
  Storage().init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BooksBloc()..add(OnFirstEvent())),
      ],
      child: const MyApp(),
    ),
  );
}
