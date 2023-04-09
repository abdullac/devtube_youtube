import 'package:devtube_sample/utils/functions/printing.dart';
import 'package:flutter/material.dart';

class Preferences extends StatelessWidget {
  const Preferences({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Preferences"),
      children: [
        Tools(),
        Products(),
      ],
    );
  }
}

////////////////////////////////
///
class Tools extends StatelessWidget {
  const Tools({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Tools", textAlign: TextAlign.center),
      children: [
        AddToolOrProduct(toolOrProduct: ToolOrProduct.tool),
        const ToolsList(),
      ],
    );
  }
}

class ToolsList extends StatelessWidget {
  const ToolsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: toolsNames.length,
      itemBuilder: (context, index) => ToolsListTile(index: index),
    );
  }
}

class ToolsListTile extends StatelessWidget {
  final int index;
  const ToolsListTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(toolsNames[index]),
      trailing: IconButton(
          onPressed: () {
            // delete tool button
          },
          icon: const Icon(Icons.delete)),
    );
  }
}

List<String> toolsNames = [
  "tools1",
  "tools2",
];

///////////////////////////////////////////////////////////

class Products extends StatelessWidget {
  const Products({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text("Products", textAlign: TextAlign.center),
      children: [
        AddToolOrProduct(toolOrProduct: ToolOrProduct.product),
        const ProductsList(),
      ],
    );
  }
}

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: productsNames.length,
      itemBuilder: (context, index) => ProductsListTile(index: index),
    );
  }
}

class ProductsListTile extends StatelessWidget {
  final int index;
  const ProductsListTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productsNames[index]),
      trailing: IconButton(
          onPressed: () {
            // delete products button
          },
          icon: const Icon(Icons.delete)),
    );
  }
}

List<String> productsNames = [
  "products1",
  "products2",
];

////////////////////////////////////////////////////////

enum ToolOrProduct {
  tool,
  product,
}

class AddToolOrProduct extends StatelessWidget {
  final ToolOrProduct toolOrProduct;
  AddToolOrProduct({
    super.key,
    required this.toolOrProduct,
  });

  final TextEditingController addNameEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      height: 60,
      width: double.infinity,
      child: ListTile(
        title: TextField(
          controller: addNameEditingController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        trailing: ElevatedButton(
          onPressed: () {
            // add priority
            if (addNameEditingController.text.isNotEmpty) {
            } else {
              printing("please fill");
            }
          },
          child: const Text("Add"),
        ),
      ),
    );
  }
}
