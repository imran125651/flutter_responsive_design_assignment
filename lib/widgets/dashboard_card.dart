import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  DashboardCard({
    super.key,
    required this.imagePath
  });
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.pink.shade300,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Icon(Icons.timelapse),
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        imagePath,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildSingleSection("Sales", "54545415132"),
                    _buildSingleSection("Volume", "54545415132"),
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }

  Column _buildSingleSection(String title, String number) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        Text(number)
      ],
    );
  }




}