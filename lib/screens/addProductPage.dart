import 'package:cheapkart/providers/productObject.dart';
import 'package:cheapkart/providers/productProvider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  FocusNode _node;
  FocusNode _price;
  List type = ['Poor', 'Fair', 'Well-Maintained'];
  int _selectedIndex = 0;
  var _newProduct =
      ProductData(id: null, name: '', description: '', price: 0, quality: '');
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _node = FocusNode();
    _price = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _node.dispose();
    _price.dispose();
    super.dispose();
  }

  List<Widget> chip() {
    List<Widget> chips = [];

    for (int i = 0; i < type.length; i++) {
      ChoiceChip choicechip = ChoiceChip(
        selected: _selectedIndex == i ? true : false,
        label: Text(
          type[i],
          style: TextStyle(
              color: _selectedIndex == i ? Colors.white : Colors.black),
        ),
        selectedColor: Theme.of(context).accentColor,
        onSelected: (bool selectedval) {
          setState(() {
            _selectedIndex = i;
          });
        },
      );

      chips.add(choicechip);
      chips.add(SizedBox(
        width: 5,
      ));
    }

    return chips;
  }

  void _submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      print(_newProduct.name);
      Provider.of<ProductProvider>(context).addProduct(_newProduct);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final drawerName = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(drawerName),
        centerTitle: true,
        elevation: 0,
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8755,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter all the details necessary for adding a product',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Product Name',
                              border: OutlineInputBorder(),
                            ),
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value.isEmpty)
                                return 'This cannot be Empty';
                              else
                                return null;
                            },
                            onSaved: (value) => _newProduct = ProductData(
                                name: value,
                                description: _newProduct.description,
                                price: _newProduct.price,
                                quality: _newProduct.quality),
                            onFieldSubmitted: (_) {
                              FocusScope.of(context).requestFocus(_node);
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Description',
                              border: OutlineInputBorder(),
                            ),
                            focusNode: _node,
                            validator: (value) {
                              if (value.isEmpty)
                                return 'This cannot be Empty';
                              else if (value.length < 5)
                                return 'Description too short';
                              else
                                return null;
                            },
                            onSaved: (value) => _newProduct = ProductData(
                                name: _newProduct.name,
                                description: value,
                                price: _newProduct.price,
                                quality: _newProduct.quality),
                            textInputAction: TextInputAction.newline,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Price',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value.isEmpty)
                                return 'This cannot be Empty';
                              else if (value.length <= 0)
                                return 'Enter a valid price';
                              else
                                return null;
                            },
                            onSaved: (value) => _newProduct = ProductData(
                                name: _newProduct.name,
                                description: _newProduct.description,
                                price: int.parse(value),
                                quality: _newProduct.quality),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Select the condition of your product',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey)),
                          Row(
                            children: chip(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RaisedButton(
                                color: Theme.of(context).primaryColor,
                                onPressed: () {
                                  _newProduct = ProductData(
                                    name: _newProduct.name,
                                    description: _newProduct.description,
                                    price: _newProduct.price,
                                    quality: type[_selectedIndex],
                                  );
                                  _submit();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'ADD',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
