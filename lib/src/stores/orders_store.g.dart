// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OrdersStore on _OrdersStore, Store {
  late final _$ordersAtom = Atom(name: '_OrdersStore.orders', context: context);

  @override
  List<OrderModel> get orders {
    _$ordersAtom.reportRead();
    return super.orders;
  }

  @override
  set orders(List<OrderModel> value) {
    _$ordersAtom.reportWrite(value, super.orders, () {
      super.orders = value;
    });
  }

  late final _$getOrdersStatusAtom =
      Atom(name: '_OrdersStore.getOrdersStatus', context: context);

  @override
  HttpStatus get getOrdersStatus {
    _$getOrdersStatusAtom.reportRead();
    return super.getOrdersStatus;
  }

  @override
  set getOrdersStatus(HttpStatus value) {
    _$getOrdersStatusAtom.reportWrite(value, super.getOrdersStatus, () {
      super.getOrdersStatus = value;
    });
  }

  late final _$generateOrdersAsyncAction =
      AsyncAction('_OrdersStore.generateOrders', context: context);

  @override
  Future<List<OrderModel>> generateOrders() {
    return _$generateOrdersAsyncAction.run(() => super.generateOrders());
  }

  late final _$getOrdersAsyncAction =
      AsyncAction('_OrdersStore.getOrders', context: context);

  @override
  Future<void> getOrders() {
    return _$getOrdersAsyncAction.run(() => super.getOrders());
  }

  @override
  String toString() {
    return '''
orders: ${orders},
getOrdersStatus: ${getOrdersStatus}
    ''';
  }
}
