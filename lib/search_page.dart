import 'package:fire_prac_insta/create_page.dart';
import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.create),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreatePage(),),
          );
        },
      ),
    );
  }

  _buildBody() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
      ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return buildListItem(context, index);
      },
    );
  }

  buildListItem(BuildContext context, int index) {
    return Image.network(
      'https://w.namu.la/s/b1d5aa136d880d39a52b0b821a434db31716cf779d4d52054cb6c112ea84c0529666e0b9a3df9aac83fcab9f1822a43a5b731dae73f82cc91a27a43b32c7c8be096f8a2a5d0debcd3fc3a843d7a2f2064c18e20a03fbae9558e6c6cf99419e26153d4b5c74ce839cfcc5af7af854fce2',
      fit: BoxFit.cover,
    );
  }
}
