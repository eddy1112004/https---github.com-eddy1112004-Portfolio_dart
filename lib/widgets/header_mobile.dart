import 'package:flutter/material.dart';
import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenutap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenutap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: HeaderDecor,
      child: Row(
        children: [
          SiteLogo(
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(onPressed: onMenutap, icon: const Icon(Icons.menu)),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
