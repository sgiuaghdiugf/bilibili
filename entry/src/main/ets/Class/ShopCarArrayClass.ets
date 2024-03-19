import { Commodity } from '../Class/Commodity'

export class ShopCarArray {
  public shop_car_array: Commodity[] = [];

  pushCommodity(item: Commodity) {
    this.shop_car_array.push(item)
  }

  constructor(shop_car_array) {
    this.shop_car_array = shop_car_array
  }

  Length(): number {
    return this.shop_car_array.length
  }
}

export let shopCarArray = new ShopCarArray(
  [

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
    )

  ]
)

