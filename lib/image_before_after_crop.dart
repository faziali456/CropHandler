import 'package:flutter/material.dart';
import 'crop.dart';
import 'cropped_image.dart';
import 'image_cropper.dart';

class ImageBeforeAfterCrop extends StatefulWidget {
  final ImageProvider image;
  ImageBeforeAfterCrop(this.image);

  @override
  _ImageBeforeAfterCropState createState() => _ImageBeforeAfterCropState();
}

class _ImageBeforeAfterCropState extends State<ImageBeforeAfterCrop> {
  ImageCropDetails _cropDetails;
  final cropKey2 = GlobalKey<CropState>();
  String _sample = "images/cat.jpg";

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(child: Crop.asset(_sample, key: cropKey2),),
        ],
      );

  void onImageCrop(ImageCropDetails cropDetails) => setState(() => _cropDetails = cropDetails);
}
