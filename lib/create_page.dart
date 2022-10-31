import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _controller = TextEditingController();
  final _picker = ImagePicker();

  File? _image;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getImage();
        },
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      // ignore: deprecated_member_use
      backwardsCompatibility: true,
      centerTitle: true,
      title: const Text(
        '새 게시물',
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send, color: Colors.black),
        ),
      ],
    );
  }

  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _image == null ? const Text('No Image') : Image.file(_image!),
          TextField(
            decoration: const InputDecoration(hintText: '내용을 입력하세요'),
            controller: _controller,
          )
        ],
      ),
    );
  }

  Future _getImage() async {
    print('클릭');
    final image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    } else {}
  }
}
