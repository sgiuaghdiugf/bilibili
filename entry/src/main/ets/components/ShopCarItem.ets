import { Commodity } from '../Class/Commodity'

@Component
export struct ShopCarItem {
  private item: Commodity

  build() {
    Row() {
      Image(this.item.images[0])
        .width(100)
        .height(100)
        .fillColor(Color.Red)
      Column({ space: 5 }) {
        Text(this.item.detailName)
          .fontSize(12)
          .lineHeight(20)
          .width('100%')
        Row() {
          Column() {
            Text(`全款￥${this.item.price}`)
              .fontSize(12)
              .fontColor('#60656B')
              .width('100%')
            Row() {
              Text('订金￥')
                .fontSize(12)
                .fontColor($r('app.color.pink'))
              Text(`${this.item.price * 0.15}`)
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor($r('app.color.pink'))
                .margin({ right: 5 })
            }
            .margin({ top: 10 })
            .width('100%')
          }
          .width('60%')

          Column() {
            Text("限购5件")
              .fontSize(10)
              .fontColor($r('app.color.pink'))
              .width('100%')
              .textAlign(TextAlign.End)
            Row() {
              Row() {
                Image($r('app.media.shop_car_sub')).width(10)
                  .fillColor('#C0C0C0')
              }
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#E7E7E7')
              .width(20)
              .height(20)
              .borderRadius(20)

              Text("1")
                .fontSize(14)
                .margin({ left: 10, right: 10 })

              Row() {
                Image($r('app.media.shop_car_add')).width(10)
              }
              .justifyContent(FlexAlign.Center)
              .backgroundColor('#FFFFFF')
              .border({ width: 1, color: '#DADADA' })
              .width(20)
              .height(20)
              .borderRadius(20)
            }
            .margin({ top: 10 })
            .justifyContent(FlexAlign.End)
            .width('100%')
          }
          .padding({ left: 10 })
          .width('40%')
          .alignItems(HorizontalAlign.End)
        }
        .width('100%')
        .margin({ top: 10 })
      }
      .padding({ left: 5 })
      .width('60%')
    }
    .width('100%')
    .padding({ bottom: 10 })
    .backgroundColor(Color.White)
    .margin({ bottom: 10 })
    .borderRadius(10)
    .width('100%')

  }
}