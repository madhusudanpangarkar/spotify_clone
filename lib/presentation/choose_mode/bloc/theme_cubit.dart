

import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode>{

  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) => emit(themeMode); //this method takes the themeMode and emits as per the choice light/dark

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return ThemeMode.values[json['theme'] as int];
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // TODO: implement toJson
    return {'theme': state.index};
  }
  
}