import router from '@ohos.router'
import { Commodity } from '../Class/Commodity'
import { shopCarArray } from '../Class/ShopCarArrayClass'
import { ShopCarItem } from '../components/ShopCarItem'
import { ShopContent } from '../components/ShopContent'

@Entry
@Component
struct ShopCarPage {
  @State totPrice: number = 0;
  @State totCount: number = 0;
  @State selectAll: boolean = false
  @State selectAll2: boolean = false

  build() {
    Column() {
      Column() {
        Row() {
          Image($r('app.media.commodity_left_arrow'))
            .fillColor('#000000')
            .width(25)
            .onClick(() => {
              router.back()
            })
          Text(`购物车(${shopCarArray.shop_car_array.length})`)
            .fontSize(20)
          Text("管理")
            .fontSize(20)
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')
        .padding(20)
        // .layoutWeight(1)

        Column() {
          Row() {
            CheckboxGroup({ group: 'checkboxGroup' })
              .selectedColor('#007DFF')
              .onChange((itemName: CheckboxGroupResult) => {
                this.selectAll2 = !this.selectAll2
                console.info("checkbox group content" + JSON.stringify(itemName))
              })
              .selectAll(this.selectAll)

            Text("预售凑单区")

          }
          .padding({ left: 10 })
          .width('100%')

          List() {
            ForEach(
              shopCarArray.shop_car_array,
              (item: Commodity, index) => {
                ListItem() {
                  Row() {
                    Checkbox({ name: `${index}`, group: 'checkboxGroup' })
                      .selectedColor('#007DFF')
                      .onChange((value: boolean) => {
                        if (value) {
                          this.totPrice += item.price * 0.15
                          this.totCount++
                        }
                        else {
                          this.totPrice -= item.price * 0.15
                          this.totCount--
                        }
                      })
                    ShopCarItem({ item: item })
                  }
                  .width('100%')
                }
                .padding({ left: 10 })
              }
            )

            ListItem() {
              Column() {
                Row() {
                  Text("猜你喜欢")
                    .fontSize(16)
                }
                .justifyContent(FlexAlign.Center)
                .width('100%')
                .backgroundColor('#F3F4F6')
                .padding({ top: 20, bottom: 20 })

                ShopContent()
                  .layoutWeight(1)
              }
            }
            .padding({ top: 20 })
          }
          .width('100%')
          .layoutWeight(1)

        }
        .backgroundColor('#FFFFFF')
        .width('100%')
        .justifyContent(FlexAlign.Start)
        .layoutWeight(1)

        Row() {
          Row() {
            Checkbox({ group: 'checkboxGroup2' })
              .select(this.selectAll)
              .selectedColor('#007DFF')
              .onChange((value) => {
                this.selectAll = !this.selectAll
              })

            Text("全选")
              .fontSize(16)
          }

          Row() {
            Text("合计：")
              .fontSize(16)
            Text(`￥${this.totPrice.toFixed(2)}`)
              .fontSize(16)
              .fontColor($r('app.color.pink'))
              .margin({ right: 10 })

            Row() {
              Text(`结算${this.totCount}`)
                .fontWeight(FontWeight.Medium)
                .fontSize(16)
                .fontColor('#fdfaf7')
            }
            .backgroundColor('#f96e95')
            .justifyContent(FlexAlign.Center)
            .width(100)
            .height(40)
            .borderRadius(20)
          }
        }
        .padding({ left: 10, right: 10 })
        .justifyContent(FlexAlign.SpaceBetween)
        .height(60)
        .width('100%')
      }
      .backgroundColor('#F3F4F6')
      .width('100%')
    }
    .width('100%')
  }
}