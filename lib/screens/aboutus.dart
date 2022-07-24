import 'package:flutter/material.dart';

import '../widgets/tab_label.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5.0,
            ),
            TabLabel(
              label: 'Who We Are',
              color: Colors.orange,
              align: Alignment.centerLeft,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
              child: const Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit est veritatis, laudantium id nemo possimus obcaecati necessitatibus exercitationem eveniet, maxime, molestiae reiciendis cumque minima inventore perferendis dicta fuga facere sapiente.Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit est veritatis, laudantium id nemo possimus obcaecati necessitatibus exercitationem eveniet, maxime, molestiae reiciendis cumque minima inventore perferendis dicta fuga facere sapiente.',
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TabLabel(
              label: 'T&Cs',
              color: Colors.orange,
              align: Alignment.centerLeft,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
              child: const Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit est veritatis, laudantium id nemo possimus obcaecati necessitatibus exercitationem eveniet, maxime, molestiae reiciendis cumque minima inventore perferendis dicta fuga facere sapiente.Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit est veritatis, laudantium id nemo possimus obcaecati necessitatibus exercitationem eveniet, maxime, molestiae reiciendis cumque minima inventore perferendis dicta fuga facere sapiente.Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit est veritatis, laudantium id nemo possimus obcaecati necessitatibus exercitationem eveniet, maxime, molestiae reiciendis cumque minima inventore perferendis dicta fuga facere sapiente.Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit est veritatis, laudantium id nemo possimus obcaecati necessitatibus exercitationem eveniet, maxime, molestiae reiciendis cumque minima inventore perferendis dicta fuga facere sapiente',
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TabLabel(
              label: 'Developer',
              color: Colors.orange,
              align: Alignment.centerLeft,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
              child: const Text(
                'Kilo-Tech Ltd',
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TabLabel(
              label: 'Version',
              color: Colors.orange,
              align: Alignment.centerLeft,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'v1.0.0.1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
