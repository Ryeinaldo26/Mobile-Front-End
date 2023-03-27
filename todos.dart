import 'package:flutter/material.dart';

class Latihan extends StatefulWidget {
  const Latihan({super.key});

  @override
  State<Latihan> createState() => _LatihanState();
}

class _LatihanState extends State<Latihan> {
  String dropdownvalue = 'Routine';
  
  var items = ['Routine','Non Routine'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'), centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.list_alt_rounded),
                  Padding(padding: EdgeInsets.fromLTRB(15.0, 1.0, 1.0, 1.0)),
                  Text('Kegiatan', style: TextStyle(fontWeight: FontWeight.bold),),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: 'Judul Kegiatan'),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.sort),
                  Padding(padding: EdgeInsets.fromLTRB(15.0, 1.0, 1.0, 1.0)),
                  Text('Keterangan', style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(15, 40, 15, 40),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: 'Tambah Keterangan'),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(children: const [
                      Icon(Icons.date_range),
                      Padding(padding: EdgeInsets.fromLTRB(15.0, 1.0, 1.0, 1.0)),
                      Text('Tanggal Mulai', style: TextStyle(fontWeight: FontWeight.bold),),
                    ]),
                  ),
                  Expanded(
                    child: Row(children: const [
                      Icon(Icons.date_range_outlined),
                      Padding(padding: EdgeInsets.fromLTRB(15.0, 1.0, 1.0, 1.0)),
                      Text('Tanggal Selesai', style: TextStyle(fontWeight: FontWeight.bold),)
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: TextField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          hintText: '28-03-2022'),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  // ignore: prefer_const_constructors
                  Expanded(
                    // ignore: prefer_const_constructors
                    child: TextField(
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          hintText: '28-03-2022'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.category),
                      const Padding(padding: EdgeInsets.fromLTRB(15.0, 1.0, 1.0, 1.0)),
                      const Text('Kategori', style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  DropdownButton(value: dropdownvalue ,icon: const Icon(Icons.keyboard_arrow_down), items: items.map((String items) { return DropdownMenuItem(value: items,child: Text(items));}).toList(), onChanged: (String? newValue) {setState(() {
                    dropdownvalue = newValue!;                    
                  });}),
                    
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      child: const Text(
                        'Batal',
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Simpan',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
