import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {

  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('images/background.jpg'), fit: BoxFit.cover)
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Bem Vindo',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white
              )
            ),
            Container(
              alignment: Alignment.topRight,
              height: containerGrow.value * 120,
              width: containerGrow.value * 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/profile.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.redAccent,
                ),
                height: containerGrow.value * 30,
                width: containerGrow.value * 30,
                margin: EdgeInsets.only(left: 80),
                child: Center(
                  child: Text(
                    containerGrow.value > 0.8 ? '2' : '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: containerGrow.value * 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
