import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Expanded(
                child: Text(
                  'Artists',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'View More',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.amber,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 108,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://musicstation.kapook.com/files_music2008/picture/0/3453.jpg')),
                  ),
                  const Text(
                    'Potato',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk-Bsxgr5gnAj-LAPcowmLLNx2BhIZpHvyxg&usqp=CAU')),
                  ),
                  const Text(
                    '25 Hours',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://s.isanook.com/jo/0/rp/r/w700/ya0xa0m1w0/aHR0cDovL2ltYWdlLmpvb3guY29tL0pPT1hjb3Zlci8wLzgxMDMwNTc3NDQwYjg0ZjQvMTAwMC5qcGc=.jpg')),
                  ),
                  const Text(
                    'Clash',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg')),
                  ),
                  const Text(
                    'Body Slam',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1d/01/27/1d0127cf-1233-3f43-337b-f77f1dcffc55/2294.jpg/400x400bb.jpg')),
                  ),
                  const Text(
                    'Silly Fools',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/th/2/2e/%E0%B8%9B%E0%B8%81%E0%B8%AD%E0%B8%B1%E0%B8%A5%E0%B8%9A%E0%B8%B1%E0%B9%89%E0%B8%A1-Seven-BigAss.jpg')),
                  ),
                  const Text(
                    'Big Ass',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Expanded(
                child: Text(
                  'Recently Songs',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'View More',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.amber,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Expanded(
                child: Text(
                  'Songs',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  'View More',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.amber,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 108,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://musicstation.kapook.com/files_music2008/picture/0/3453.jpg')),
                  ),
                  const Text(
                    'Potato',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk-Bsxgr5gnAj-LAPcowmLLNx2BhIZpHvyxg&usqp=CAU')),
                  ),
                  const Text(
                    '25 Hours',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://s.isanook.com/jo/0/rp/r/w700/ya0xa0m1w0/aHR0cDovL2ltYWdlLmpvb3guY29tL0pPT1hjb3Zlci8wLzgxMDMwNTc3NDQwYjg0ZjQvMTAwMC5qcGc=.jpg')),
                  ),
                  const Text(
                    'Clash',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg')),
                  ),
                  const Text(
                    'Body Slam',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1d/01/27/1d0127cf-1233-3f43-337b-f77f1dcffc55/2294.jpg/400x400bb.jpg')),
                  ),
                  const Text(
                    'Silly Fools',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blue,
                    padding:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    width: 80,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/th/2/2e/%E0%B8%9B%E0%B8%81%E0%B8%AD%E0%B8%B1%E0%B8%A5%E0%B8%9A%E0%B8%B1%E0%B9%89%E0%B8%A1-Seven-BigAss.jpg')),
                  ),
                  const Text(
                    'Big Ass',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Future<String> readJson() async {
    return await rootBundle.loadString('assets/songs.json');
  }
}
