
import 'package:flutter/material.dart';
import 'package:prancheta_labs/routes/app_routes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _openInstagram() async {
    final Uri url = Uri.parse('https://www.instagram.com/fa_hubti');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Desculpe, Não foi possível abrir o Instagram';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Positioned.fill(
            child: Image.asset(
              'assets/images/Design_4.png',
              fit: BoxFit.cover,
            ),
          ),
          // Conteúdo sobre a imagem
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100), // Espaçamento para a imagem de fundo
                const Text(
                  'Prancheta Labs',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Atenção: Não utilizar como resultado final, apenas como consulta.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    backgroundColor: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Divider(),
                const Text(
                  'Calcular parâmetros hemograma:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.RED_CELLS);
                      },
                      child: const Text('Hemácias'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.WHITE_CELLS);
                      },
                      child: const Text('Leucócitos'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.PLATELETS);
                      },
                      child: const Text('Plaquetas'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Contagem de parâmetros para hemograma:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 8),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contar hemácias'),
                      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contar leucócitos'),
                      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contar plaquetas'),
                      style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Outros parâmetros:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Contagem de Reticulócitos'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Fator Bioquímico'),
                  style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 40)),
                ),
                const SizedBox(height: 20),
                //botão do instagram
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Desenvolvido por: FA HUB',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                    icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.purple),
                    onPressed: _openInstagram,
                    )
                  ],
                )
              ],
            ),
          )
       ], // Fecha o children do Stack
      ), // Fecha o Stack
    ); // Fecha o Scaffold
  } // Fecha o build
}