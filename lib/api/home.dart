import 'package:shop/constants/index.dart';
import 'package:shop/utils/DioRequest.dart';
import 'package:shop/viewmodals/home.dart';

Future<List<BannerItem>> getBannerListAPI() async {
  return ((await dioRequest.get(HttpConstants.BANNER_LIST)) as List).map((item) {
    return BannerItem.fromJson(item as Map<String, dynamic>);
  }).toList();
} 