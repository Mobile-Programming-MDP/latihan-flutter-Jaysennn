import 'package:flutter/material.dart';
import 'package:wisata_candi/detail_screen.dart';
import '../models/candi.dart';

class ItemCard extends StatelessWidget {
  //TODO1 : Deklarasikan variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;
  const ItemCard({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    //TODO6 : Implementasi routing ke detail screen

    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => DetailScreen(candi: candi)
          )
        );
      },
      child: Card(
        //TODO2 : Tetapkan parameter shape, margin, dan elevation dari Cari
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(4),
        elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO3 : Image Widget
          Expanded(
            //TODO7 : Implementasi Hero Animation
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //TODO4 : Text
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: Text(candi.name,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
          //TODO5 : Text
          Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: Text(candi.type,style: TextStyle(fontSize: 12),),
          )
        ],
      ),
      ),
    );
  }
}