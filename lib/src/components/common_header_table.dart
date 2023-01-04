import 'package:flutter/material.dart';

import '../models/system/system.dart';

class CommonHeaderTable extends StatelessWidget {
  const CommonHeaderTable({super.key, required this.listOfTiles});

  final List<HeaderTileModel> listOfTiles;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: listOfTiles
          .map(
            (e) => Expanded(
              flex: e.flex ?? 1,
              child:
                  Text(e.title, style: Theme.of(context).textTheme.bodyMedium),
            ),
          )
          .toList(),

      // children: [
      //   Expanded(
      //     child: Text('Pedido', style: Theme.of(context).textTheme.bodyMedium),
      //   ),
      //   Expanded(
      //     child: Text('Produto', style: Theme.of(context).textTheme.bodyMedium),
      //   ),
      //   Expanded(
      //     child: Text('Status', style: Theme.of(context).textTheme.bodyMedium),
      //   ),
      //   Expanded(
      //     child: Text('Data Entrega',
      //         style: Theme.of(context).textTheme.bodyMedium),
      //   ),
      // ],
    );
  }
}
