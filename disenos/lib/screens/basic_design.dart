import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(image: AssetImage('assets/landscape.jpg')),
        Title(),
        ButtonSection(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
              'asdfasdf sdf asdf sdf asdf    sdfasdfasdfasdfasdfasdf  dfasfasdfasdfasdfasdfasdf sdfasdfasdfasdfsadf sfgerthrthw erg erget hgreteg q qer twer tw erq rt qewtw ert.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'data',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'data2',
                style: TextStyle(color: Colors.black26),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.phone, text: 'CALL'),
          CustomButton(icon: Icons.near_me_sharp, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final icon;
  final text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blueAccent,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blueAccent),
        )
      ],
    );
  }
}
