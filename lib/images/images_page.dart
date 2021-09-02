import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/contact-person.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Paisagem',
                    style: TextStyle(
                      backgroundColor: Colors.white.withOpacity(0.6),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Image.asset(
                  'assets/images/contact-person.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Image.network(
                  'https://emalta.com.br/wp-content/uploads/2020/08/ganhar-dinheiro-fazendo-apps.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
