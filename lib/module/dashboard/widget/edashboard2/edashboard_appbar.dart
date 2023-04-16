import 'package:edashboard2/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EDashboardAppBar extends StatelessWidget implements PreferredSize {
  const EDashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(
            Icons.people,
            color: '#AAAAAA'.toColor(),
          ),
        )
      ],
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 0.0,
      leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset('assets/images/logo.png')),
      title: Text(
        "Scheme Store",
        style: GoogleFonts.roboto(
            color: '#455154'.toColor(),
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  Widget get child => this;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
