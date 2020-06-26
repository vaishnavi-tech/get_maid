import 'package:flutter/material.dart';
//class _AuthPagState extends State<AuthPag>
class ProfileScreen extends StatelessWidget {
  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.5),
          BlendMode.dstATop),
      image: AssetImage('assets/background.jpg'),
    );
}
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Text(
          'Enter Your Name',
        textAlign: TextAlign.center,

      ),
   // return Center(child: Text('profile'),
    );
  }
}
