@Component
struct TabsExample {
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
          Column().width('100%').height('100%').backgroundColor('#00CB87')
        }.tabBar(this.TabBuilder(0, '主页'))

        TabContent() {
          Column().width('100%').height('100%').backgroundColor('#007DFF')
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
      .width(360)
      .height('100%')
      .margin({ top: 52 })
      .backgroundColor('#ffffff')
    }.width('100%')
  }
}


@Component
struct Collections {
  build() {

    Column() {
      Bar({ name: '追番', num: 2 })
      Row() {
        collect_item({ icon: $r('app.media.video_2'),
          name: '默认收藏夹',
          num: 3 })

        collect_item({ icon: $r('app.media.video_3'),
          name: 'Music',
          num: 2 })
      }
      .justifyContent(FlexAlign.SpaceAround)
      .width('98%')

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f2f3f5')
  }
}

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

        Image($r('app.media.sch_bofang'))
          .position({ x: '85%', y: '62%' })
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
        .margin({ left: 10, right: 10 })
      Text(this.num.toString())
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
    .height(60)
    .width('100%')

  }
}


@Entry
@Component
struct Like {
  build() {
    Column(){
      like_item({ icon: $r('app.media.video_4'),
        name: '辉夜大小姐想让我告白',
        msg: '精彩片段10' + ' ' + '被发现了' })
      like_bar()
    }

  }
}

@Component
struct like_item {
  icon: Resource;
  name: string;
  msg: string;

  build() {
    Column() {
      Stack() {
        Image(this.icon)
          .borderRadius(5)
          .width('100%')
      }
      .width('100%')

      Text(this.name)
        .margin({ left: 10 })
        .width('90%')
        .fontSize(15)
        .fontWeight(FontWeight.Medium)
        .margin({ top: 5, bottom: 10 })
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

@Component
struct like_bar {
  build() {
    Row() {
      Image($r('app.media.sch_bofang_2'))
        .width(15)
        .margin({left:5,right:5})
      Text('7.6' + '万')
        .fontSize(12)
        .fontColor('#ffffff')

      Image($r('app.media.sch_pinglun'))
        .width(17)
        .margin({left:5,right:5})

      Text('8')
        .fontColor('#ffffff')
        .fontSize(12)

      Blank()
      Text('02' + ":" + '22')
        .margin({right:5})
        .fontSize(12)
        .fontColor('#ffffff')
    }
    .linearGradient(
      {
        direction:GradientDirection.Top,
        colors:[['#070508']],
      }
    )
    .width('50%')
    .height(50)
    .backgroundColor('#16192a')
  }
}