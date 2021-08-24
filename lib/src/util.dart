import 'dart:math';

import 'gulong/bai_yu_lao_hu.dart';
import 'gulong/bi_xue_xi_yen_qiang.dart';
import 'gulong/chu_liu_xiang.dart';
import 'gulong/da_di_fei_ying.dart';
import 'gulong/da_qi_ying_xong_zhuan.dart';
import 'gulong/duo_qing_jian_ke_wu_qing_jian.dart';
import 'gulong/hu_die_liu_xing_jian.dart';
import 'gulong/huan_le_ying_xong.dart';
import 'gulong/jue_dai_shuang_jiao.dart';
import 'gulong/ming_jian_feng_liu.dart';
import 'gulong/wan_hua_xi_jian_lu.dart';
import 'gulong/wu_lin_wai_shi.dart';
import 'gulong/xiao_shi_yi_lang.dart';
import 'gulong/yuan_yue_wan_dao.dart';
import 'jinyong/bai_ma_xiao_xi_feng.dart';
import 'jinyong/bi_xue_jian.dart';
import 'jinyong/fei_hu_wai_zhuan.dart';
import 'jinyong/lian_cheng_jue.dart';
import 'jinyong/lu_ding_ji.dart';
import 'jinyong/she_diao_ying_xiong_zhuan.dart';
import 'jinyong/shen_diao_xia_lv.dart';
import 'jinyong/shu_jian_en_chou_lu.dart';
import 'jinyong/tian_long_ba_bu.dart';
import 'jinyong/xia_ke_xing.dart';
import 'jinyong/xiao_ao_jiang_hu.dart';
import 'jinyong/xue_shan_fei_hu.dart';
import 'jinyong/yi_tian_tu_long_ji.dart';
import 'jinyong/yuan_yang_dao.dart';

///小说作者
enum Author {
  ///金庸
  JinYong,

  ///古龙
  GuLong,
}

///小说名
enum Novel {
  //古龙系列
  ///白玉老虎
  BaiYuLaoHu,

  ///碧血洗银枪
  BiXueXiYenQiang,

  ///楚留香
  ChuLiuXiang,

  ///大地飞鹰
  DaDiFeiYing,

  ///大旗英雄传
  DaQiYingXongZhuan,

  ///多情剑客无情剑
  DuoQingJianKeWuQingJian,

  ///蝴蝶，流星，剑
  HuDieLiuXingJian,

  ///欢乐英雄
  HuanLeYingXong,

  ///绝代双娇
  JueDaiShuangJiao,

  ///名剑风流
  MingJianFengLiu,

  ///浣花洗剑录
  WanHuaXiJianLu,

  ///武林外史
  WuLinWaiShi,

  ///萧十一郎
  XiaoShiYiLang,

  ///圆月弯刀
  YuanYueWanDao,

  //金庸系列
  ///白马啸西风
  BaiMaXiaoXiFeng,

  ///碧血剑
  BiXueJian,

  ///飞狐外传
  FeiHuWaiZhuan,

  ///连诚诀
  LianChengJue,

  ///鹿鼎记
  LuDingJi,

  ///射雕英雄传
  SheDiaoYingXiongZhuan,

  ///神雕侠侣
  ShenDiaoXiaLv,

  ///书剑恩仇录
  ShuJianEnChouLu,

  ///天龙八部
  TianLongBaBu,

  ///侠客行
  XiaKeXing,

  ///笑傲江湖
  XiaoAoJiangHu,

  ///雪山飞狐
  XueShanFeiHu,

  ///倚天屠龙记
  YiTianTuLongJi,

  ///鸳鸯刀
  YuanYangDao,
}

///所有人名
const List<String> all = [
  ...jinYong,
  ...guLong,
];

///金庸小说所有人物
const List<String> jinYong = [
  ...baiMaXiaoXiFeng,
  ...biXueJian,
  ...feiHuWaiZhuan,
  ...lianChengJue,
  ...luDingJi,
  ...sheDiaoYingXiongZhuan,
  ...shenDiaoXiaLv,
  ...shuJianEnChouLu,
  ...tianLongBaBu,
  ...xiaKeXing,
  ...xiaoAoJiangHu,
  ...xueShanFeiHu,
  ...yiTianTuLongJi,
  ...yuanYangDao,
];

///古龙小说所有人物
const List<String> guLong = [
  ...baiYuLaoHu,
  ...biXueXiYenQiang,
  ...chuLiuXiang,
  ...daDiFeiYing,
  ...daQiYingXongZhuan,
  ...duoQingJianKeWuQingJian,
  ...huDieLiuXingJian,
  ...huanLeYingXong,
  ...jueDaiShuangJiao,
  ...mingJianFengLiu,
  ...wanHuaXiJianLu,
  ...wuLinWaiShi,
  ...xiaoShiYiLang,
  ...yuanYueWanDao,
];

