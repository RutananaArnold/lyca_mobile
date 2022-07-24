import 'package:flutter/material.dart';

class TermsAndConditions extends StatefulWidget {
  TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tempor aliquet risus a efficitur. Donec quis est odio. Integer dui nisl, rhoncus a turpis at, posuere hendrerit urna. Quisque consequat, risus nec ultricies volutpat, eros felis euismod nunc, in blandit ipsum nunc eget sapien. Proin cursus justo ipsum, nec dictum diam venenatis ac. Sed vel eros eros. Donec vulputate sapien sit amet leo pharetra semper. Nulla facilisi. Quisque facilisis dapibus est. Nullam dapibus commodo massa, eu malesuada eros venenatis et. Maecenas condimentum turpis ut ex consectetur, quis consequat velit dapibus. Fusce scelerisque imperdiet ante eu maximus. Duis ante mi, rhoncus ut est sed, euismod rhoncus neque. Cras nec orci neque. Etiam mattis, orci non sodales vulputate, urna dui feugiat lectus, nec auctor dolor dui et diam. Quisque lectus massa, molestie nec iaculis mattis, fringilla sit amet sem. In luctus erat nisl. Vestibulum non tellus eget metus pellentesque varius eu eu erat. Aenean vel tellus orci. Morbi dolor ante, vulputate at convallis sagittis, consectetur at dolor. In a fermentum urna. Cras eget purus ut leo elementum efficitur quis ac eros."),
          )
        ],
      ),
    );
  }
}
