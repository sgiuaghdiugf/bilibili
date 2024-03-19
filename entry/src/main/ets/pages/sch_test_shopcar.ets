import { ShopContent } from '../components/ShopContent';
import {Commodity} from '../Class/Commodity'
import {buildShop} from '../components/ShopContent'
@Entry
@Component
struct NestedScroll {
  @State listPosition: number = 0; // 0代表滚动到List顶部，1代表中间值，2代表滚动到List底部。
  private arr: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  private scrollerForScroll: Scroller = new Scroller()
  private scrollerForList: Scroller = new Scroller()
  private commodities: Commodity[] = [
    new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_06'),
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      ],
      108, 115,
      [$r('app.media.R'), $r('app.media.fuRyu')],
      ["五等分的新娘", "FuRyu"],
      5,
      2115,
      "520cm",
      'ABS',
      "1400日元"
    ),


    new Commodity("机动战士高达SEE",
      "万代HG不朽正义高达拼装模型 【机动战士高达SEE FREEDOM】",
      "正义高达榜No.1",
      [
      $r('app.media.commidity02_01'),
      $r('app.media.commidity02_02'),
      $r('app.media.commidity02_03'),
      $r('app.media.commidity02_04'),
      $r('app.media.commidity02_05'),
      ],
      126, 135,
      [$r('app.media.gaoda'), $r('app.media.wandai')],
      ["高达系列", "万代"],
      5,
      199,
      "高约12.5cm",
      'PS;ABS',
      "2600日元"
    ),


    new Commodity("火影忍者漩涡鸣人",
      "商家万代 SHF 火影忍者 漩涡鸣人N ARUTOP99 成品模型",
      "漩涡鸣人榜No.10",
      [
      $r('app.media.commidity03_01'),
      $r('app.media.commidity03_03'),
      $r('app.media.commidity03_05'),
      $r('app.media.commidity03_02'),
      $r('app.media.commidity03_04'),
      ],
      164, 175,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      26,
      "高约14.5cm",
      'PVC;ABS',
      "3600日元"
    ),


    new Commodity("机动战士高达SEED",
      "商家万代HG飞升自由高达拼装模 型【机动战士高达SEED】",
      "自由高达榜No.1",
      [
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_03'),
      $r('app.media.commidity04_04'),
      $r('app.media.commidity04_05'),
      ],
      138, 158,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      259,
      "高约13cm",
      'PS',
      "2400日元"
    ),


    new Commodity("世嘉LUMINASTA",
      "世嘉LUMINASTA名侦探柯南赤井 秀一椅子Ver.景品手办再版",
      "赤井秀一榜No.7",
      [
      $r('app.media.commidity05_01'),
      $r('app.media.commidity05_02'),
      $r('app.media.commidity05_03'),
      $r('app.media.commidity05_04'),
      $r('app.media.commidity05_05'),
      $r('app.media.commidity05_06'),
      ],
      94.29, 105,
      [$r('app.media.shijia'), $r('app.media.shijia')],
      ["名侦探柯南", "世家"],
      5,
      25,
      "高约130mm",
      'PVC',
      "2400日元"
    ),


    new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_06'),
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      ],
      108, 115,
      [$r('app.media.R'), $r('app.media.fuRyu')],
      ["五等分的新娘", "FuRyu"],
      5,
      2115,
      "520cm",
      'ABS',
      "1400日元"
    ),


    new Commodity("机动战士高达SEE",
      "万代HG不朽正义高达拼装模型 【机动战士高达SEE FREEDOM】",
      "正义高达榜No.1",
      [
      $r('app.media.commidity02_01'),
      $r('app.media.commidity02_02'),
      $r('app.media.commidity02_03'),
      $r('app.media.commidity02_04'),
      $r('app.media.commidity02_05'),
      ],
      126, 135,
      [$r('app.media.gaoda'), $r('app.media.wandai')],
      ["高达系列", "万代"],
      5,
      199,
      "高约12.5cm",
      'PS;ABS',
      "2600日元"
    ),


    new Commodity("火影忍者漩涡鸣人",
      "商家万代 SHF 火影忍者 漩涡鸣人N ARUTOP99 成品模型",
      "漩涡鸣人榜No.10",
      [
      $r('app.media.commidity03_01'),
      $r('app.media.commidity03_03'),
      $r('app.media.commidity03_05'),
      $r('app.media.commidity03_02'),
      $r('app.media.commidity03_04'),
      ],
      164, 175,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      26,
      "高约14.5cm",
      'PVC;ABS',
      "3600日元"
    ),


    new Commodity("机动战士高达SEED",
      "商家万代HG飞升自由高达拼装模 型【机动战士高达SEED】",
      "自由高达榜No.1",
      [
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_03'),
      $r('app.media.commidity04_04'),
      $r('app.media.commidity04_05'),
      ],
      138, 158,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      259,
      "高约13cm",
      'PS',
      "2400日元"
    ),


    new Commodity("世嘉LUMINASTA",
      "世嘉LUMINASTA名侦探柯南赤井 秀一椅子Ver.景品手办再版",
      "赤井秀一榜No.7",
      [
      $r('app.media.commidity05_01'),
      $r('app.media.commidity05_02'),
      $r('app.media.commidity05_03'),
      $r('app.media.commidity05_04'),
      $r('app.media.commidity05_05'),
      $r('app.media.commidity05_06'),
      ],
      94.29, 105,
      [$r('app.media.shijia'), $r('app.media.shijia')],
      ["名侦探柯南", "世家"],
      5,
      25,
      "高约130mm",
      'PVC',
      "2400日元"
    ),
    new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_06'),
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      ],
      108, 115,
      [$r('app.media.R'), $r('app.media.fuRyu')],
      ["五等分的新娘", "FuRyu"],
      5,
      2115,
      "520cm",
      'ABS',
      "1400日元"
    ),


    new Commodity("机动战士高达SEE",
      "万代HG不朽正义高达拼装模型 【机动战士高达SEE FREEDOM】",
      "正义高达榜No.1",
      [
      $r('app.media.commidity02_01'),
      $r('app.media.commidity02_02'),
      $r('app.media.commidity02_03'),
      $r('app.media.commidity02_04'),
      $r('app.media.commidity02_05'),
      ],
      126, 135,
      [$r('app.media.gaoda'), $r('app.media.wandai')],
      ["高达系列", "万代"],
      5,
      199,
      "高约12.5cm",
      'PS;ABS',
      "2600日元"
    ),


    new Commodity("火影忍者漩涡鸣人",
      "商家万代 SHF 火影忍者 漩涡鸣人N ARUTOP99 成品模型",
      "漩涡鸣人榜No.10",
      [
      $r('app.media.commidity03_01'),
      $r('app.media.commidity03_03'),
      $r('app.media.commidity03_05'),
      $r('app.media.commidity03_02'),
      $r('app.media.commidity03_04'),
      ],
      164, 175,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      26,
      "高约14.5cm",
      'PVC;ABS',
      "3600日元"
    ),


    new Commodity("机动战士高达SEED",
      "商家万代HG飞升自由高达拼装模 型【机动战士高达SEED】",
      "自由高达榜No.1",
      [
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_03'),
      $r('app.media.commidity04_04'),
      $r('app.media.commidity04_05'),
      ],
      138, 158,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      259,
      "高约13cm",
      'PS',
      "2400日元"
    ),


    new Commodity("世嘉LUMINASTA",
      "世嘉LUMINASTA名侦探柯南赤井 秀一椅子Ver.景品手办再版",
      "赤井秀一榜No.7",
      [
      $r('app.media.commidity05_01'),
      $r('app.media.commidity05_02'),
      $r('app.media.commidity05_03'),
      $r('app.media.commidity05_04'),
      $r('app.media.commidity05_05'),
      $r('app.media.commidity05_06'),
      ],
      94.29, 105,
      [$r('app.media.shijia'), $r('app.media.shijia')],
      ["名侦探柯南", "世家"],
      5,
      25,
      "高约130mm",
      'PVC',
      "2400日元"
    ),
    new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_06'),
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      ],
      108, 115,
      [$r('app.media.R'), $r('app.media.fuRyu')],
      ["五等分的新娘", "FuRyu"],
      5,
      2115,
      "520cm",
      'ABS',
      "1400日元"
    ),


    new Commodity("机动战士高达SEE",
      "万代HG不朽正义高达拼装模型 【机动战士高达SEE FREEDOM】",
      "正义高达榜No.1",
      [
      $r('app.media.commidity02_01'),
      $r('app.media.commidity02_02'),
      $r('app.media.commidity02_03'),
      $r('app.media.commidity02_04'),
      $r('app.media.commidity02_05'),
      ],
      126, 135,
      [$r('app.media.gaoda'), $r('app.media.wandai')],
      ["高达系列", "万代"],
      5,
      199,
      "高约12.5cm",
      'PS;ABS',
      "2600日元"
    ),


    new Commodity("火影忍者漩涡鸣人",
      "商家万代 SHF 火影忍者 漩涡鸣人N ARUTOP99 成品模型",
      "漩涡鸣人榜No.10",
      [
      $r('app.media.commidity03_01'),
      $r('app.media.commidity03_03'),
      $r('app.media.commidity03_05'),
      $r('app.media.commidity03_02'),
      $r('app.media.commidity03_04'),
      ],
      164, 175,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      26,
      "高约14.5cm",
      'PVC;ABS',
      "3600日元"
    ),


    new Commodity("机动战士高达SEED",
      "商家万代HG飞升自由高达拼装模 型【机动战士高达SEED】",
      "自由高达榜No.1",
      [
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_03'),
      $r('app.media.commidity04_04'),
      $r('app.media.commidity04_05'),
      ],
      138, 158,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      259,
      "高约13cm",
      'PS',
      "2400日元"
    ),


    new Commodity("世嘉LUMINASTA",
      "世嘉LUMINASTA名侦探柯南赤井 秀一椅子Ver.景品手办再版",
      "赤井秀一榜No.7",
      [
      $r('app.media.commidity05_01'),
      $r('app.media.commidity05_02'),
      $r('app.media.commidity05_03'),
      $r('app.media.commidity05_04'),
      $r('app.media.commidity05_05'),
      $r('app.media.commidity05_06'),
      ],
      94.29, 105,
      [$r('app.media.shijia'), $r('app.media.shijia')],
      ["名侦探柯南", "世家"],
      5,
      25,
      "高约130mm",
      'PVC',
      "2400日元"
    ),


  ]
  build() {
    Column(){
      Flex(){
        Scroll(this.scrollerForScroll){



          GridRow(
            {
              gutter: { y: 10,x:10},
              columns: 2,
            }
          ) {
            ForEach(
              this.commodities,
              (item: Commodity) => {
                GridCol() {
                  buildShop(item)
                }
              }
            )

          }
          .width('100%')
        }
        .backgroundColor('#dce2e1')
        .width('100%')
        .height('100%')
      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height('100%')
  }
}