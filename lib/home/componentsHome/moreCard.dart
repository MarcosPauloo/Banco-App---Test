import 'package:flutter/material.dart';

class MoreCard extends StatelessWidget {
  const MoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        _showForm(context);
      },
      child: Container(
        width: widthDevice * 0.12,
        height: heightDevice * 0.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Icon(
            Icons.add,
            color: Color(0xfff399aa),
          ),
        ),
      ),
    );
  }
}

_showForm(BuildContext context) {
  showDialog(
    context: context,
    builder: ((BuildContext context) {
      return AlertDialog(
        title: Text('Insira os dados'),
        content: _formCard(),
        actions: [
          TextButton(
              onPressed: () {
                print('1');
              },
              child: const Text("Topado")),
          TextButton(
              onPressed: () {
                print('2');
              },
              child: const Text("Topado 2")),
        ],
      );
    }),
  );
}

_formCard() {
  String _cardNumber = '';
  String _cardHolderName = '';
  String _expirationDate = '';

  return Form(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Numero do cartão',
          ),
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Por favor, insira seu nome.';
            }
            return null;
          },
          onSaved: (value) {
            _cardNumber = value!;
          },
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Nome do Titular'),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Por favor, insira o nome do titular';
            }
            return null;
          },
          onSaved: (value) {
            _cardHolderName = value!;
          },
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Data de validade'),
          keyboardType: TextInputType.datetime,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Por favor, insira a data de validade';
            }
            return null;
          },
          onSaved: (newValue) {
            _expirationDate = newValue!;
          },
        ),
      ],
    ),
  );
}
