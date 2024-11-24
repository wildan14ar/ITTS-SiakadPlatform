import 'package:flutter/material.dart';

void main() {
  runApp(const SiakadITTSApp());
}

class SiakadITTSApp extends StatelessWidget {
  const SiakadITTSApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIAKAD ITTS',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Roboto',
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIAKAD ITTS'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'data:image/png;base64,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',
                height: 120,
                width: 120,
              )
              const SizedBox(height: 24),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Selamat Datang',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Sistem Informasi Akademik ITTS',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FormPage()),
                          );
                        },
                        icon: const Icon(Icons.login, size: 20),
                        label: const Text('Masuk ke Form'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _nimController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  bool _isDarkMode = false;

  // Tambahkan variabel untuk menyimpan data
  String? _nim;
  String? _nama;

  @override
  Widget build(BuildContext context) {
    final textColor = _isDarkMode ? Colors.white : Colors.black87;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Input Mahasiswa'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        color: _isDarkMode ? Colors.grey[900] : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Isi Data Mahasiswa',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _nimController,
                style: TextStyle(color: textColor),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.credit_card,
                      color: _isDarkMode ? Colors.white70 : Colors.grey),
                  labelText: 'NIM',
                  labelStyle: TextStyle(color: textColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _isDarkMode ? Colors.white70 : Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _namaController,
                style: TextStyle(color: textColor),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,
                      color: _isDarkMode ? Colors.white70 : Colors.grey),
                  labelText: 'Nama',
                  labelStyle: TextStyle(color: textColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: _isDarkMode ? Colors.white70 : Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _nim = _nimController.text;
                    _nama = _namaController.text;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Data Tersimpan: $_nim - $_nama'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                child: const Text('Simpan Data'),
              ),
              const SizedBox(height: 24),
              // Tampilkan data yang disimpan dalam sebuah Card
              if (_nim != null && _nama != null)
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  color: _isDarkMode ? Colors.grey[800] : Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Data Mahasiswa',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'NIM: $_nim',
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                        Text(
                          'Nama: $_nama',
                          style: TextStyle(fontSize: 16, color: textColor),
                        ),
                      ],
                    ),
                  ),
                ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mode Gelap',
                    style: TextStyle(color: textColor),
                  ),
                  Switch(
                    value: _isDarkMode,
                    onChanged: (value) {
                      setState(() {
                        _isDarkMode = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
