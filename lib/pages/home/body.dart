import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      color: Colors.black87,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    width: 200,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                        // Image.network(
                        //   'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg',
                        // ),
                      ),
                      title: const Text(
                        'งมงาย',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        'Body Slam',
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://musicstation.kapook.com/files_music2008/picture/0/3453.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                      title: const Text(
                        'รักแท้ดูแลไม้ได้',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        'Potato',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    width: 200,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk-Bsxgr5gnAj-LAPcowmLLNx2BhIZpHvyxg&usqp=CAU',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                      title: const Text(
                        'ถามจันทร์',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        '25 Hours',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[300],
                    ),
                    width: 200,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://s.isanook.com/jo/0/rp/r/w700/ya0xa0m1w0/aHR0cDovL2ltYWdlLmpvb3guY29tL0pPT1hjb3Zlci8wLzgxMDMwNTc3NDQwYjg0ZjQvMTAwMC5qcGc=.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                      title: const Text(
                        'เจ้าหญิงนิทรา',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      subtitle: const Text(
                        'Clash',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
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
                    'Songs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black54,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://musicstation.kapook.com/files_music2008/picture/0/3453.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Potato',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk-Bsxgr5gnAj-LAPcowmLLNx2BhIZpHvyxg&usqp=CAU',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      '25 Hours',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://s.isanook.com/jo/0/rp/r/w700/ya0xa0m1w0/aHR0cDovL2ltYWdlLmpvb3guY29tL0pPT1hjb3Zlci8wLzgxMDMwNTc3NDQwYjg0ZjQvMTAwMC5qcGc=.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Clash',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Body Slam',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1d/01/27/1d0127cf-1233-3f43-337b-f77f1dcffc55/2294.jpg/400x400bb.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Silly Fools',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://upload.wikimedia.org/wikipedia/th/2/2e/%E0%B8%9B%E0%B8%81%E0%B8%AD%E0%B8%B1%E0%B8%A5%E0%B8%9A%E0%B8%B1%E0%B9%89%E0%B8%A1-Seven-BigAss.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Big Ass',
                      style: TextStyle(
                        color: Colors.black87,
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
                    'Artists',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'See all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black54,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://musicstation.kapook.com/files_music2008/picture/0/3453.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Potato',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk-Bsxgr5gnAj-LAPcowmLLNx2BhIZpHvyxg&usqp=CAU',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      '25 Hours',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://s.isanook.com/jo/0/rp/r/w700/ya0xa0m1w0/aHR0cDovL2ltYWdlLmpvb3guY29tL0pPT1hjb3Zlci8wLzgxMDMwNTc3NDQwYjg0ZjQvMTAwMC5qcGc=.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Clash',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://s.isanook.com/jo/0/ui/484/2423305/dc6b8c0fd87d042da1c9432b4599cb20_1597220739.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Body Slam',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1d/01/27/1d0127cf-1233-3f43-337b-f77f1dcffc55/2294.jpg/400x400bb.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Silly Fools',
                      style: TextStyle(
                        color: Colors.black87,
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
                        child: CachedNetworkImage(
                          imageUrl:
                              'https://upload.wikimedia.org/wikipedia/th/2/2e/%E0%B8%9B%E0%B8%81%E0%B8%AD%E0%B8%B1%E0%B8%A5%E0%B8%9A%E0%B8%B1%E0%B9%89%E0%B8%A1-Seven-BigAss.jpg',
                          placeholder: (context, url) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/watermark.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Big Ass',
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<String> readJson() async {
    return await rootBundle.loadString('assets/songs.json');
  }
}
