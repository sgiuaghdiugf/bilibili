import font from '@ohos.font'
import { LineItem, Item, buildItem, BottomBar } from '../components/BottomBar'

@Builder
export function buildGridItem(item: Item, column_width: number,
                              column_height: number, icon_width: number,
                              font_size: number, icon_color?: string,
                              f?: Function) {

  Column() {
    Image(item.icon)
      .fillColor(icon_color)
      .width(icon_width)
    Text(item.name)
      .fontSize(font_size)
  }
  .onClick(() => {
    f()
  })
  .justifyContent(FlexAlign.SpaceAround)
  .width(column_width)
  .height(column_height)

}

@Builder function buildTop() {
  Row() {
    Blank()
    Row() {
      Image($r('app.media.touping'))
        .height('50%')
      Image($r('app.media.saoyisao_2'))
        .height('55%')
      Image($r('app.media.yifu'))
        .height('58%')
      Image($r('app.media.yejian'))
        .height('55%')
    }
    .margin({ right: 15 })
    .justifyContent(FlexAlign.SpaceBetween)
    .width('45%')
    .height(40)
  }
  .width('100%')
  .height(40)
}

@Builder function buildHead() {
  Row() {
    Image($r('app.media.photo'))
      .margin({ left: 5 })
      .borderRadius(50)
      .width('20%')

    Column({ space: 5 }) {
      //网名
      Row({ space: 10 }) {
        Text('长笛的骑士')
        Image($r('app.media.bianji'))
          .width('6%')
        Image($r('app.media.lv4'))
          .width('9%')
      }
      .width(275)

      Row() {
        Text('正式会员')
          .fontSize(11)
          .fontColor('#d38ca6')
          .border({ color: '#d188a1', width: 1 })
          .borderRadius(2)

        Blank()

        Text('空间')
          .fontSize(12)
          .fontColor('#a0a0a0')

        Image($r('app.media.qianwang'))
          .margin({ right: 5 })
          .width('5%')
      }
      .width(275)

      Row() {
        Text('B币：0.0')
          .fontSize(12)
          .fontColor('#a0a0a0')
          .margin({ right: 10 })
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

@Builder function buildActivity() {
  Row() {
    Column() {
      Row() {
        Row() {
          Text('大')
            .fontSize(10)
            .fontColor('#fcf7f8')
            .fontWeight(FontWeight.Bolder)
        }
        .margin({ left: 10 })
        .width(18)
        .height(18)
        .justifyContent(FlexAlign.Center)
        .borderRadius(15)
        .backgroundColor('#f86595')

        Text('3.8节优惠最后一天')
          .margin({ left: 10 })
          .fontSize(14)
          .fontWeight(FontWeight.Bolder)
          .fontColor('#f7689a')
      }
      .width('100%')

      Row() {
        Text('年卡5折，118元再增礼包')
          .fontWeight(FontWeight.Bold)
          .margin({ left: 10 })
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
      .margin({ right: 10 })
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

@Builder function buildBar() {

  Row() {
    buildItem(new Item($r('app.media.lixianhuancun'), '离线缓存'), 40, 50, 25, 10, '#52a4c5')
    buildItem(new Item($r('app.media.lishijilu'), '历史记录'), 40, 50, 25, 10, '#52a4c5')
    buildItem(new Item($r('app.media.wodeshoucang'), '我的收藏'), 40, 50, 25, 10, '#52a4c5')
    buildItem(new Item($r('app.media.shaohouzaikan'), '稍后再看'), 40, 50, 25, 10, '#52a4c5')
  }
  .justifyContent(FlexAlign.SpaceAround)
  // .backgroundColor('#fefe')
  .width('100%')
  .height(90)
}

@Builder function buildActivity2() {
  Row() {
    Column() {
      Row() {
        Row() {
          Text('UP')
            .fontSize(10)
            .fontColor('#fcf7f8')
            .fontWeight(FontWeight.Bolder)
        }
        .margin({ left: 10 })
        .width(20)
        .height(15)
        .justifyContent(FlexAlign.Center)
        .borderRadius(5)
        .backgroundColor('#fb7398')

        Text('发布你的第一个视频')
          .margin({ left: 10 })
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .fontColor('#636363')
      }
      .width('100%')

      Row() {
        Text('领限定头像挂件，赢活动奖金')
          .fontWeight(FontWeight.Bold)
          .margin({ left: 10 })
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


    Row() {
      Image($r('app.media.MyAccountPage_shangchuan'))
        .width(15)

      Text('有奖发布')
        .fontColor('#ffff')
        .fontSize(12)
        .margin({ left: 5 })
    }
    .margin(10)
    .justifyContent(FlexAlign.Center)
    .borderRadius(15)
    .width(90)
    .height(30)
    .backgroundColor('#ff679a')
  }
  .linearGradient({
    direction: GradientDirection.Right,
    colors: [['#ffffff', 0.0], ['#ffecf0', 1.0]]
  })
  .border({ width: 1, color: '#e1dfe0' })
  .justifyContent(FlexAlign.SpaceBetween)
  .borderRadius(8)
  .width('95%')
  .height(65)
}

@Builder function buildServe(items: Item[]) {
  Column({ space: 15 }) {
    Text('推荐服务')
      .margin({ top: 20 })
      .width('95%')
      .fontSize(13)
      .fontWeight(FontWeight.Bold)
    GridRow(
      {
        gutter: { y: 10 },
        columns: 4,
      }
    ) {
      ForEach(
        items,
        (item: Item) => {
          GridCol() {
            buildGridItem(item, 80, 50, 23, 11)
          }
        }
      )

    }
    .width('100%')
  }

}

@Builder function buildMoreServer() {
  Column() {
    Text('更多服务')
      .fontWeight(FontWeight.Bold)
      .fontSize(12)
      .width('95%')
      .margin({ top: 16 })

    Column({space:6}) {
      LineItem({
        icon: $r('app.media.sch_lianxikefu'),
        item_name: '联系客服', icon_back:
        $r('app.media.qianwang')
      })

      LineItem({ icon: $r('app.media.sch_tingshiping'),
        item_name: '听视频', icon_back:
        $r('app.media.qianwang')
      })

      LineItem({
        icon: $r('app.media.sch_qingshaonianshouhu'),
        item_name: '青少年守护',
        icon_back: $r('app.media.qianwang')
      })

      LineItem({ icon: $r('app.media.sch_shezhi'),
        item_name: '设置', icon_back:
        $r('app.media.qianwang')
      })
    }
    .margin({top:6})
  }
  .width('100%')
}


@Entry
@Component
struct MyAccountPage {
  @State message: string = 'Hello World'
  private serveItems: Item[] = [
    new Item($r('app.media.sch_wodekecheng'), '我的课程'),
    new Item($r('app.media.sch_mianliuliangfuwu'), '免流量服务'),
    new Item($r('app.media.sch_gexingzhuangban'), '个性装扮'),
    new Item($r('app.media.sch_wodeqianbao'), '我的钱包'),
    new Item($r('app.media.sch_youxizhongxin'), '游戏中心'),
    new Item($r('app.media.sch_huiyuangouzhongxin'), '会员购中心'),
    new Item($r('app.media.sch_wodezhibo'), '我的直播'),
    new Item($r('app.media.sch_manhua'), '漫画'),
    new Item($r('app.media.sch_qifeituiguang'), '起飞推广'),
    new Item($r('app.media.sch_chuangzuozhongxin'), '创作中心'),
    new Item($r('app.media.sch_shequzhongxin'), '社区中心'),
    new Item($r('app.media.sch_bilibiligongyi'), '哔哩哔哩公益'),
    new Item($r('app.media.sch_nengliangjiayouzhan'), '能量加油站'),
    new Item($r('app.media.sch_dahuiyuanxianshiyouhui'), '大会员限时优惠'),
  ]

  build() {
    Column() {
      buildTop()
      buildHead()

      Row() {
        Column() {
          Text('2')
            .fontSize(15)
          Text('动态')
            .fontColor('#a0a0a0')
            .fontSize(12)
        }
        .width('30%')

        Column() {
          Text('26')
            .fontSize(15)
          Text('关注')
            .fontColor('#a0a0a0')
            .fontSize(12)
        }
        .width('30%')

        Column() {
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





      List() {

        ListItem(){
          buildBar()
        }

        ListItem(){
          buildActivity2()
        }

        ListItem() {
          buildServe(this.serveItems)
        }

        ListItem() {
          buildMoreServer()
        }

      }
      .alignListItem(ListItemAlign.Center)
      .width('100%')
      .layoutWeight(1)


      Blank()
      BottomBar()

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ffffff')
  }
}