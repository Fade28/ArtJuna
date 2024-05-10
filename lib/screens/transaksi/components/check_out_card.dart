import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/bloc/transaksi/ajukan_bloc.dart';
import 'package:shop_app/datasource/login_local_datas.dart';
import 'package:shop_app/models/response/login_respon_model.dart';
import 'package:shop_app/models/response/produk_respon_model.dart';
import 'package:shop_app/screens/init_screen.dart';

import '../../../constants.dart';

class CheckoutCard extends StatefulWidget {
  const CheckoutCard({
    Key? key,
    required this.produk,
  }) : super(key: key);
  final Produk produk;

  @override
  State<CheckoutCard> createState() => _CheckoutCardState();
}

class _CheckoutCardState extends State<CheckoutCard> {
  User? user;
  @override
  void initState() {
    LoginLocalDataSource().getAuthData().then((value) => user = value.user);
    super.initState();
  }

  DateTimeRange? selectedDateRange;

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDateRange) {
      setState(() {
        selectedDateRange = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    const Text(
                      'Pilih lama peminjaman :',
                      style: TextStyle(fontSize: 16),
                    ),
                    IconButton(
                      icon: const Icon(Icons.date_range),
                      onPressed: () => _selectDateRange(context),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                selectedDateRange != null
                    ? Text(
                        '${formatDate(selectedDateRange!.start, [
                              dd,
                              '-',
                              mm,
                              '-',
                              yyyy
                            ])} sampai ${formatDate(selectedDateRange!.end, [
                              dd,
                              '-',
                              mm,
                              '-',
                              yyyy
                            ])}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    : const Text(
                        'Pilih Tanggal peminjaman anda',
                        style: TextStyle(fontSize: 16),
                      ),
              ],
            ),
            const SizedBox(height: 16),
            BlocListener<AjukanBloc, AjukanState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  success: (respon) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(respon.messages!.success!),
                        backgroundColor: kPrimaryColor,
                      ),
                    );
                    Navigator.pushNamed(context, InitScreen.routeName);
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
              child: BlocBuilder<AjukanBloc, AjukanState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return Row(
                        children: [
                          Expanded(
                            child: Text.rich(
                              TextSpan(
                                text: "Total:\n",
                                children: [
                                  TextSpan(
                                    text: "Rp.${widget.produk.harga}.00",
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                if (selectedDateRange != null) {
                                  context.read<AjukanBloc>().add(
                                        AjukanEvent.ajukan(
                                          id_san: widget.produk.idSanggar!,
                                          id_user: user!.idUser!,
                                          id_pro: widget.produk.idProduk!,
                                          tgl_mulai: selectedDateRange!.start
                                              .toString(),
                                          tgl_akhir:
                                              selectedDateRange!.end.toString(),
                                          harga: widget.produk.harga!,
                                        ),
                                      );
                                  print(
                                      'tanggal Mulai = ${formatDate(selectedDateRange!.start, [
                                        dd,
                                        '-',
                                        mm,
                                        '-',
                                        yyyy
                                      ])}');
                                  print(user!.idUser);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text("Pilih Tanggal Terlebih Dahulu"),
                                      backgroundColor: kPrimaryColor,
                                    ),
                                  );
                                }
                              },
                              child: const Text("Ajukan"),
                            ),
                          ),
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
            ),
          ],
        ),
      ),
    );
  }
}
