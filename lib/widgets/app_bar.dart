import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  // ignore: use_super_parameters
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.fromLTRB(70, 8, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Discover',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge),
                  Text('Chicago, II',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displaySmall),
                ],
              ),
            ),
            Container(
              width: 52,
              height: 52,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.tune,
                    color: Theme.of(context).primaryColor,
                    size: 30,
                  ),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
