import 'package:flutter/material.dart';
import 'package:hospital_pulse_point/presentation/register_screen/register_screen.dart';
import 'package:hospital_pulse_point/presentation/login_screen/login_screen.dart';
import 'package:hospital_pulse_point/presentation/inicio_screen/inicio_screen.dart';
import 'package:hospital_pulse_point/presentation/pacientes_screen/pacientes_screen.dart';
import 'package:hospital_pulse_point/presentation/m_dicos_screen/m_dicos_screen.dart';
import 'package:hospital_pulse_point/presentation/administra_o_one_screen/administra_o_one_screen.dart';
import 'package:hospital_pulse_point/presentation/administra_o_screen/administra_o_screen.dart';
import 'package:hospital_pulse_point/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registerScreen = '/register_screen';

  static const String loginScreen = '/login_screen';

  static const String inicioScreen = '/inicio_screen';

  static const String pacientesScreen = '/pacientes_screen';

  static const String mDicosScreen = '/m_dicos_screen';

  static const String administraOOneScreen = '/administra_o_one_screen';

  static const String administraOScreen = '/administra_o_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        registerScreen: RegisterScreen.builder,
        loginScreen: LoginScreen.builder,
        inicioScreen: InicioScreen.builder,
        pacientesScreen: PacientesScreen.builder,
        mDicosScreen: MDicosScreen.builder,
        administraOOneScreen: AdministraOOneScreen.builder,
        administraOScreen: AdministraOScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
