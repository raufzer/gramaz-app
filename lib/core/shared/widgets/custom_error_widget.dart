import 'package:flutter/material.dart';
import 'package:gramaz_app/core/config/app_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key,required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage, style: Styles.textStyle18,);
  }
}