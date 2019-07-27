import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {

  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          margin: listSlidePosition.value * 4,
          title: 'Estudar Flutter',
          subTitle: 'Curso Udemy',
          image: AssetImage('images/profile.jpg'),
        ),
        ListData(
          margin: listSlidePosition.value * 3,
          title: 'Estudar Ingles',
          subTitle: 'Cambridge',
          image: AssetImage('images/profile.jpg'),
        ),
        ListData(
          margin: listSlidePosition.value * 2,
          title: 'Treinar',
          subTitle: 'Academia',
          image: AssetImage('images/profile.jpg'),
        ),
        ListData(
          margin: listSlidePosition.value * 1,
          title: 'Assistir Seriado',
          subTitle: 'Netflix',
          image: AssetImage('images/profile.jpg'),
        ),
        ListData(
          margin: listSlidePosition.value * 0,
          title: 'Ler livro',
          subTitle: 'The old man and the sea',
          image: AssetImage('images/profile.jpg'),
        ),
      ],
    );
  }
}
