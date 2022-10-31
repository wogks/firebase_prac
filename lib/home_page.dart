import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Instagram Clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Instagram에 오신 것을 환영합니다.',
                  style: TextStyle(fontSize: 24.0),
                ),
                const Padding(padding: EdgeInsets.all(8)),
                const Text('사진과 동영상을 보려면 팔로우 하세요'),
                const Padding(padding: EdgeInsets.all(16)),
                SizedBox(
                  width: 260,
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(4)),
                          const SizedBox(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://newsimg.sedaily.com/2020/08/17/1Z6M5EVULI_1.jpg'),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.all(8)),
                          const Text(
                            'Email',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text('이름'),
                          const Padding(padding: EdgeInsets.all(8)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRO-38b73cq42mE_iwaLHuI0XfLNR6SfBzEg&usqp=CAU',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(1)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                  'https://newsimg.sedaily.com/2020/07/13/1Z5AEI3XL9_1.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(1)),
                              SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network(
                                    'https://featuring-score-web.s3.amazonaws.com/media/uploads/2021/07/10/_1.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ],
                          ),
                          const Padding(padding: EdgeInsets.all(4)),
                          const Text('Facebook 친구'),
                          const Padding(padding: EdgeInsets.all(4)),
                          ElevatedButton(
                              onPressed: () {}, child: const Text('팔로우')),
                          const Padding(padding: EdgeInsets.all(4)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
