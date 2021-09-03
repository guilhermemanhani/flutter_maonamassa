import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page1'),
                    builder: (context) => Page1(),
                  ),
                  // ModalRoute.withName('page2'),
                  (route) => route.isFirst,
                  // (route) => false, // remove todas as telas da pilha e deixa só a q chamou
                );
              },
              child: Text('page1 Via PAGE'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  '/page1',
                  ModalRoute.withName('/page2'),
                  // (route) => false,
                );
              },
              child: Text('Page3 Via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
