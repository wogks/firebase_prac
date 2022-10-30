import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final _controller = TextEditingController();
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
      floatingActionButton: FloatingActionButton(onPressed: () {
        
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
    return Column(
      children: [
        const Text('No Image'),
        TextField(
          decoration: InputDecoration(hintText: '내용을 입력하세요'),
          controller: _controller,
        )
      ],
    );
  }
}
