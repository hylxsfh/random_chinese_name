import 'package:flutter_test/flutter_test.dart';

import 'package:random_chinese_name/random_chinese_name.dart';

void main() {
  test('取人名', () {
    expect(generateNames().length, all.length);
    expect(generateNames(count: 50).length, 50);
    expect(generateNames(author: Author.JinYong).length, jinYong.length);
    expect(generateNames(author: Author.JinYong, count: 40).length, 40);
    expect(generateNames(novel: Novel.BaiYuLaoHu).length, 56);
    expect(generateNames(novel: Novel.BaiYuLaoHu, count: 10).length, 10);
  });
}
