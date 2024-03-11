class Commodity {
  name: string
  tagColor: string
  image: ResourceStr
  price: number
  countPrice

  constructor(name, bgColor, image, price, countPrice) {
    this.name = name
    this.tagColor = bgColor
    this.image = image
    this.price = price
    this.countPrice = countPrice
  }
}


class Type {
  image: ResourceStr
  title: string

  constructor(image, title) {
    this.image = image
    this.title = title
  }
}

@Entry
@Component
struct MumberShopPage {
  private types: Type[] = [
    new Type($r('app.media.shop_01'), '手办雕像'),
    new Type($r('app.media.shop_02'), '盲盒'),
    new Type($r('app.media.shop_03'), '漫展展出'),
    new Type($r('app.media.shop_04'), '新人福利'),
    new Type($r('app.media.shop_05'), '景品'),
    new Type($r('app.media.shop_06'), '谷子'),

    new Type($r('app.media.shop_01'), '手办雕像'),
    new Type($r('app.media.shop_02'), '盲盒'),
    new Type($r('app.media.shop_03'), '漫展展出'),
    new Type($r('app.media.shop_04'), '新人福利'),
    new Type($r('app.media.shop_05'), '景品'),
    new Type($r('app.media.shop_06'), '谷子'),
    new Type($r('app.media.shop_01'), '手办雕像'),
    new Type($r('app.media.shop_02'), '盲盒'),
    new Type($r('app.media.shop_03'), '漫展展出'),
    new Type($r('app.media.shop_04'), '新人福利'),
    new Type($r('app.media.shop_05'), '景品'),
    new Type($r('app.media.shop_06'), '谷子'),
  ]
  private tyeps2: Type[] = [
    new Type($r('app.media.shop_07'), "死亡搁浅"),
    new Type($r('app.media.shop_08'), "死亡搁浅"),
    new Type($r('app.media.shop_09'), "死亡搁浅")
  ]
  private commoditys: Commodity[] = []

  build() {
    Column() {
      Row() {
        Row() {
          Text("会员购")
            .fontSize(16)
            .fontWeight(FontWeight.Bold)
          Text("内购群限时开放")
            .fontSize(14)
            .fontColor($r('app.color.pink'))
            .margin({ left: 10, right: 5 })
          Image($r('app.media.right_arrow_2'))
            .fillColor($r('app.color.pink'))
            .width(13)
        }

        Row() {
          Image($r('app.media.shop_car'))
            .width(20)
          Image($r('app.media.Avatar'))
            .width(20)
            .margin({ left: 20 })
        }
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Row() {
          Image($r('app.media.coin'))
            .width(20)
            .margin({ right: 3 })
          Text("签到\n有礼")
            .fontSize(10)
        }
        .width(50)
        .height(30)
        .backgroundColor('#F5F6F6')
        .borderRadius(5)

        Row() {
          Row() {
            Image($r('app.media.MaterialSymbolsSearch'))
              .width(20)
              .fillColor($r('app.color.pink'))
            Text("耳机")
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .margin({ left: 10 })

          }

          Image($r('app.media.MaterialSymbolsCameraEnhanceOutline'))
            .width(20)
        }
        .height(30)
        .border({ width: 0.5, color: $r('app.color.pink') })
        .borderRadius(20)
        .padding({ left: 10, right: 10 })
        .width('70%')
        .justifyContent(FlexAlign.SpaceBetween)

        Column() {
          Image($r('app.media.ALL'))
            .width(25)
            .margin({ bottom: -8 })
          Text("分类")
            .fontWeight(FontWeight.Bold)
            .fontSize(12)
            .fontColor('#606669')
        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .border({ width: 1, color: Color.Black })
      .height(50)
      .width('100%')


      List({ space: 15 }) {
        ForEach(this.types, (type: Type) => {
          ListItem() {
            Column() {
              Image(type.image)
                .width(30)
              Text(type.title)
                .fontSize(12)
            }
          }
        })
      }
      .listDirection(Axis.Horizontal)
      .padding({ top: 10, bottom: 10 })
      .border({ width: 1, color: Color.Black })
      .height(70)
      .width('100%')

      Row() {
        ForEach(
          this.tyeps2, (type: Type, index) => {
          if (index == 1) {
            Image(type.image)
              .width(100)
          }
          else {
            Image(type.image)
              .width(110)
          }
        }
        )
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .border({ width: 1, color: Color.Black })
      .width('100%')

    }
    .border({ width: 1, color: Color.Black })
    .width('100%')
    .padding(10)

  }
}