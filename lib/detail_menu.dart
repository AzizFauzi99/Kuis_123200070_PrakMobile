import 'package:flutter/material.dart';
import 'package:kuis_123200070/disease_data.dart';

class DetailMenu extends StatelessWidget {
  final Diseases diseases;
  const DetailMenu({Key? key, required this.diseases}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Disease'),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Favorite'),
                        content:
                            const Text('Disease has been added to favorite'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    });
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              subtitle: Image.network(diseases.imgUrls),
            ),
            ListTile(
              title: const Text('Disease Name'),
              subtitle: Text(diseases.name),
            ),
            ListTile(
              title: const Text('Plant Name'),
              subtitle: Text(diseases.plantName),
            ),
            ListTile(
              title: const Text('Ciri-Ciri'),
              subtitle: Text(diseases.nutshell[0] +
                  ", " +
                  diseases.nutshell[1] +
                  ", " +
                  diseases.nutshell[2]),
            ),
            ListTile(
              title: const Text('ID'),
              subtitle: Text(diseases.id),
            ),
            ListTile(
              title: const Text('Symptom'),
              subtitle: Text(diseases.symptom),
            ),
            // click button to look image from image url
            ListTile(
              subtitle: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Image.network(diseases.imgUrls),
                    ),
                  );
                },
                child: const Text('Click to see image'),
              ),
            ),
            
          ],
        ));
  }
}
