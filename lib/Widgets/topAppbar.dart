import 'package:flutter/material.dart';

class topAppbar extends StatelessWidget {
  const topAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        Container(
          height: 39,
          width: 144,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/logo_discover.png'))),
        ),
        const Icon(
          Icons.search,
          color: Colors.black,
        )
      ],
    );
  }
}
