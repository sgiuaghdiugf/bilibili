class MyDataSource implements IDataSource {
  private list: number[] = []
  private listener: DataChangeListener

  constructor(list: number[]) {
    this.list = list
  }

  totalCount(): number {
    return this.list.length
  }

  getData(index: number): any {
    return this.list[index]
  }

  registerDataChangeListener(listener: DataChangeListener): void {
    this.listener = listener
  }

  unregisterDataChangeListener() {
  }
}

class SwiperInfo{
  pic: ResourceStr
  title: string

  constructor(pic: ResourceStr, title: string) {
    this.pic = pic
    this.title = title
  }
}

class video{
  img: ResourceStr
  play: string
  barrage: string
  title: string
  up: string
  long: string

  constructor(img, play, barrage, title, up, long) {
    this.img = img
    this.play = play
    this.barrage = barrage
    this.title = title
    this.up = up
    this.long = long
  }
}

@Component
export struct Recommend {
  pics: ResourceStr[] = [$r('app.media.swiper_1'), $r('app.media.swiper_2'), $r('app.media.swiper_3')]
  private swiperController: SwiperController = new SwiperController()
  private data: MyDataSource = new MyDataSource([])
  videos: video[] = [
    new video($r('app.media.video_5'), "2655", "40", "跨越世界的思念【Muv-Luv Alternative】第3期", "恶魔球卡燃", "42:17"),
    new video($r('app.media.video_8'), "111.7万", "1171", "麻枝准最新力作《炽焰天穹》首曝PV、 「简中服特别寄语」首公开", "炽焰天穹_HBR", "02:22"),
    new video($r('app.media.video_4'), "4.5万", "44", "【中日歌词/全曲/MyGO】輪符雨", "Mikoi_", "03:38"),
    new video($r('app.media.video_7'), "9847", "53", "从galgame到手游，真的只有无奈与妥协吗[炽焰天穹/红烧天堂]", "放水之刃", "10:36"),
    new video($r('app.media.video_6'), "9683", "103", "那么，请和萤立下约定……请一定也要爱上下一个萤喔", "和纱に嘘をつけない", "03:36"),
    new video($r('app.media.video_2'), "6.4万", "213", "【碧蓝航线】3月14日帝国复刻，3~7月活动时间线梳理，帝国活动船强度分析，还值得抽吗？近半年建造船抽取优先级排序！", "猫姐姐nya", "03:47"),
    new video($r('app.media.video_3'), "39.4万", "129", "大型纪录片《女婿去丈母娘家》", "阿文纪录片", "01:13"),
    new video($r('app.media.video_1'), "43.6万", "799", "广州番禺凌晨吃猪杂，店隔壁就是屠宰场，最新鲜猪杂吃了3斤", "肚子等待大嘴", "04:55"),
  ]
  swiperInfo: SwiperInfo[] = [
    new SwiperInfo($r('app.media.swiper_1'), '正在直播KPL：广州TTG vs 上海EDG.M'),
    new SwiperInfo($r('app.media.swiper_2'), '游戏高手帮我玩，用户福利大放送！'),
    new SwiperInfo($r('app.media.swiper_3'), '人类噩梦！变异恐龙出没集体暴走')
  ]

  aboutToAppear(): void {
    let list = []
    for (var i = 0; i < this.swiperInfo.length; i++) {
      list.push(this.swiperInfo[i]);
    }
    this.data = new MyDataSource(list)
  }

  build() {
    Column(){
      List(){
        ForEach(this.videos, (video: video) => {
          ListItem(){
            Column(){
              Stack(){
                Image(video.img)
                  .width('100%')
                  .height(120)
                  .border({radius: 5})
                Row(){
                  Row(){
                    Row(){
                      Image($r('app.media.video_play')).width(16)
                      Text(video.play).fontSize(12)
                        .fontColor(Color.White)
                        .fontWeight(FontWeight.Bold)

                    }
                    .margin({right: 5})
                    Row(){
                      Image($r('app.media.video_barrage')).width(16)
                      Text(video.barrage).fontSize(12).fontColor(Color.White)
                    }
                  }
                  Text(video.long).fontSize(12).fontColor(Color.White)
                }
                .width('100%')
                .position({y: 100})
                .padding({left: 5, right: 5})
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .margin({bottom: 10})

              Text(video.title)
                .fontSize(12)
                .maxLines(2)
                .textOverflow({overflow: TextOverflow.Ellipsis})

              Row(){
                Row(){
                  Image($r('app.media.video_up'))
                    .width(16)
                    .margin({right: 4})
                  Text(video.up)
                    .fontSize(10)
                    .fontColor('#8a8a8a')
                }
                Image($r('app.media.video_more'))
                  .width(16)
              }
              .width('100%')
              .margin({left: 4})
              .position({y: 170})
              .justifyContent(FlexAlign.SpaceBetween)
              .padding({left: 5, right: 5})
            }
            .width('100%')
            .height(190)
            .margin({right: 5, bottom: 6})
            .border({radius: 5})
            .backgroundColor('#ffffff')
          }
        })
      }
      .width('100%')
      .layoutWeight(1)
      .margin({left: 5})
      .lanes({maxLength: 175, minLength: 175})
    }
    .height('100%')
  }
}