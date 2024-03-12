// import {HomePage} from '../pages/HomePage'
import { Recommend } from '../components/sch_Recommend'

@Component
struct video_bar {
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

@Builder function build_video_bar(num1: string, num2: string, num3: string, num4: string,) {
  video_bar({ num1: num1, num2: num2, num3: num3, num4: num4 })
    .position({ x: 0, y: '80%' })
}

@Component
struct video_item {
  video_colum_width: string;
  video_colum_height: string;
  msg1: string;
  msg2: string;
  icon: Resource;
  num1: string;
  num2: string;
  num3: string;
  num4: string;

  build() {
    Column() {
      Row({ space: 10 }) {
        Stack() {
          Image(this.icon)
            .borderRadius(4)
          build_video_bar('114.0', '1.4万', '20', '10')
        }
        .width('49%')
        .height('100%')

        Column() {
          Text(this.msg1)
            .fontSize(15)
            .width('98%')
          Text(this.msg2)
            .width('100%')
            .fontSize(13)
            .fontColor('#a6a6a6')
        }
        .width('48%')
        .justifyContent(FlexAlign.SpaceAround)
        .height('100%')

      }
      .justifyContent(FlexAlign.SpaceAround)
      .width('98%')
      .height(100)
      .margin({ bottom: 5 })

      Divider()
        .width('98%')
        .strokeWidth(0.5)
        .color('#000000')
        .opacity(0.3)

    }
    .width('100%')

  }
}

@Builder function build_video_item(width: string, height: string, msg1: string, msg2: string, icon: Resource
                                   , num1: string, num2: string, num3: string, num4: string
) {
  video_item({
    video_colum_width: width,
    video_colum_height: height,
    msg1: msg1,
    msg2: msg2,
    icon: icon,
    num1,
    num2,
    num3,
    num4
  })


}

class struct_video {
  video_colum_width: string;
  video_colum_height: string;
  msg1: string;
  msg2: string;
  icon: Resource;
  num1: string;
  num2: string;
  num3: string;
  num4: string;

  constructor(q, w, e, r, t, y, u, i, o) {
    this.video_colum_width = q
    this.video_colum_height = w
    this.msg1 = e
    this.msg2 = r;
    this.icon = t
    this.num1 = y
    this.num2 = u
    this.num3 = i
    this.num4 = o
  }
}


@Component
struct show_videos {
  private videos: struct_video[] = [
    new struct_video('100%', '100%', '【限时5折】ACM大牛带你玩转算法与数据结构', '上次观看至第一章...', $r('app.media.video_6'), '114.0', '1.4万', '40', '55'),
    new struct_video('100%', '100%', '【限时5折】ACM大牛带你玩转算法与数据结构', '上次观看至第一章...', $r('app.media.video_4'), '4.0', '2.4万', '40', '55'),
    new struct_video('100%', '100%', '【限时5折】ACM大牛带你玩转算法与数据结构', '上次观看至第一章...', $r('app.media.video_3'), '14.0', '4万', '40', '55'),
  ]

  build() {
    Column() {
      List({ space: 5 }) {
        ForEach(
          this.videos,
          (video: struct_video) => {
            ListItem() {
              build_video_item(video.video_colum_width,
                video.video_colum_height, video.msg1, video.msg2,
                video.icon, video.num1, video.num2, video.num3, video.num4)
            }
          }
        )
      }
      // build_video_item('100%','100%','【限时5折】ACM大牛带你玩转算法与数据结构','上次观看至第一章...',$r('app.media.video_6'))
    }
    .width('100%')
    .height('100%')
  }
}


@Component
export struct my_course_Tabs_01 {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#df7b9d'
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder TabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(15)
        .fontWeight(this.currentIndex === index ? 500 : 400)
        .lineHeight(22)
        .margin({ bottom: 7 })
      Divider()
        .width(20)
        .strokeWidth(3)
        .color('#df7b9d')
        .opacity(this.currentIndex === index ? 1 : 0)
    }.width(70)
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
        TabContent() {
          // Column().width('100%').height('100%').backgroundColor('#007DFF')
          show_videos()
        }
        .tabBar(this.TabBuilder(0, '已构课程'))


        TabContent() {
          show_videos()
        }.tabBar(this.TabBuilder(1, '观看记录'))

      }
      .vertical(false)
      .barMode(BarMode.Fixed)
      .barWidth(360)
      .barHeight(56)
      .animationDuration(300)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .width('100%')    //
      .height('100%')
      .margin({ top: 0 })
      .backgroundColor('#ffffff')
      // .border({width:0.5,color:'#abaaaf'})

      Row() {
        Text('查看更多')
          .fontSize(13)
          .fontColor('#9c9fa5')
      }
      .margin({ top: 5 })
      .justifyContent(FlexAlign.Center)
      .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}

@Entry
@Component
export struct my_course_Tabs_02 {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#dc7c9d'
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder TabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(14)
        .fontWeight(this.currentIndex === index ? 500 : 400)
        .lineHeight(30)
      Divider()
        .strokeWidth(2)
        .color('#dc7c9d')
        .opacity(this.currentIndex === index ? 1 : 0)
    }
    .backgroundColor(this.currentIndex === index ? '#ffebf0' : '#ffffff')
    .width(70)
  }

  build() {
    Column() {
      Row(){
        Text('猜你喜欢')
          .fontSize(15)
          .fontWeight(FontWeight.Medium)
          .width('100%')
      }
      .margin({left:10})
      .height(40)

      Tabs({ barPosition: BarPosition.Start, controller: this.controller }) {
        TabContent() {
          Recommend()
        }.tabBar(this.TabBuilder(0, 'IT互联网'))

        TabContent() {
          show_videos()
        }.tabBar(this.TabBuilder(1, '考试考证'))

        TabContent() {
          Recommend()
        }.tabBar(this.TabBuilder(2, '通识科普'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor('#E67C92')
        }.tabBar(this.TabBuilder(3, '兴趣生活'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor('#FFBF00')
        }.tabBar(this.TabBuilder(4, '语言学'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor('#00CB87')
        }.tabBar(this.TabBuilder(5, '影视创作'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor('#00CB87')
        }.tabBar(this.TabBuilder(6, '职业职场'))
      }
      .vertical(false)
      .barMode(BarMode.Scrollable)
      .barWidth('98%')
      .barHeight(50)
      .animationDuration(300)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .width('99%')
      .height('100%')
      .backgroundColor('#ffffff')
    }
    .margin({ top:10 })
    .width('100%')
  }
}