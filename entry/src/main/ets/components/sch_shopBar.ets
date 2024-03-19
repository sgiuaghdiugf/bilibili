import router from '@ohos.router';
import {Commodity} from '../Class/Commodity'
import {shopCarArray} from '../Class/ShopCarArrayClass'
@Entry
@Component
export struct ShopBar{
  shop_car_item:Commodity;
  // @State count:number=0;
  build(){
    Row() {
      Image($r('app.media.sch_kefu'))
        .width(28)

      Badge(
        {
          count:shopCarArray.count,
          position:BadgePosition.RightTop,
          style:{
            badgeSize:20,
            badgeColor:'#ff7099',
          }
        }
      ){
        Image($r('app.media.sch_gouwuche'))
          .width(30)
      }
      .onClick(()=>{
        router.pushUrl(
          { url: "pages/MemberShopPage"},
          router.RouterMode.Single,
          (err) => {
            console.log(err.message)
          }
        )
      })
      .width(40)
      .height(30)

      Row({space:5}){
        Text('加购物车')
          .fontWeight(FontWeight.Medium)
          .fontSize(15)
          .fontColor('#d15b7e')
      }
      .onClick(()=>{
        shopCarArray.pushCommodity(this.shop_car_item)
        shopCarArray.count++
      })
      .justifyContent(FlexAlign.Center)
      .width(120)
      .height(40)
      .border({ width: 2, color: '#ef92b4', radius: 21 })

      Column({space:1}){
        Text('领券并支付定金')
          .fontWeight(FontWeight.Medium)
          .fontSize(14)
          .fontColor('#fdfaf7')

        Text('￥16.35')
          .fontWeight(FontWeight.Medium)
          .fontSize(13)
          .fontColor('#fdfaf7')
      }
      .backgroundColor('#f96e95')
      .justifyContent(FlexAlign.Center)
      .width(130)
      .height(40)
      .borderRadius(20)
    }
    .justifyContent(FlexAlign.SpaceEvenly)
    .height(60)
    .width('100%')
  }

}