import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/bloc/register/register_bloc.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../constants.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final namaController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nohpController = TextEditingController();
  final alamatController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    namaController.dispose();
    nohpController.dispose();
    alamatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: namaController,
          keyboardType: TextInputType.name,
          decoration: const InputDecoration(
            labelText: "Nama Lengkap",
            hintText: "Masukkan Nama Lengkap Anda !",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: alamatController,
          keyboardType: TextInputType.streetAddress,
          decoration: const InputDecoration(
            labelText: "Alamat",
            hintText: "Masukkan ALamat Anda !",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon:
                CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg"),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: nohpController,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            labelText: "No. Handphone",
            hintText: "Masukkan Nomor Handphone Anda",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            labelText: "Email",
            hintText: "Masukkan Email Anda!",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: passwordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: "Password",
            hintText: "Masukkan Password Anda",
            // If  you are using latest version of flutter then lable text and hint text shown like this
            // if you r using flutter less then 1.20.* then maybe this is not working properly
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
          ),
        ),
        const SizedBox(height: 16),
        BlocListener<RegisterBloc, RegisterState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: (respon) {
                print(respon.status);
                if (respon.status != "Gagal") Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        "No Hp atau Email sudah terdaftar atau salah format"),
                    backgroundColor: kPrimaryColor,
                  ),
                );
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(message),
                    backgroundColor: kPrimaryColor,
                  ),
                );
              },
            );
          },
          child: BlocBuilder<RegisterBloc, RegisterState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return ElevatedButton(
                    onPressed: () {
                      print("Tombol Di tekan");
                      context.read<RegisterBloc>().add(
                            RegisterEvent.daftar(
                              nama: namaController.text,
                              alamat: alamatController.text,
                              nohp: nohpController.text,
                              email: emailController.text,
                              pass: passwordController.text,
                            ),
                          );
                    },
                    child: const Text("Daftar"),
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
        ),
      ],
    );
  }
}
