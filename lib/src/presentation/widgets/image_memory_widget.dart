import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageMemoryWidget extends StatefulWidget {
  final Future<Uint8List?>? futureBytes;
  final Uint8List? bytes;
  final double height;
  final double width;
  final BoxFit? fit;
  final CustomClipper<RRect>? clipper;
  final BorderRadius? borderRadius;

  const ImageMemoryWidget({
    Key? key,
    this.height = 120,
    this.width = 120,
    this.fit = BoxFit.scaleDown,
    this.bytes,
    this.futureBytes,
    this.clipper,
    this.borderRadius,
  }) : super(key: key);

  @override
  _ImageMemoryWidgetState createState() => _ImageMemoryWidgetState();
}

class _ImageMemoryWidgetState extends State<ImageMemoryWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.futureBytes != null) {
      return FutureBuilder(
        future: widget.futureBytes,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return Image.memory(
              snapshot.data!,
              width: widget.width,
              height: widget.height,
              fit: widget.fit,
            );
          }

          return SizedBox(
            width: widget.width,
            height: widget.height,
          );
        },
      );
    } else if (widget.bytes != null) {
      return Image.memory(
        widget.bytes!,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
      );
    }
    return SizedBox(
      width: widget.width,
      height: widget.height,
    );
  }
}
