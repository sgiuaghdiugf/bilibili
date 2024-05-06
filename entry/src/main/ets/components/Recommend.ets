import {video} from '../videomodel/VideoInfo'
import { videoObject } from '../videomodel/VideoObject'
import router from '@ohos.router'
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


@Builder function SwiperModule(){
  Swiper(this.swiperController) {
    LazyForEach(this.data, (item: SwiperInfo) => {
      Stack(){
        Image(item.pic).width('100%').border({radius: 10})
        Text(item.title)
          .fontSize(12)
          .fontColor(Color.White)
          .position({x: 10, y: 178})
      }
      .width('100%')

    }, item => item)
  }
  .cachedCount(2)
  .index(1)
  .autoPlay(true)
  .interval(3000)
  .indicator(true)
  .loop(true)
  .duration(1000)
  .itemSpace(0)
  .curve(Curve.Linear)
  .margin({left: 3, right: 3, bottom: 3})
  .itemSpace(10)
  .indicatorStyle({right: 10, size: 12, color: '#8a8182', selectedColor: Color.White})
}

let imgs: ResourceStr[] = [$r('app.media.video_1'), $r('app.media.video_2'), $r('app.media.video_3'), $r('app.media.video_4'), $r('app.media.video_5'), $r('app.media.video_6'), $r('app.media.video_7'), $r('app.media.video_8')]

@Builder function RecommendModule(){
  List(){
    ForEach(this.videoObjects, (video: video) => {
      ListItem(){
        Column(){
          Stack(){
            Image(imgs[Number(video.img)])
              .width('100%')
              .height(120)
              .border({radius: 5})
            Row(){
              Row(){
                Row(){
                  Image($r('app.media.video_play'))
                    .width(16)
                    .margin({right: 3})
                  Text(video.play).fontSize(12)
                    .fontColor(Color.White)
                    .fontWeight(FontWeight.Bold)

                }
                .margin({right: 3})
                Row(){
                  Image($r('app.media.video_barrage'))
                    .width(16)
                    .margin({right: 5})
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

          Row(){
            Text(video.title)
              .fontSize(13)
              .maxLines(2)
              .textOverflow({overflow: TextOverflow.Ellipsis})
          }
          .width('100%')
          .padding({left: 5, right:10})

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
          .padding({left: 5})
        }
        .width('100%')
        .height(190)
        .margin({ bottom: 3})
        .border({radius: 5})
        .backgroundColor('#ffffff')
        .onClick(() => {
          router.pushUrl({
            url: 'pages/VideoPage',
            params: {
              id: video.id - 1
            }
          }, router.RouterMode.Single)
        })
      }
    })
  }
  .width('100%')
  .layoutWeight(1)
  .margin({left: 2})
  .lanes({minLength: '32%', maxLength: '32%'})
}

@Component
export struct Recommend {
  pics: ResourceStr[] = [$r("app.media.swiper_1"), $r('app.media.swiper_2'), $r('app.media.swiper_3')]
  private swiperController: SwiperController = new SwiperController()
  private data: MyDataSource = new MyDataSource([])
  videoObjects: video[]
  @Prop keyword: string


  swiperInfo: SwiperInfo[] = [
    new SwiperInfo($r("app.media.swiper_1"), '正在直播KPL：广州TTG vs 上海EDG.M'),
    new SwiperInfo($r('app.media.swiper_2'), '游戏高手帮我玩，用户福利大放送！'),
    new SwiperInfo($r('app.media.swiper_3'), '人类噩梦！变异恐龙出没集体暴走')
  ]


  aboutToAppear(): void {
    let list = []
    for (var i = 0; i < this.swiperInfo.length; i++) {
      list.push(this.swiperInfo[i]);
    }
    this.data = new MyDataSource(list)

    videoObject.init()
    this.videoObjects = videoObject.videoObjects
  }

  build() {
    Column(){
      List(){
        ListItem(){
          SwiperModule()
        }
        ListItem(){
          RecommendModule()
        }
      }

    }
      .backgroundColor('#eeeeee')
      .layoutWeight(1)
  }
}