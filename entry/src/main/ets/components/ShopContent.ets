import router from '@ohos.router'
import { Commodity } from '../Class/Commodity'


@Component
export struct ShopContent {
  private commodities: Commodity[] = [
    new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      $r('app.media.commidity01_06'),
      ],
      108, 115),

     new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      $r('app.media.commidity01_06'),
      ],
      108, 115),
 new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      $r('app.media.commidity01_06'),
      ],
      108, 115),
 new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      $r('app.media.commidity01_06'),
      ],
      108, 115),
 new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      $r('app.media.commidity01_06'),
      ],
      108, 115),
 new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      $r('app.media.commidity01_06'),
      ],
      108, 115),
 new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      $r('app.media.commidity01_06'),
      ],
      108, 115),
 new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      $r('app.media.commidity01_06'),
      ],
      108, 115),
 new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      $r('app.media.commidity01_06'),
      ],
      108, 115),



  ]

  build() {
    Row() {
      List() {
        ForEach(this.commodities, (item: Commodity, index) => {
          ListItem() {
            Column() {
              Image(item.images[5])
                .width(160)

              Column({ space: 5 }) {
                Text(item.name)
                  .fontSize(12)
                    // .border({ width: 1, color: Color.Black })
                  .width('100%')
                Row() {
                  Text(item.tagName)
                    .fontSize(10)
                    .fontColor('#FF7F0D')
                    .backgroundColor('#FFF3EA')
                }
                .width('100%')

                Row() {
                  Text('新人卷后￥')
                    .fontSize(12)
                    .fontColor($r('app.color.pink'))
                  Text(`${item.countPrice}`)
                    .fontSize(14)
                    .fontWeight(FontWeight.Bold)
                    .fontColor($r('app.color.pink'))
                  Text(`￥${item.price}`)
                    .fontSize(12)
                    .fontColor('#94989E')
                }
                .width('100%')
              }
              .padding({ left: 10 })
              .width('100%')
            }
            .onClick(() => {
              router.pushUrl(
                { url: "pages/CommodityDetailPage", params: { commodity: item } },
                router.RouterMode.Single,
                (err) => {
                  console.log(err.message)
                }
              )
            })
            .padding({ bottom: 10 })
            .backgroundColor(Color.White)
            .margin({ bottom: 10 })
            .borderRadius(10)
            // .border({ width: 1, color: Color.Black })
            .width('100%')
          }
        })
      }
      .margin({ top: 10 })
      .alignListItem(ListItemAlign.Center)
      .backgroundColor('#F2F4F6')
      .lanes({ minLength: 161, maxLength: 162 })
      .layoutWeight(1)
      .width('100%')
    }
    .width('100%')
  }
}