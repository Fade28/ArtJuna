import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/profile/bloc/profile_bloc.dart';
import 'package:shop_app/screens/sign_in/bloc/logout_bloc.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            // ProfilePic(
            //   namapic: user?.foto ?? 'favicon.png',
            // ),
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (user) {
                    return Column(
                      children: [
                        ProfilePic(
                          namapic: user.foto ?? 'favicon.png',
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(user.namaLengkap ?? ''),
                      ],
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            // ProfileMenu(
            //   text: "My Account",
            //   icon: "assets/icons/User Icon.svg",
            //   press: () => {},
            // ),
            // ProfileMenu(
            //   text: "Notifications",
            //   icon: "assets/icons/Bell.svg",
            //   press: () {},
            // ),

            BlocListener<LogoutBloc, LogoutState>(
              listener: (context, state) {
                state.maybeMap(
                  orElse: () {},
                  error: (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(e.message),
                        backgroundColor: kPrimaryColor,
                      ),
                    );
                  },
                  success: (value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Logout success'),
                        backgroundColor: kPrimaryColor,
                      ),
                    );
                    Navigator.pushNamed(context, WelcomeHal.routeName);
                  },
                );
              },
              child: ProfileMenu(
                text: "Log Out",
                icon: "assets/icons/Log out.svg",
                press: () {
                  context.read<LogoutBloc>().add(const LogoutEvent.logout());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
