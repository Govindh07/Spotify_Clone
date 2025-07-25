import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeLogic extends HydratedCubit<ThemeMode>{
 ThemeLogic():super(ThemeMode.system);

 void updateTheme(ThemeMode themeMode) => emit(themeMode);


  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }

}