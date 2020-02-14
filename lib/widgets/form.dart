import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var formKey = GlobalKey<FormState>();

  var nameCtrl = TextEditingController();
  var phoneCtrl = TextEditingController();
  var addressCtrl = TextEditingController();

  var name, phone, address, bloodGroup;

  void handleReset() {
    nameCtrl.clear();
    phoneCtrl.clear();
    addressCtrl.clear();
  }

  void handleSubmit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      //Do Something(API)
      print("Name is: ${this.name}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: nameCtrl,
                decoration: InputDecoration(labelText: "Enter Name"),
                autovalidate: true,
                validator: (String value) {
                  if (value.trim().length == 0) return ("Name Is Required");
                },
                onSaved: (value) {
                  this.name = value;
                },
              ),
              TextFormField(
                controller: phoneCtrl,
                keyboardType: TextInputType.number,
                maxLength: 11,
                decoration: InputDecoration(labelText: "Phone Number"),
                validator: (String value) {
                  if (value.length < 11)
                    return ("Phone number must be 11 digit");
                },
                onSaved: (value) {
                  this.phone = value;
                },
              ),
              TextFormField(
                controller: addressCtrl,
                decoration: InputDecoration(labelText: "Email Address"),
                validator: (value) {
                  if (value.length == 0) return ("Email Address is Required");
                },
                onSaved: (value) {
                  this.address = value;
                },
              ),
              DropdownButtonFormField(
                  validator: (value) {
                    if (value.length == 0) {
                      return ("Blood Group is required");
                    }
                  },
                  hint: Text("Select Your Blood Group"),
                  value: this.bloodGroup,
                  onChanged: (value) {
                    setState(() {
                      this.bloodGroup = value;
                    });
                  }, 
                  items: [
                    
                    DropdownMenuItem(value: "A +ve", child: Text("A +ve")),
                    DropdownMenuItem(value: "A -ve", child: Text("A -ve")),
                    DropdownMenuItem(value: "B +ve", child: Text("B +ve")),
                    DropdownMenuItem(value: "B -ve", child: Text("B -ve")),
                    DropdownMenuItem(value: "AB +ve", child: Text("AB +ve")),
                    DropdownMenuItem(value: "AB -ve", child: Text("AB -ve")),
                    DropdownMenuItem(value: "O +ve", child: Text("O +ve")),
                    DropdownMenuItem(value: "O -ve", child: Text("O -ve"))
                  ]),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Reset"),
                    onPressed: handleReset,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  RaisedButton(
                    child: Text("Submit"),
                    onPressed: handleSubmit,
                  )
                ],
              )
            ],
          )),
    );
  }
}
