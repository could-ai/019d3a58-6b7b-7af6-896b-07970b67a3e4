import 'package:flutter/material.dart';

void main() {
  runApp(const PalmSundayApp());
}

class PalmSundayApp extends StatelessWidget {
  const PalmSundayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Domingo de Ramos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple.shade300),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PalmSundayCardScreen(),
      },
    );
  }
}

class PalmSundayCardScreen extends StatelessWidget {
  const PalmSundayCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8F5), // Un color cálido y suave de fondo
      appBar: AppBar(
        title: const Text('Domingo de Ramos'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.brown.shade700,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Card(
              elevation: 8,
              shadowColor: Colors.brown.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 48.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Un halo suave con un corazón, inspirado en el mensaje de la imagen
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber.shade50,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber.withOpacity(0.2),
                            blurRadius: 20,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 56,
                        color: Colors.red.shade300,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Señor, ven y\nentra en mi\ncorazón',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF4A3B32), // Marrón oscuro cálido
                        height: 1.2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '❤',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF4A3B32),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      height: 1,
                      width: 100,
                      color: Colors.grey.shade300,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'DOMINGO DE RAMOS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple.shade300, // Morado por el tiempo litúrgico
                        letterSpacing: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
