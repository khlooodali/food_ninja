import 'dart:io';

import 'package:flutter/material.dart';

import 'package:food_ninja/features/uploadphoto/widgets/options.dart';

import 'package:image_picker/image_picker.dart';

import '../../core/design/customcolumn/view.dart';

class UploaPhotoView extends StatefulWidget {
  const UploaPhotoView({super.key, required this.accesstoken});
  final String accesstoken;
  @override
  State<UploaPhotoView> createState() => _UploaPhotoViewState();
}

class _UploaPhotoViewState extends State<UploaPhotoView> {
  File? _photo;
  // CroppedFile?  _cropedphoto;

  Future<void> getimage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();

    final imagepicked = await picker.pickImage(source: source);
    if (imagepicked != null) {
      setState(() {
        _photo = File(imagepicked.path);
      });
    }
    // _cropImage(_photo);
  }

  //  Future<void> _cropImage(filePath) async {
  //   final croppedImage = await ImageCropper.cropImage(
  //     sourcePath: filePath,
  //     maxWidth: 1080,
  //     maxHeight: 1080,
  //     compressFormat: ImageCompressFormat.jpg,
  //     compressQuality: 100,
  //      uiSettings: [
  //         AndroidUiSettings(
  //             toolbarTitle: 'Cropper',
  //             toolbarColor: AppLightColor.lightprimaryColor,
  //             toolbarWidgetColor: Colors.white,
  //             initAspectRatio: CropAspectRatioPreset.original,
  //             lockAspectRatio: false),
  //         IOSUiSettings(
  //           title: 'Cropper',
  //         ),]

  //   );
  //   if (croppedImage != null) {
  //     _cropedphoto = croppedImage;
  //     setState(() {});
  //   }
  // }

  Widget _buildImage() {
    if (_photo != null) {
      return Image.file(_photo!);
    } else {
      return const SizedBox(
        height: 200,
        width: 200,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Stack(
          children: [
            Image.asset('assets/images/background2.png'),
            Column(
              children: [
                const CustomCoulmnView(
                    title: 'Upload Your Photo Profile',
                    subtitle:
                        'This data will be displayed in your account profile for security'),
                OptionItem(
                  iconpath: 'assets/icons/Gallery.svg',
                  option: 'From Gallery',
                  ontap: () {
                    getimage(ImageSource.gallery);
                  },
                ),
                OptionItem(
                  iconpath: 'assets/icons/camera.svg',
                  option: 'Take Photo',
                  ontap: () {
                    getimage(ImageSource.camera);
                  },
                ),
                _buildImage(),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
