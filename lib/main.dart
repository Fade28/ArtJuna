<<<<<<< HEAD
import 'package:artjuna_mobile/page/welcome_hal.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WelcomeHal(),
=======
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/bloc/budaya/budaya_bloc.dart';
import 'package:shop_app/bloc/pesan/pesan_bloc.dart';
import 'package:shop_app/bloc/register/register_bloc.dart';
import 'package:shop_app/bloc/sanggar/sanggar_bloc.dart';
import 'package:shop_app/bloc/transaksi/ajukan_bloc.dart';
import 'package:shop_app/bloc/transaksi/transaksi_bloc.dart';
import 'package:shop_app/bloc/pesan/chat_bloc.dart';
import 'package:shop_app/datasource/ajukan_remote_datas.dart';
import 'package:shop_app/datasource/budaya_remote_datas.dart';
import 'package:shop_app/datasource/login_local_datas.dart';
import 'package:shop_app/datasource/login_remote_datas.dart';
import 'package:shop_app/datasource/pesan_remote_datas.dart';
import 'package:shop_app/datasource/produk_remote_datas.dart';
import 'package:shop_app/datasource/register_remote_datas.dart';
import 'package:shop_app/datasource/sanggar_remote_datas.dart';
import 'package:shop_app/datasource/trans_remote_datas.dart';
import 'package:shop_app/screens/products/bloc/produk_bloc.dart';
import 'package:shop_app/screens/profile/bloc/profile_bloc.dart';
import 'package:shop_app/screens/sign_in/bloc/login_bloc.dart';
import 'package:shop_app/screens/sign_in/bloc/logout_bloc.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

import 'routes.dart';
import 'theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(LoginRemoteDatas()),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(LoginLocalDataSource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(LoginLocalDataSource()),
        ),
        BlocProvider(
          create: (context) => ProdukBloc(ProdukRemoteDatas()),
        ),
        BlocProvider(
          create: (context) => SanggarBloc(SanggarRemoteDatas()),
        ),
        BlocProvider(
          create: (context) => TransaksiBloc(TransRemoteDatas()),
        ),
        BlocProvider(
          create: (context) => AjukanBloc(AjukanRemoteDatas()),
        ),
        BlocProvider(
          create: (context) => PesanBloc(PesanRemoteDatas()),
        ),
        BlocProvider(
          create: (context) => ChatBloc(PesanRemoteDatas()),
        ),
        BlocProvider(
          create: (context) => BudayaBloc(BudayaRemotDatas()),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(RegisterRemoteDatas()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ArtJuna',
        theme: AppTheme.lightTheme(context),
        initialRoute: WelcomeHal.routeName,
        routes: routes,
      ),
>>>>>>> 6a21f28 (Fix Final)
    );
  }
}
