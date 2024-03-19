import router from '@ohos.router'
import { Commodity } from '../Class/Commodity'
import { shopCarArray } from '../Class/ShopCarArrayClass'
import { ShopCarItem } from '../components/ShopCarItem'

@Entry
@Component
struct ShopCarPage {
  build() {
    Column() {
      Row() {
        Image($r('app.media.commodity_left_arrow'))
          .fillColor('#000000')
          .width(25)
        Text(`购物车(${shopCarArray.shop_car_array.length})`)
          .fontSize(20)
        Text("管理")
          .fontSize(20)
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .padding(20)

      Column() {
        Row() {
          CheckboxGroup({ group: 'checkboxGroup' })
            .selectedColor('#007DFF')
            .onChange((itemName: CheckboxGroupResult) => {
              console.info("checkbox group content" + JSON.stringify(itemName))
            })
          Text("预售凑单区")

        }
        .width('100%')

        List() {
          ForEach(
            shopCarArray.shop_car_array,
            (item: Commodity) => {
              ListItem() {
                Row() {
                  Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
                    .selectedColor('#007DFF')
                    .onChange((value: boolean) => {
                      console.info('Checkbox1 change is' + value)
                    })

                  ShopCarItem({ item: shopCarArray.shop_car_array[0] })
                }
                .width('100%')
              }
            }
          )
        }
        // 选项1


      }
      .width('100%')
      .justifyContent(FlexAlign.Start)

    }
    .width('100%')
  }
}