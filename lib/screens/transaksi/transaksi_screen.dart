import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shop_app/bloc/transaksi/transaksi_bloc.dart';
import 'package:shop_app/models/response/login_respon_model.dart';
import 'package:shop_app/screens/profile/bloc/profile_bloc.dart';

import '../../models/Cart.dart';
import 'components/trans_card.dart';

class TransScreen extends StatefulWidget {
  static String routeName = "/transaksi";

  const TransScreen({super.key});

  @override
  State<TransScreen> createState() => _TransScreenState();
}

class _TransScreenState extends State<TransScreen> {
  @override
  void initState() {
    context.read<ProfileBloc>().add(const ProfileEvent.getdata());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (user) {
            context.read<TransaksiBloc>().add(
                  TransaksiEvent.getTrans(id: user.idUser!),
                );
            return BlocBuilder<TransaksiBloc, TransaksiState>(
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
                            child: Text("Anda Tidak Memiliki Transaksi"),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                  loaded: (transResponModel) {
                    if (transResponModel.transaksi!.isEmpty) {
                      return const Text("Transaksi Tidak Ada");
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
                                        "Transaksi Mu",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        "${transResponModel.transaksi?.length ?? 0} items",
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
                                  itemCount:
                                      transResponModel.transaksi?.length ?? 0,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: TransCard(
                                        trans:
                                            transResponModel.transaksi![index]),
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
