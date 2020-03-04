import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var _formKey = GlobalKey<FormState>();

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
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      //Do Something(API)
      print("Name is: ${this.name}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: nameCtrl,
              decoration: InputDecoration(labelText: "Enter Name"),
              autovalidate: true,
              validator: (String value) {
                if (value.trim().length == 0) return ("Name Is Required");
                return value;
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
                if (value.length < 11) return ("Phone number must be 11 digit");
                return value;
              },
              onSaved: (value) {
                this.phone = value;
              },
            ),
            TextFormField(
              controller: addressCtrl,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "Email Address"),
              validator: (value) {
                if (!EmailValidator.validate(value, true))
                  return ("Email Address is Required");
                return value;
              },
              onSaved: (value) {
                this.address = value;
              },
            ),
            StreamBuilder<QuerySnapshot>(
              stream: Firestore.instance.collection("BloodGroup").snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  CircularProgressIndicator();
                } else {
                  List<DropdownMenuItem> bloodGroupItem = [];
                  for (int i = 0; i < snapshot.data.documents.length; i++) {
                    DocumentSnapshot snap = snapshot.data.documents[i];
                    bloodGroupItem.add(
                      DropdownMenuItem(
                        child: Text(
                          snap.documentID,
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                        value: "${snap.documentID}",
                      ),
                    );
                  }
                }
                return;
              },
            ),
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
        ),
      ),
    );
  }
}
