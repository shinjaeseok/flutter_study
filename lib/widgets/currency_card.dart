import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget{
  final String name, code, amount;
  final IconData icon;
  final double order;
  final bool isInverted;
  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({super.key, required this.name, required this.code, required this.amount, required this.order, required this.icon, required this.isInverted});

  @override
  Widget build(BuildContext context) {

    return Transform.translate(
      offset: Offset(0, order),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(amount, style: TextStyle(color: isInverted ? _blackColor : Colors.white, fontSize: 20,),),
                      SizedBox(width: 5,),
                      Text(code, style: TextStyle(color: isInverted ? _blackColor : Colors.white.withOpacity(0.8), fontSize: 20, ),),
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: Offset(-5,12),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}