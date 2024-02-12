import 'package:farmers/detailspage.dart';
import 'package:farmers/homepage.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.vegitables});

  final Vegitables vegitables;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(vegitables: vegitables),
          ));
        },
        child: Column(
          children: [
            ListTile(
              leading: Image.network(
                vegitables.image,
                height: 50,
                width: 50,
              ),
              title: Text(vegitables.name),
              subtitle: Text('₹ ${vegitables.price.toString()}'),
              trailing: const Icon(Icons.shopping_cart),
            )
          ],
        ),
      ),
    );
  }
}

