import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {

  File _storedImage;

  Future<void> _takePicture() async {
    final imageFile = await ImagePicker.pickImage(
      source: ImageSource.gallery,
      // maxWidth: 600.0
    );

    setState((){
      _storedImage = imageFile;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100.0,
          height: 100.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey)
          ),
          child: _storedImage != null 
          ? Image.file(
            _storedImage, 
            fit: BoxFit.cover,
            width: double.infinity,
          )
          : Text('No image taken', textAlign: TextAlign.center,)
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: FlatButton.icon(
            icon: Icon(Icons.camera),
            label: Text('Take Picture'),
            textColor: Theme.of(context).primaryColor,
            onPressed: _takePicture, 
          ),
        )
      ],
    );
  }
}