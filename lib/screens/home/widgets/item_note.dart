import 'package:flutter/material.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),

      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://pics.craiyon.com/2023-09-16/debc4d6fc55242f381f9a9215e912246.webp'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  'Month',
                  style: const TextStyle(color: Colors.white)
                  ),
                  const SizedBox(height:4),
                Text(
                  'Day',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )
                  ),
                  const SizedBox(height:4),
                Text(
                  'Year',
                  style: TextStyle(color: Colors.white),
                  )
              ],
            )
          ),
          const SizedBox(width: 15), 
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    'Book title',
                    style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'Time',
                      style: Theme.of(context).textTheme.bodySmall,
                      )
                  ],
                ),
                Text(
                  'Book Description',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    height: 1.5,
                  ),)
              ],
            )
          )
        ],
      )
    );
  }
}