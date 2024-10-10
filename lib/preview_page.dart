import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myapp/repository.dart';

class PreviewPage extends StatefulWidget {
  final String imageUrl;
  final int imageId;
  const PreviewPage({
    super.key,
    required this.imageId,
    required this.imageUrl,
  });

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  Repository repo = Repository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(widget.imageUrl),
                ),
              ),
            ),
          ),
          Row(
            children: [            
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  repo.sethomescreen(
                      imageUrl: widget.imageUrl,
                      imageId: widget.imageId,
                      context: context);
                },
                child: const Text("Set as Home Screen"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  repo.setlockscreen(
                      imageUrl: widget.imageUrl,
                      imageId: widget.imageId,
                      context: context);
                },
                child: const Text("Set as Lock Screen"),
              ),
            ],
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: const Color.fromRGBO(230, 10, 10, .5),
      //   foregroundColor: const Color.fromRGBO(255, 255, 255, .8),
      //   shape: const CircleBorder(),
      //   onPressed: () {
      //     repo.downloadImage(
      //         imageUrl: widget.imageUrl,
      //         imageId: widget.imageId,
      //         context: context);
      //   },
      //   child: const Icon(Icons.download),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
