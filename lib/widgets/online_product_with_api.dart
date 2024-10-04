import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_assignment/models/ProductsModel.dart';
import 'package:flutter_responsive_design_assignment/services/ProductService.dart';

class OnlineProductWithAPI extends StatefulWidget {
  const OnlineProductWithAPI({super.key});

  @override
  State<OnlineProductWithAPI> createState() => _OnlineProductWithAPIState();
}

class _OnlineProductWithAPIState extends State<OnlineProductWithAPI> {
  final TextEditingController _controller = TextEditingController();
  List<ProductModel> list = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller.text = "1";
    loadData();
  }

  loadData() async{
    setState(() {
      isLoading = true;
    });
    list = await ProductService.getProductList(int.parse(_controller.text));
    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            TextFormField(
              controller: _controller,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),

            Expanded(
              child: isLoading == false?
                ListView.separated(
                  itemCount: list.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text("${list[index].title}"),
                        Text("${list[index].price}"),
                        Image.network("${list[index].image}")
                      ],
                    );
                  },
                )
                  :
                const Center(
                  child: CircularProgressIndicator(),
                ),
            )
          ],
        ),
      ),
    );
  }
}
