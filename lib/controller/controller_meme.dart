import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import '../model/model_meme.dart';

class MemeController extends GetxController {
  static MemeController get to => Get.isRegistered<MemeController>()
      ? Get.find()
      : Get.put(MemeController());
  List<Memes> dataMeme = [];

  void getMeme() async{
    var req = dio.Dio();
    try{
      var response = await req.get('https://api.imgflip.com/get_memes');
      if(response.statusCode == 200){
        final data = ModelMeMe.fromJson(response.data);
        dataMeme = data.data?.memes ?? [];
      }else{
        print("Data Salah ${response.statusMessage}");
      }
    }catch(e){
      print(e);
    }
  }
}
