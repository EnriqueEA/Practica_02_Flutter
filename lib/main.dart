import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                      ),
                      // textAlign: TextAlign.start,
                    ),
                    TextBox(),
                    TextBoxDate(),
                    SelectButton(),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        'Account',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    TextBoxEmail(),
                    TextBoxPass(),
                    TextBoxPassVrf(),
                    Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    TextBoxAddress('Address'),
                    TextBoxAddress('City'),
                    ComboBox(),
                    TextBoxPhone(),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 4),
                    margin: EdgeInsets.only(top: 20, left: 18, right: 18),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'Do',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w800,
                        fontSize: 21,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ComboBox extends StatefulWidget {
  @override
  _ComboBoxState createState() => _ComboBoxState();
}

class _ComboBoxState extends State<ComboBox> {
  List<String> _ciudades = ['Lima', 'Cusco', 'Piura', 'Tumbes'];
  String _actual = 'Lima';

  @override
  Widget build(BuildContext context) {
    print(context);
    return DropdownButton(
      value: _actual,
      items: getItems(),
      onChanged: (option) {
        setState(() {});
        _actual = option;
      },
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _ciudades
        .map((ciudad) => options.add(DropdownMenuItem(
              child: Text(ciudad),
              value: ciudad,
            )))
        .toList();

    return options;
  }
}

class TextBoxPhone extends StatelessWidget {
  const TextBoxPhone({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Phone',
            style: TextStyle(fontSize: 18),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '837.383.3678',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.phone,
          ),
        ],
      ),
    );
  }
}

class TextBoxAddress extends StatelessWidget {
  final String hint;

  const TextBoxAddress(
    this.hint, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' ${this.hint}',
            style: TextStyle(fontSize: 18),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '938 Jackson St.',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.streetAddress,
          ),
        ],
      ),
    );
  }
}

class TextBoxEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Email',
            style: TextStyle(fontSize: 18),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}

class TextBoxPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Password',
            style: TextStyle(fontSize: 18),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextBoxPassVrf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Verify Password',
            style: TextStyle(fontSize: 18),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Name',
            style: TextStyle(fontSize: 18),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextBoxDate extends StatelessWidget {
  const TextBoxDate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(children: [
            Text(
              ' Date of Birth',
              style: TextStyle(fontSize: 18),
            )
          ]),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Month',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Day',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Year',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  keyboardType: TextInputType.datetime,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SelectButton extends StatelessWidget {
  const SelectButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                ' What in your favorite animal?',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          Row(
            children: [
              TextBoxExpanded('Lion'),
              TextBoxExpanded('Tiger'),
              TextBoxExpanded('Bear'),
              TextBoxExpanded('Bull'),
              TextBoxExpanded('Serval'),
            ],
          ),
        ],
      ),
    );
  }
}

class TextBoxExpanded extends StatelessWidget {
  final String name;

  const TextBoxExpanded(this.name);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: this.name,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        readOnly: true,
      ),
    );
  }
}
