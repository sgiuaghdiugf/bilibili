class Commodity {
  name: string
  tagColor: string
  tagName: string
  tagFontColor: string
  image: ResourceStr
  price: number
  countPrice: number

  constructor(name, bgColor, tagFontColor, tagName, image, price, countPrice) {
    this.tagName = tagName
    this.name = name
    this.tagColor = bgColor
    this.tagFontColor = tagFontColor
    this.image = image
    this.price = price
    this.countPrice = countPrice
  }
}

@Component
export struct ShopContent {
  private commodities: Commodity[] = [
    new Commodity("余量预售 FuRyuy 泡面压", "#FFF3EA", "#FF7F0D", "中野三玖榜No.3", $r('app.media.shop_content_01'), 108, 115),
    new Commodity("余量预售 FuRyuy 泡面压", "#FFF3EA", "#FF7F0D", "中野三玖榜No.3", $r('app.media.shop_content_01'), 108, 115),
    new Commodity("余量预售 FuRyuy 泡面压", "#FFF3EA", "#FF7F0D", "中野三玖榜No.3", $r('app.media.shop_content_01'), 108, 115),
    new Commodity("余量预售 FuRyuy 泡面压", "#FFF3EA", "#FF7F0D", "中野三玖榜No.3", $r('app.media.shop_content_01'), 108, 115),
    new Commodity("余量预售 FuRyuy 泡面压", "#FFF3EA", "#FF7F0D", "中野三玖榜No.3", $r('app.media.shop_content_01'), 108, 115),
    new Commodity("余量预售 FuRyuy 泡面压", "#FFF3EA", "#FF7F0D", "中野三玖榜No.3", $r('app.media.shop_content_01'), 108, 115),
    new Commodity("余量预售 FuRyuy 泡面压", "#FFF3EA", "#FF7F0D", "中野三玖榜No.3", $r('app.media.shop_content_01'), 108, 115),
    new Commodity("余量预售 FuRyuy 泡面压", "#FFF3EA", "#FF7F0D", "中野三玖榜No.3", $r('app.media.shop_content_01'), 108, 115),
  ]

  build() {
    Row() {
      List() {
        ForEach(this.commodities, (item: Commodity) => {
          ListItem() {
            Column() {
              Image(item.image)
                .width(160)

              Column({ space: 5 }) {
                Text(item.name)
                  .fontSize(12)
                  // .border({ width: 1, color: Color.Black })
                  .width('100%')
                Row() {
                  Text(item.tagName)
                    .fontSize(10)
                    .fontColor(item.tagFontColor)
                    .backgroundColor(item.tagColor)
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