import 'package:flutter/material.dart';

import '../../../core/const/color_constants.dart';
import '../../../data/workout_data.dart';

class WorkoutCard extends StatelessWidget {
  final Color color;
  final WorkoutData workout;
  final Function() onTap;

  WorkoutCard({
    required this.color,
    required this.workout,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(
          left: 30,
          top: 10,
          right: 12,
        ),
        height: 100,
        width: screenWidth * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      workout.title,
                      style: const TextStyle(
                        color: ColorConstants.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "${workout.exercices} exercises",
                      style: const TextStyle(
                        color: ColorConstants.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    //      Text(
                    //        "${workout.minutes} minutes",
                    //       style: const TextStyle(
                    //         color: ColorConstants.white,
                    //         fontSize: 16,
                    //        fontWeight: FontWeight.w500,
                    //      ),
                    //    ),
                  ],
                ),
              ],
            ),
            Positioned(
              // run women image
              right: 0,
              bottom: 0,
              child: Image(
                image: AssetImage(workout.image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
