import 'package:flutter/material.dart';
import 'package:orders/src/components/common_header_table.dart';
import 'package:orders/src/models/system/system.dart';
import 'package:orders/src/utils/constants.dart';
import 'package:uuid/uuid.dart';

import '../../components/common_card.dart';
import '../../components/header.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Header(title: 'Pedidos'),
            const Divider(height: 32),
            //! FILTER BAR AND ADD NEW
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    splashRadius: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_list_outlined),
                    splashRadius: 20,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  SizedBox(
                    width: 200,
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 8),
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          // border: Border.all(
                          //     color: Theme.of(context).brightness ==
                          //             Brightness.dark
                          //         ? Colors.grey[300]!
                          //         : Colors.black45,
                          //     width: 0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: 'Pesquisar',
                              hintStyle: Theme.of(context).textTheme.bodyMedium,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              prefixIconConstraints: const BoxConstraints(
                                  minWidth: 23, maxHeight: 20),
                              border: InputBorder.none,
                              isCollapsed: true),
                          onChanged: (v) {},
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      CommonHeaderTable(listOfTiles: [
                        HeaderTileModel(title: 'Pedido'),
                        HeaderTileModel(title: 'Produto'),
                        HeaderTileModel(title: 'Status'),
                        HeaderTileModel(title: 'Data Entrega')
                      ]),
                      const Divider(),
                      Expanded(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 20,
                          itemBuilder: (_, i) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                          '#${const Uuid().v4().substring(0, 7)}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge),
                                    ),
                                    Expanded(
                                      child: Text('Categoria',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge),
                                    ),
                                    Expanded(
                                      child: Text('Status',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge),
                                    ),
                                    Expanded(
                                      child: Text(
                                          dateFormatBrlComplete(
                                              date: DateTime.now()
                                                  .toUtc()
                                                  .toString()),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge),
                                    ),
                                  ],
                                ),
                                const Divider()
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  )),
                  const SizedBox(
                    width: 16,
                  ),
                  const CommonCard(
                      child: SizedBox(
                    width: 350,
                    height: double.infinity,
                  )),
                ],
              ),
            ),
          ],
        ));
  }
}
