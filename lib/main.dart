import 'package:flutter/material.dart';
import 'package:google/util/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 

  runApp(SeeStore());
}

class SeeStore extends StatelessWidget {
  const SeeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false
    ,
    themeMode: ThemeMode.system,
    theme: SeeAppTheme.lightTheme,
    darkTheme: SeeAppTheme.darkTheme,
    );
  }
}
