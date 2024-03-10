
import {Item,buildItem,BottomBar} from '../components/BottomBar'
@Builder function buildTop(){
    Row(){
      Blank()
      Row(){
        Image($r('app.media.touping'))
          .height('50%')
        Image($r('app.media.saoyisao'))
          .height('43%')
        Image($r('app.media.yifu'))
          .height('58%')
        Image($r('app.media.yejian'))
          .height('55%')
      }
      .margin({right:15})
      .justifyContent(FlexAlign.SpaceBetween)
      .width('45%')
      .height(40)
    }
  .width('100%')
  .height(40)
}
@Builder function buildHead(){
  Row(){
    Image($r('app.media.photo'))
      .margin({left:5})
      .borderRadius(50)
      .width('20%')

    Column({space:5}){
      //网名
      Row({space:10}){
        Text('长笛的骑士')
        Image($r('app.media.bianji'))
          .width('6%')
        Image($r('app.media.lv4'))
          .width('9%')
      }
      .width(275)

      Row(){
        Text('正式会员')
          .fontSize(11)
          .fontColor('#d38ca6')
          .border({color:'#d188a1',width:1})
          .borderRadius(2)

        Blank()

        Text('空间')
          .fontSize(12)
          .fontColor('#a0a0a0')

        Image($r('app.media.qianwang'))
          .margin({right:5})
          .width('5%')
      }
      .width(275)

      Row(){
        Text('B币：0.0')
          .fontSize(12)
          .fontColor('#a0a0a0')
          .margin({right:10})
        Text('硬币：557')
          .fontSize(12)
          .fontColor('#a0a0a0')
      }
      .width(275)

    }
    .width(275)
  }
  .justifyContent(FlexAlign.SpaceBetween)
  .width('100%')
  .height(100)
}
@Builder function buildActivity(){
  Row(){
    Column(){
      Row(){
        Row(){
          Text('大')
            .fontSize(10)
            .fontColor('#fcf7f8')
            .fontWeight(FontWeight.Bolder)
        }
        .margin({left:10})
        .width(18)
        .height(18)
        .justifyContent(FlexAlign.Center)
        .borderRadius(15)
        .backgroundColor('#f86595')

        Text('3.8节优惠最后一天')
          .margin({left:10})
          .fontSize(14)
          .fontWeight(FontWeight.Bolder)
          .fontColor('#f7689a')
      }
      .width('100%')

      Row(){
        Text('年卡5折，118元再增礼包')
          .fontWeight(FontWeight.Bold)
          .margin({left:10})
          .fontSize(12)
          .fontColor('#a0a0a0')

        Image($r('app.media.qianwang'))
          .fillColor('#9a8e90')
          .width('6%')
      }
      .width('100%')

    }
    .justifyContent(FlexAlign.SpaceEvenly)
    .width('50%')
    .height('100%')


    Button('会员中心')
      .margin({right:10})
      .backgroundColor('#ff679a')
      .fontSize(13)
      .height('60%')
      .type(ButtonType.Capsule)
  }
  .justifyContent(FlexAlign.SpaceBetween)
  .backgroundColor('#ffecf0')
  .borderRadius(8)
  .width('96%')
  .height(50)
}
@Builder function buildBar(){

  Row(){
    buildItem(new Item($r('app.media.lixianhuancun'),'离线缓存'),40,40,25,10,'#52a4c5')
    buildItem(new Item($r('app.media.lishijilu'),'历史记录'),40,40,25,10,'#52a4c5')
    buildItem(new Item($r('app.media.wodeshoucang'),'我的收藏'),40,40,25,10,'#52a4c5')
    buildItem(new Item($r('app.media.shaohouzaikan'),'稍后再看'),40,40,25,10,'#52a4c5')
  }
  .justifyContent(FlexAlign.SpaceAround)
  // .backgroundColor('#fefe')
  .width('100%')
  .height(70)
}
@Entry
@Component
struct MyAccountPage {
  @State message: string = 'Hello World'

  build() {
    Column(){
      buildTop()
      buildHead()

      Row(){
        Column(){
          Text('2')
            .fontSize(15)
          Text('动态')
            .fontColor('#a0a0a0')
            .fontSize(12)
        }
        .width('30%')

        Column(){
          Text('26')
            .fontSize(15)
          Text('关注')
            .fontColor('#a0a0a0')
            .fontSize(12)
        }
        .width('30%')

        Column(){
          Text('0')
            .fontSize(15)
          Text('粉丝')
            .fontColor('#a0a0a0')
            .fontSize(12)
        }
        .width('30%')

      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .height(40)

      buildActivity()

      buildBar()

      Blank()
      BottomBar()

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffffff')
  }
}