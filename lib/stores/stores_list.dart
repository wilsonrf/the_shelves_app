import 'package:flutter/material.dart';
import 'package:the_shelves_app/common/hal_collection.dart';
import 'package:the_shelves_app/stores/stores_service.dart';

class StoreList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return _buildStores();
  }

  Widget _buildStores() {
    return FutureBuilder<HalCollection>(
      future: fetchStores(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('There is an error',
          style: Theme.of(context).textTheme.headline,);
        } else if( snapshot.hasData) {
            return Text(snapshot.data.links.self.href,
          style: Theme.of(context).textTheme.headline,);
        } else {
          return Text('No Value yet',
          style: Theme.of(context).textTheme.headline,);
        }
      },
    );
  }
  
}