import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/bloc/sanggar/sanggar_bloc.dart';
import 'package:shop_app/components/sanggar_card.dart';
import 'package:shop_app/screens/sanggar/listSanggar_screen.dart';
import 'package:shop_app/screens/sanggar/sanggar_screen.dart';

import '../../products/products_screen.dart';
import 'section_title.dart';

class DaftarSanggar extends StatefulWidget {
  const DaftarSanggar({
    super.key,
  });

  @override
  State<DaftarSanggar> createState() => _DaftarSanggarState();
}

class _DaftarSanggarState extends State<DaftarSanggar> {
  @override
  void initState() {
    // searchResults = products;
    context.read<SanggarBloc>().add(const SanggarEvent.getSanggar());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SanggarBloc, SanggarState>(builder: (context, state) {
      return state.maybeWhen(
        orElse: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        error: (pesan) {
          return const Center(
            child: Text("Tidak ada data"),
          );
        },
        loaded: (sanggarResponModel) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SectionTitle(
                  title: "Sanggar",
                  press: () {
                    Navigator.pushNamed(
                      context,
                      ListSanggarScreen.routeName,
                      arguments: SanggarListArguments(
                        sanggar: sanggarResponModel,
                      ),
                    );
                  },
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        sanggarResponModel.sanggar!.length >= 5
                            ? 5
                            : sanggarResponModel.sanggar!.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SanggarCard(
                            product: sanggarResponModel.sanggar![index],
                            onPress: () {
                              Navigator.pushNamed(
                                context,
                                SanggarScreen.routeName,
                                arguments: SanggarDetailsArguments(
                                    sanggar:
                                        sanggarResponModel.sanggar![index]),
                              );
                            }),
                      );
                    }),
                    const SizedBox(width: 20),
                  ],
                ),
              )
            ],
          );
        },
      );
    });
  }
}
