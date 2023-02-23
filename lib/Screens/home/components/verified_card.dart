import 'package:flutter/material.dart';

class VerifiedPropertyCard extends StatelessWidget {
  const VerifiedPropertyCard({
    required this.ownerName,
    super.key,
    required this.landLocation,
    required this.status,
    required this.price,
    required this.landSize,
  });
  final String ownerName;
  final String landLocation;
  final int status;
  final double price;
  final String landSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
      child: Container(
        height: 140,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 195, 192, 192),
              blurRadius: 10,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Owner Name: $ownerName",
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text("Land Location: $landLocation",
                      style: const TextStyle(color: Colors.black)),
                  Row(
                    children: [
                      const Text("Status: ",
                          style: TextStyle(color: Colors.black)),
                      status == 1
                          ? const Icon(Icons.verified, color: Colors.green)
                          : const Icon(Icons.dangerous,
                              color: Color.fromARGB(255, 170, 164, 14))
                    ],
                  ),
                  Text("Land Price: ₹$price per sqm",
                      style: const TextStyle(color: Colors.black)),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Icon(
                    Icons.location_on,
                    color: Color.fromARGB(255, 251, 1, 1),
                    size: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$landSize sqm",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
