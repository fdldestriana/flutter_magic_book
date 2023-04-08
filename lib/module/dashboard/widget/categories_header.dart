import 'package:edashboard2/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesHeader extends StatelessWidget {
  const CategoriesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 61,
      width: 360,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Categories',
            style: GoogleFonts.roboto(
                color: '#455154'.toColor(),
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          TextButton(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'See',
                        style: GoogleFonts.roboto(
                            color: '#455154'.toColor(),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'All',
                        style: GoogleFonts.roboto(
                            color: '#455154'.toColor(),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: '#455154'.toColor(),
                    size: 12,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
