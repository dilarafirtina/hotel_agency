import 'package:flutter/material.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.iconSrc,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final Widget iconSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: press,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: iconSrc,
              ),
              if (numOfitem != 0)
                Positioned(
                  top: -3,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.5, color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        "$numOfitem",
                        style: TextStyle(
                          fontSize: 12,
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ));
  }
}
