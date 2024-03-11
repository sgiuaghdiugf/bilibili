import router from '@ohos.router'
import {buildItem,Item} from '../components/BottomBar'

@Extend(Text) function TextStyleTitle() {
  .margin({ left: 10 })
  .fontSize(13)
  .fontWeight(FontWeight.Bold)
}

@Extend(Text) function TextStyleAssociateTitle() {
  .fontSize(12)
  .fontColor('#98999b')
}

@Extend(Image) function ImageStyle() {
  .fillColor('#1a1b1d')
  .margin({ right: 10 })
  .width(10)
}

@Component
export struct MyWalletPageHead {
  icon: Resource;
  page_name: string;
  icon_msg: Resource;

  build() {
    Row() {
      Image(this.icon)
        .onClick(()=>{
          router.back()
        })
        .margin({ left: 10 })
        .width(17)

      Text(this.page_name)
        .fontColor('#2a2b2d')

      Image(this.icon_msg)
        .fillColor('#626365')
        .margin({ right: 10 })
        .width(20)
    }
    .height(70)
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
  }
}

@Component
export struct MyWalletElement {
  build() {
    Column({ space: 10 }) {
      Row() {
        Text('我的B币')
          .TextStyleTitle()
        Row() {
          Text('消费/充值记录')
            .TextStyleAssociateTitle()
          Image($r('app.media.qianwang'))
            .ImageStyle()
        }
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)


      Column() {
        Row() {
          Text('0')
            .fontWeight(FontWeight.Bold)
            .fontColor('#ffffff')
            .fontSize(25)

          Button('充值')
            .height(28)
            .width(90)
            .fontSize(14)
            .fontColor('#ef8aaf')
            .type(ButtonType.Capsule)
            .backgroundColor('#ffffff')
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        Row() {
          Row({ space: 3 }) {
            Text('B币')
              .fontSize(12)
              .fontColor('#fec9dd')
            Text('0')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .fontColor('#ffffff')
          }
          .margin({ right: 10 })

          Divider()
            .vertical(true)
            .height(10)
            .color('#f2a9c6')

          Row({ space: 3 }) {
            Text('B币券')
              .fontSize(12)
              .fontColor('#fec9dd')

            Text('0')
              .fontSize(14)
              .fontWeight(FontWeight.Bold)
              .fontColor('#ffffff')
          }
          .margin({ left: 10 })
        }
        .margin({ top: 10 })
        .width('100%')

        Divider()
          .strokeWidth(0.8)
          .margin({ top: 15, bottom: 10 })
          .color('#f2a9c6')
          .width('100%')


        Row() {
          Text('可购买课堂、装扮、付费电影、充电等服务')
            .fontColor('#fdc0d7')
            .fontSize(12)
        }
        .margin({ top: 10 })
        .width('100%')
      }
      .padding(20)
      .borderRadius(14)
      .width('95%')
      .height(140)
      .backgroundColor('#fd77a5')
    }
    .width('95%')
  }
}


@Component
export struct MyWalletElement2{
  build(){
    Column(){
      Row() {
        Text('我的收入')
          .TextStyleTitle()
        Row() {
          Text('转入/提现记录')
            .TextStyleAssociateTitle()
          Image($r('app.media.qianwang'))
            .ImageStyle()
        }
      }
      .margin({top:25})
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row(){
        Column(){
          Row(){
            Text('0')
              .margin({right:8})
              .fontWeight(FontWeight.Medium)
              .fontSize(30)
            Text('贝壳')
              .fontColor('#bcbbc0')
              .fontSize(12)
          }
          .margin({bottom:5})

          Row(){
            Text('提现')
              .fontSize(11)
              .fontColor('#da7da4')
            Image($r('app.media.qianwang'))
              .width(10)
              .fillColor('#dca0b7')
          }
        }
        .width('50%')

        Divider()
        .strokeWidth(0.7)
        .vertical(true)
        .height(50)


        Column(){
          Row(){
            Text('0.00')
              .margin({right:7})
              .fontWeight(FontWeight.Medium)
              .fontSize(30)
            Text('福利红包')
              .fontColor('#bcbbc0')
              .fontSize(12)
          }
          .margin({bottom:5})

          Row(){
            Text('提现')
              .fontSize(11)
              .fontColor('#da7da4')
            Image($r('app.media.qianwang'))
              .fillColor('#dca0b7')
              .width(10)
          }
        }
        .width('50%')
      }
      .margin({top:15})
      .borderRadius(15)
      .width('95%')
      .height(95)
      .backgroundColor('#ffffff')
    }
    .width('95%')
    .height(150)
  }
}

@Component
export struct MyWalletElement3{
  build(){
    Column(){
      Row() {
        Text('卡券包')
          .TextStyleTitle()
      }
      .margin({top:25})
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row(){
        buildItem(new Item($r('app.media.sch_manhuakaquanbao'),'漫画卡券包'),
          70,70,35,12
        )

        buildItem(new Item($r('app.media.sch_guanyingquan'),'观影券'),
          70,70,44,12
        )

        buildItem(new Item($r('app.media.sch_youhuiquan'),'优惠券'),
          70,70,40,12
        )
      }
      .justifyContent(FlexAlign.SpaceAround)
      .margin({top:15})
      .borderRadius(15)
      .width('95%')
      .height(95)
      .backgroundColor('#ffffff')


    }
    .width('95%')
  }
}

@Component
export struct MyWalletElement4{
  build(){
    Column(){
      Row() {
        Text('联名卡福利')
          .TextStyleTitle()
      }
      .margin({top:25})
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row(){
        Image($r('app.media.sch_lianmingkafuli'))
          .width('50%')
      }
      .margin({top:15})
      .borderRadius(15)
      .width('95%')
      .height(95)


    }
    .width('95%')
  }
}
