import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram Clone',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Instagram에 오신 것을 환영합니다.',
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                Text('사진과 동영상을 보려면 팔로우하세요'),
                Padding(
                  padding: EdgeInsets.all(16),
                ),
                SizedBox(
                  width: 260,
                  child: Card(
                    margin: EdgeInsets.all(8),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.all(1),),
                          SizedBox(
                              width: 80,
                              height: 80,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwqVF6U-C8cNQHCtMLeCMeZa-U5CBn2Dshy29iycWZagB8X8_v'),
                                backgroundColor: Colors.transparent,
                              )),
                          Padding(
                            padding: EdgeInsets.all(8),
                          ),
                          Text(
                            '이메일 주소',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('이름'),
                          Padding(
                            padding: EdgeInsets.all(8),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                child: Image.network(
                                  'https://media.allure.com/photos/5bf1b1502ab5072a91e1853a/2:1/w_3431,h_1715,c_limit/travel%20editor%20favorite%20products.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 70,
                                height: 70,
                              ),
                              Padding(padding: EdgeInsets.all(1),),
                              SizedBox(
                                child: Image.network(
                                  'https://media.allure.com/photos/5bf1b1502ab5072a91e1853a/2:1/w_3431,h_1715,c_limit/travel%20editor%20favorite%20products.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 70,
                                height: 70,
                              ),
                              Padding(padding: EdgeInsets.all(1),),
                              SizedBox(
                                child: Image.network(
                                  'https://media.allure.com/photos/5bf1b1502ab5072a91e1853a/2:1/w_3431,h_1715,c_limit/travel%20editor%20favorite%20products.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 70,
                                height: 70,
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(4),),
                          Text('Facebook 친구'),
                          Padding(padding: EdgeInsets.all(4),),
                          RaisedButton(
                            onPressed: () {},
                            child: Text('팔로우'),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                          ),
                          Padding(padding: EdgeInsets.all(4),),
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
