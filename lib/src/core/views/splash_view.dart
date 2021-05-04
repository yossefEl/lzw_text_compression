import 'package:flutter/material.dart';
import 'package:lzw_compression_app/src/core/components/base_card.dart';
import 'package:lzw_compression_app/src/core/components/option_card.dart';
import 'package:lzw_compression_app/src/core/primary_button.dart';

import 'compress_view.dart';
import 'decompress_view.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8f9fa),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Accueil",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: ListView(padding: EdgeInsets.all(16), children: [
          Row(
            children: [
              Expanded(
                  child: PrimaryButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => CompressView()));
                },
                child: HomeOptionCard(
                  iconData: Icons.compress,
                  title: 'Compresser',
                ),
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: PrimaryButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => DecompressView()));
                },
                child: HomeOptionCard(
                  iconData: Icons.open_in_full,
                  title: 'Décompresser',
                ),
              )),
            ],
          ),
          PrimaryCard(
              showShadow: true,
              child: Column(
                children: [
                  Text(
                    "Algorithme LZW?",
                    style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                      '''LZW (pour Lempel-Ziv-Welch) est un algorithme de compression de données sans perte. Il s'agit d'une amélioration de l'algorithme LZ78 inventé par Abraham Lempel et Jacob Ziv en 1978. LZW fut créé en 1984 par Terry Welch, d'où son nom.

L'algorithme LZW avait été breveté par la société Unisys[1] (un brevet logiciel valable uniquement aux États-Unis). Il a été utilisé dans les modem]]s (norme V42 bis) et est encore utilisé dans les formats d'image numérique GIF ou TIFF et les fichiers audio MOD.

L’algorithme est conçu pour être rapide à coder, mais n’est la plupart du temps pas optimal car il effectue une analyse limitée des données à compresser.''')
                ],
              ))
        ]),
      ),
    );
  }
}
