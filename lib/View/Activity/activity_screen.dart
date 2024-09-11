import 'package:fitness_app/View/Activity/staggered_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HorizontalCalendar(
            //   date: DateTime.now(),
            //   textColor: Colors.black45,
            //   backgroundColor: Colors.white,
            //   selectedColor: Colors.blue,
            //   showMonth: true,
            //   onDateSelected: (date) {},
            // ),

            Text(
              "Today Report",
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 33, 38, 1)),
            ),

            // Flexible(
            //   child: GridView.custom(
            //     gridDelegate: SliverStairedGridDelegate(
            //       crossAxisSpacing: 8,
            //       mainAxisSpacing: 14,
            //       startCrossAxisDirectionReversed: false,
            //       tileBottomSpace: 0,
            //       pattern: [
            //         StairedGridTile(0.3, 0.9),
            //         StairedGridTile(0.7, 1),
            //         StairedGridTile(0.3, 0.9),
            //         StairedGridTile(0.3, 0.9),
            //       ],
            //     ),
            //     childrenDelegate: SliverChildBuilderDelegate(
            //       childCount: staggeredContainer.length,
            //       (context, index) => staggeredContainer[index],
            //     ),
            //   ),

            //   // child: MasonryGridView.builder(
            //   //   crossAxisSpacing: 10,
            //   //   mainAxisSpacing: 10,
            //   //   itemCount: staggeredContainer.length,
            //   //   cacheExtent: 0.1,
            //   //   gridDelegate:
            //   //       const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            //   //     crossAxisCount: 2,
            //   //   ),
            //   //   itemBuilder: (context, idx) {
            //   //     return staggeredContainer[idx];
            //   //   },
            //   // ),
            // )
          ],
        ),
      ),
    );
  }
}
