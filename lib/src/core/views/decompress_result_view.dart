import 'package:flutter/material.dart';
import 'package:lzw_compression_app/src/core/components/base_card.dart';


class DecompressResultView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: BackButton(
            color: Colors.white,
          ),
          title: Text("Résultat de la décompression",
              style: TextStyle(color: Colors.white))),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: [
          PrimaryCard(
              showShadow: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Le dictionnaire entré:",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan)),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                           
                          },
                          icon: Icon(Icons.copy, color: Colors.cyan))
                    ],
                  ),
                 
                  SizedBox(height: 8),
                  Text(
                    "Dictionnaire :",
                  ),
                ],
              )),
          PrimaryCard(
              showShadow: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Message extrait",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan)),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                           
                          },
                          icon: Icon(Icons.copy, color: Colors.cyan))
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Votre message:",
                  ),
                ],
              )),
          SizedBox(
            height: 8,
          ),
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.cyan),
                child: Icon(Icons.arrow_back, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
