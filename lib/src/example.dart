import 'dart:math';

import 'package:random_chinese_name/random_chinese_name.dart';

///示例
void main(List<String> args) {
  Iterable l1 = generateNames(count: 50, novel: Novel.BaiMaXiaoXiFeng);
  print(l1);
  l1 = generateNames(count: 10, author: Author.JinYong, isRandom: true);
  print(l1);

}
