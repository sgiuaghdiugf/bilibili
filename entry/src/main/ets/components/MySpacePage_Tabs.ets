import {my_course_Tabs_01} from '../components/sch_my_course_tabs'
import {DynamicPage} from '../components/sch_dynamic_component'
@Entry
@Component
export struct my_space_tab {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#df7b9d'
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder TabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(16)
        .fontWeight(this.currentIndex === index ? 500 : 400)
        .lineHeight(22)
        .margin({ top: 17, bottom: 7 })
      Divider()
        .strokeWidth(2)
        .color('#df7b9d')
        .opacity(this.currentIndex === index ? 1 : 0)
    }.width('100%')
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
        TabContent() {
          my_space_main_page()
        }.tabBar(this.TabBuilder(0, '主页'))

        TabContent() {
          DynamicPage()
        }.tabBar(this.TabBuilder(1, '动态'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor('#FFBF00')
        }.tabBar(this.TabBuilder(2, '投稿'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor('#E67C92')
        }.tabBar(this.TabBuilder(3, '收藏'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor('#E67C92')
        }.tabBar(this.TabBuilder(4, '追番'))
      }
      .vertical(false)
      .barMode(BarMode.Fixed)
      .barWidth(360)
      .barHeight(56)
      .animationDuration(300)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .width('100%')
      .height('100%')
      .margin({ top: 0 })
      .backgroundColor('#ffffff')
    }.width('100%')
    .height('100%')
  }
}


/*收藏组件*/
@Component
struct Collections {
  build() {

    Column() {
      Bar({ name: '收藏', num: 2 })
      Row() {
        collect_item({ icon: $r('app.media.video_2'),
          name: '默认收藏夹',
          num: 3 })

        collect_item({ icon: $r('app.media.video_3'),
          name: 'Music',
          num: 2 })
      }
.
justifyContent(FlexAlign.SpaceAround)
  .width('98%')

}
.
width('100%')
}
}

/*收藏组件元素*/
@Component
struct collect_item {
  icon: Resource;
  name: string;
  num: number;

  build() {
    Column() {
      Stack() {
        Image(this.icon)
          .borderRadius(6)
          .width('100%')

        Image($r('app.media.sch_bofang_2'))
          .position({ x: '84%', y: '48%' })
          .width(25)
      }
      .width('100%')

      Text(this.name)
        .margin({ left: 10 })
        .width('90%')
        .fontSize(15)
        .fontWeight(FontWeight.Medium)
        .margin({ top: 5, bottom: 10 })
      Text(this.num + '个内容 - 公开')
        .margin({ left: 4 })
        .width('90%')
        .fontSize(12)
        .fontColor('#b3b3b3')
    }
    .borderRadius(6)
    .backgroundColor('#ffffff')
    .height(150)
    .width('48%')
  }
}

@Component
struct Bar {
  name: string;
  num: number;

  build() {
    Row() {
      Text(this.name)
        .fontSize(15)
        .margin({ left: 10, right: 10 })
      Text(this.num.toString())
        .fontSize(15)
        .margin({ right: 10 })
      Image($r('app.media.sch_yincang'))
        .width(20)

      Blank()
      Text('查看更多')
        .margin({ right: 5 })
        .fontSize(13)
        .fontColor('#a1a2a4')

      Image($r('app.media.qianwang'))
        .width(18)
        .margin({ right: 5 })
    }
    .height(40)
    .width('100%')

  }
}

/*点赞视频栏*/
@Component
struct Like {
  build() {
    Column() {
      Bar({ name: '最近点赞的视频', num: 317 })
      Row({ space: 5 }) {
        like_item({
          icon: $r('app.media.video_4'),
          name: '辉夜大小姐想让我告白',
          msg: '精彩片段10' + ' ' + '被发现了',
          num1: '7.6',
          num2: '8',
          num3: '02',
          num4: '22'
        })

        like_item({
          icon: $r('app.media.video_4'),
          name: '辉夜大小姐想让我告白',
          msg: '精彩片段10' + ' ' + '被发现了',
          num1: '7.6',
          num2: '8',
          num3: '02',
          num4: '22'
        })
      }
    }
    .backgroundColor('#f2f3f5')
    .width('100%')

  }
}

/*点赞视频的内容*/
@Component
struct like_item {
  icon: Resource;
  name: string;
  msg: string;
  num1: string;
  num2: string;
  num3: string;
  num4: string;

