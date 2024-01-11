import 'package:flutter/material.dart';


class GenderContainer extends StatefulWidget {
 final String title;
 final IconData icons;
 final Color color;
  const GenderContainer({super.key,required this.title,required this.icons,required this.color});

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
                width: 180,
               
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: widget.color
                ),
               
                child:  Center(
                  child: Column(
                    children: [
                       Icon(widget.icons,size: 100,color: Colors.white,),
                       Text(widget.title,style: const TextStyle(fontSize: 35,color: Colors.white),
                       )
                    ],
                  ),
                )
    );
             
  }
}