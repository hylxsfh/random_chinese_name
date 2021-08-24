# random_chinese_name

生成金庸、古龙小说人物姓名列表.

## Usage


    import 'package:random_chinese_name/random_chinese_name.dart';

    void main() {
        //从小说‘白马啸西风’中顺序取50个人名
        Iterable l1 = generateNames(count: 50, novel: Novel.BaiMaXiaoXiFeng);
        print(l1);

        //从金庸所有小说人物中‘随机’取10个人名
        l1 = generateNames(count: 10, author: Author.JinYong, isRandom: true);
        print(l1);
    }