///以作者名为Key的Map
const Map<Author, List<String>> authorMap = {
  Author.JinYong: jinYong,
  Author.GuLong: guLong,
};

///以小说名为Key的Map
const Map<Novel, List<String>> novelMap = {
  Novel.BaiYuLaoHu: baiYuLaoHu,
  Novel.BiXueXiYenQiang: biXueXiYenQiang,
  Novel.ChuLiuXiang: chuLiuXiang,
  Novel.DaDiFeiYing: daDiFeiYing,
  Novel.DaQiYingXongZhuan: daQiYingXongZhuan,
  Novel.DuoQingJianKeWuQingJian: duoQingJianKeWuQingJian,
  Novel.HuDieLiuXingJian: huDieLiuXingJian,
  Novel.HuanLeYingXong: huanLeYingXong,
  Novel.JueDaiShuangJiao: jueDaiShuangJiao,
  Novel.MingJianFengLiu: mingJianFengLiu,
  Novel.WanHuaXiJianLu: wanHuaXiJianLu,
  Novel.WuLinWaiShi: wuLinWaiShi,
  Novel.XiaoShiYiLang: xiaoShiYiLang,
  Novel.YuanYueWanDao: yuanYueWanDao,
  Novel.BaiMaXiaoXiFeng: baiMaXiaoXiFeng,
  Novel.BiXueJian: biXueJian,
  Novel.FeiHuWaiZhuan: feiHuWaiZhuan,
  Novel.LianChengJue: lianChengJue,
  Novel.LuDingJi: luDingJi,
  Novel.SheDiaoYingXiongZhuan: sheDiaoYingXiongZhuan,
  Novel.ShenDiaoXiaLv: shenDiaoXiaLv,
  Novel.ShuJianEnChouLu: shuJianEnChouLu,
  Novel.TianLongBaBu: tianLongBaBu,
  Novel.XiaKeXing: xiaKeXing,
  Novel.XiaoAoJiangHu: xiaoAoJiangHu,
  Novel.XueShanFeiHu: xueShanFeiHu,
  Novel.YiTianTuLongJi: yiTianTuLongJi,
  Novel.YuanYangDao: yuanYangDao,
};

///从所有人物中随机选择人名.
///
///如果忽略所有参数，表示选择所有人名.
///
///Author和Novel不能同时赋值，否则按Author选择.
///
///如果忽略count，表示选择Author或Novel下的所有人名.
///
///count必须大于0，否则抛出异常。
///因小说的人物数量有限，所以返回的数量可能小于count。
///
///isRandom表示是否从每部小说中随机选择人名。
///
///如果忽略count则isRandom参数不起作用，因为会返回所有人名。
Iterable<String> generateNames({Author? author, Novel? novel, int? count, bool isRandom = false}) {
  if (count == null && author == null && novel == null) {
    return all;
  }

  if (count == null) {
    if (author != null && novel != null) {
      return authorMap[author]!.take(authorMap[author]!.length);
    }
    if (author != null) {
      return authorMap[author]!.take(authorMap[author]!.length);
    }
    if (novel != null) {
      return novelMap[novel]!.take(novelMap[novel]!.length);
    }
    return all;
  } else {
    if (count <= 0) {
      throw '参数$count不能小于等于0';
    }
    if (isRandom) {
      if (author != null && novel != null) {
        return _getRandomFromAuthor(author, count);
      }
      if (author != null) {
        return _getRandomFromAuthor(author, count);
      }
      if (novel != null) {
        return _getRandomFromNovel(novel, count);
      }
      return _getRandomFromAll(count);
    } else {
      if (author != null && novel != null) {
        return authorMap[author]!.take(count);
      }
      if (author != null) {
        return authorMap[author]!.take(count);
      }
      if (novel != null) {
        return novelMap[novel]!.take(count);
      }
      return all.take(count);
    }

  }
}

///按小说随机返回人名
Iterable<String> _getRandomFromNovel(Novel novel, int count) {
  List<String> anotherNovel = [];
  anotherNovel.addAll(novelMap[novel]!);
  return _getRandom(count, anotherNovel);
}

///按作者随机返回人名
Iterable<String> _getRandomFromAuthor(Author author, int count) {
  List<String> anotherAuthor = [];
  anotherAuthor.addAll(authorMap[author]!);
  return _getRandom(count, anotherAuthor);
}

///从所有人物中随机返回人名
Iterable<String> _getRandomFromAll(int count) {
  List<String> anotherAll = [];
  anotherAll.addAll(all);
  return _getRandom(count, anotherAll);
}

List<String> _getRandom(int count, List<String> list) {
  List<String> result = [];
  Random random = Random();
  while (count > 0) {
    int i = random.nextInt(list.length);
    result.add(list[i]);
    list.removeAt(i);
    count--;
    //小说人物数量小于count
    if (list.length == 0) {
      return result;
    }
  }
  return result;
}
