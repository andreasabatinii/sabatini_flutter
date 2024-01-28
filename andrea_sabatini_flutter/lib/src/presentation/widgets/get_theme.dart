import 'package:andrea_sabatini_flutter/src/theme.dart';
import 'package:flutter/material.dart';

AppTheme getTheme(BuildContext e) => Theme.of(e).extension<AppTheme>()!;
