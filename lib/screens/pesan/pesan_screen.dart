import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/bloc/pesan/pesan_bloc.dart';
import 'package:shop_app/screens/profile/bloc/profile_bloc.dart';

import 'components/pesan_card.dart';

class PesanScreen extends StatefulWidget {
  static String routeName = "/cart";

  const PesanScreen({super.key});

  @override
  State<PesanScreen> createState() => _PesanScreenState();
}

class _PesanScreenState extends State<PesanScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (user) {
            context.read<PesanBloc>().add(
                  PesanEvent.getPesan(id: user.idUser!),
                );
            return BlocBuilder<PesanBloc, PesanState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (message) => Scaffold(
                    body: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Pesan Mu",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    "0 pesan",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Center(
                            child: Text("Anda Tidak Memiliki Pesan"),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                  loaded: (respon) {
                    if (respon.pesan!.isEmpty) {
                      return const Text("Pesan Tidak Ada");
                    } else {
                      return Scaffold(
                        body: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // padding: const EdgeInsets.symmetric(horizontal: 20),
                            children: [
                              SafeArea(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Pesan Mu",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        "${respon.pesan?.length ?? 0} pesan",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: respon.pesan!.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Dismissible(
                                      key: Key(respon.pesan![index].idPesanGrup
                                          .toString()),
                                      direction: DismissDirection.endToStart,
                                      // onDismissed: (direction) {
                                      //   setState(() {
                                      //     demoPesan.removeAt(index);
                                      //   });
                                      // },
                                      background: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFFE6E6),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          children: [
                                            const Spacer(),
                                            SvgPicture.asset(
                                                "assets/icons/Trash.svg"),
                                          ],
                                        ),
                                      ),
                                      child: PesanCard(
                                        pesan: respon.pesan![index],
                                        user: user.idUser!,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // bottomNavigationBar: const CheckoutCard(),
                      );
                    }
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
