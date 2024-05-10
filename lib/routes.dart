import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/pesan/chat_screen.dart';
import 'package:shop_app/screens/transaksi/kontrak_screen.dart';
import 'package:shop_app/screens/products/products_screen.dart';
import 'package:shop_app/screens/sanggar/listSanggar_screen.dart';
import 'package:shop_app/screens/sanggar/sanggar_screen.dart';

import 'screens/transaksi/transaksi_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/init_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  WelcomeHal.routeName: (context) => const WelcomeHal(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  SanggarScreen.routeName: (context) => const SanggarScreen(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  ListSanggarScreen.routeName: (context) => const ListSanggarScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  TransScreen.routeName: (context) => const TransScreen(),
  KontrakScreen.routeName: (context) => const KontrakScreen(),
  ChatScreen.routeName: (context) => const ChatScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