  build() {
    Column() {
      Stack() {
        Image(this.icon)
          .borderRadius(5)
          .width('100%')
        build_like_bar(this.num1, this.num2, this.num3, this.num4)

      }
      .width('100%')

      Text(this.name)
        .margin({ left: 10 })
        .width('90%')
        .fontSize(13)
        .fontWeight(FontWeight.Medium)
        .margin({ top: 8, bottom: 5 })
      Text(this.msg)
        .margin({ left: 4 })
        .width('90%')
        .fontSize(12)
        .fontColor('#b3b3b3')
    }
    .borderRadius(6)
    .backgroundColor('#ffffff')
    .height(150)
    .width('48%')
  }
}

/*渲染点赞视频的透明播放栏*/
@Component
struct like_bar {
  num1: string;
  num2: string;
  num3: string;
  num4: string;

  build() {
    Stack() {
      Row() {
      }
      .width('100%')
      .height(20)
      .linearGradient(
        {
          direction: GradientDirection.Top,
          colors: [['#000000', 0.0], ['#000000', 1]],
        }
      )
      .opacity(0.2)

      Row() {
        Image($r('app.media.sch_bofang_2'))
          .width(15)
          .margin({ left: 5, right: 5 })
        Text(this.num1 + '万')
          .fontSize(12)
          .fontColor('#ffffff')

        Image($r('app.media.sch_pinglun'))
          .width(17)
          .margin({ left: 5, right: 5 })

        Text(this.num2)
          .fontColor('#ffffff')
          .fontSize(12)

        Blank()
        Text(this.num3 + ":" + this.num4)
          .margin({ right: 5 })
          .fontSize(12)
          .fontColor('#ffffff')
      }

      .width('100%')
      .height(20)
    }
    .width('100%')
    .height(20)
  }
}

@Builder function build_like_bar(num1: string, num2: string, num3: string, num4: string,) {
  like_bar({ num1: num1, num2: num2, num3: num3, num4: num4 })
    .position({ x: 0, y: '50%' })
}


/*追番栏*/

@Component
struct Fan {
  build() {
    Column() {
      Bar({ name: "追番", num: 2 })
        .width('100%')
      Row({ space: 5 }) {
        fan_item({ icon: $r('app.media.sch_baiyaopu'),
          name: '百妖谱', name2: '司府篇', name3: '更新至第4话' })

        fan_item({ icon: $r('app.media.sch_baiyaopu_2'),
          name: '百妖谱', name2: '第二季', name3: '全12话' })

      }
      .margin({ left: 5 })
      .justifyContent(FlexAlign.Start)
      .width('100%')
    }
    .width('100%')
  }
}


@Component
struct fan_item {
  icon: Resource;
  name: string;
  name2: string;
  name3: string;

  build() {
    Stack() {
      Image(this.icon)
        .borderRadius(5)
      build_fan_bar(this.name, this.name2, this.name3)
    }
    .borderRadius(5)
    .width('35%')
    .height('20%')
    .backgroundColor('#000000')

  }
}

@Component
struct fan_bar {
  num1: string;
  num2: string;
  num3: string;

  build() {
    Stack() {
      Column() {
      }
      .width('100%')
      .height(40)
      .linearGradient(
        {
          direction: GradientDirection.Top,
          colors: [['#000000', 0.0], ['#000000', 0.7], ['#ffffff', 1]],
        }
      )
      // .backgroundColor('#000000')
      .opacity(0.3)

      Column() {
        Row() {
          Text(this.num1)
            .fontSize(13)
            .fontColor('#ffffff')
            .margin({ right: 5 })
          Text(this.num2)
            .fontSize(13)
            .fontColor('#ffffff')
        }
        .width('95%')
        .margin({ left: 5 })

        Text(this.num3)
          .margin({ left: 5 })
          .width('95%')
          .fontSize(10)
          .fontColor('#ffffff')
      }
      .width('100%')
      .height(40)
      .justifyContent(FlexAlign.SpaceEvenly)
    }

  }
}

@Builder function build_fan_bar(name: string, name2: string, name3: string) {

  fan_bar({ num1: name, num2: name2, num3: name3 })
    .position({ x: 0, y: '74%' })
}


@Component
struct my_space_main_page {
  build() {
    Column({ space: 10 }) {
      Collections()
      Fan()
      Like()
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#f2f3f5')
  }
}
