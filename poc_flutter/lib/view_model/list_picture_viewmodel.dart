import 'package:poc_flutter/model/picsum_model.dart';
import 'package:poc_flutter/services/services.dart';

class ListPictureViewModel{
  List<PictureViewModel>? pictures;

  Future<void> fetchPictures() async {
    final apiResult = await Service().fetchPicturesApi();
    this.pictures = apiResult.map((e) => PictureViewModel(e)).toList();
  }
}


class PictureViewModel {
  final PicSumModel? picSumModel;

  PictureViewModel(this.picSumModel);
}