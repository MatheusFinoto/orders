// ignore_for_file: library_private_types_in_public_api

import 'dart:math';

import 'package:mobx/mobx.dart';
import 'package:orders/src/utils/constants.dart';
import 'package:uuid/uuid.dart';

import '../models/order/order.dart';

part 'orders_store.g.dart';

class OrdersStore = _OrdersStore with _$OrdersStore;

abstract class _OrdersStore with Store {
  List<String> products = [
    'Sacola',
    'Ct de Visita',
    'Panfleto',
    'Cx de Pizza',
    'Calendário'
  ];

  List<int> status = [0, 1, 2, 3];

  @action
  Future<List<OrderModel>> generateOrders() async {
    return List.generate(
        20,
        (index) => OrderModel(
              id: const Uuid().v4(),
              product: products[Random().nextInt(products.length)],
              status: status[Random().nextInt(status.length)],
              moment: dateFormatBrlComplete(
                  date: DateTime.now().toUtc().toString()),
            ));
  }

  @observable
  List<OrderModel> orders = [];

  @observable
  HttpStatus getOrdersStatus = HttpStatus.none;

  @action
  Future<void> getOrders() async {
    try {
      getOrdersStatus = HttpStatus.loading;
      await Future.delayed(const Duration(seconds: 2));

      orders = await generateOrders();

      getOrdersStatus = HttpStatus.success;
    } catch (e) {
      getOrdersStatus = HttpStatus.fail;
    }
  }
}
