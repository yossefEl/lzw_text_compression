import 'package:flutter/material.dart';
import 'package:lzw_compression_app/src/core/components/base_card.dart';
import 'decompress_result_view.dart';

class DecompressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: BackButton(
            color: Colors.white,
          ),
          title: Text("Décompression", style: TextStyle(color: Colors.white))),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: [
          PrimaryCard(
              showShadow: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Entrer le dictionnaire:",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan)),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                      maxLines: 30,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black12.withOpacity(0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ))),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          child: Text("Décompresser",
                              style: TextStyle(color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(16),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => DecompressResultView()));
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
