@Extend(Text) function textGrayMargin(){
  .fontSize(12)
  .fontColor('#b7b9be')
  .margin({right: 5})
}

@Entry
@Component
struct VideoPage {

  // @State videoSrc: Resource = $rawfile()
  videoSrc: Resource
  @State previewUri: Resource = $r('app.media.living_item_12')
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X
  @State isAutoPlay: boolean = false
  @State showControls: boolean = true
  controller: VideoController = new VideoController()

  icons: ResourceStr[] = [
    $r('app.media.video_like'),
    $r('app.media.video_dislike'),
    $r('app.media.video_coin'),
    $r('app.media.video_collection'),
    $r('app.media.video_forward')
  ]
  count: string[] = ["1739", "不喜欢", "328", "201", "17"]

  build() {

    Column() {
      Video({
        src: this.videoSrc,
        previewUri: this.previewUri,
        currentProgressRate: this.curRate,
        controller: this.controller
      }).width('100%').height(210)
        .autoPlay(this.isAutoPlay)
        .controls(this.showControls)

      Row() {
        Row() {
          Column(){
            Text('简介')
              .fontSize(12)
              .fontColor('#fd7faa')
              .margin({right: 50})

            Divider()
              .width(35)
              .strokeWidth(4)
              .color('#fa79a5')
              .position({x: -5, y:23})
          }


          Text('评论 79')
            .fontSize(12)
            .fontColor('#8b8b8b')
        }
        .margin({left: 30})

        Row() {
          Stack(){
            TextInput({ placeholder: "点我发弹幕" })
              .backgroundColor('#f6f7f9')
              .height(30)
              .width(130)
              .padding({left: 15})
              .placeholderColor('#a1a6ac')
              .placeholderFont({size: 14})
              .border({width: 1, color: '#eeeff0'})
            Row(){
              Image($r('app.media.video_barrage_open'))
                .width(25)
            }
            .height(28)
            .margin({left: 95})
            .padding({top: 5, bottom: 5, left: 5, right: 4})
            .border({radius: 20})
            .borderRadius({topRight: 20, bottomRight: 20})
            .backgroundColor(Color.White)
          }
        }
      }
      .width('100%')
      .backgroundColor('#fcfcfc')
      .padding({top: 4, bottom: 4, right: 20})
      .justifyContent(FlexAlign.SpaceBetween)

      Divider()
        .color('#f7f8f9')
        .strokeWidth(1)

      Column(){
        Row(){
          Row(){
            Stack(){
              Image($r('app.media.natsume1'))
                .width(36)
                .border({radius: 18})
                .margin({bottom: 5})
              Image($r('app.media.live_charge'))
                .width(15)
                .position({x: 26, y: 26})
            }
            .margin({right: 10})
            Column(){
              Text('花丸晴琉Official')
              .fontSize(14)
              .fontColor('#fe7ba7')
              .margin({bottom: 5})
              Row(){
                Text('46.4万粉丝')
                  .fontSize(12)
                  .fontColor('#a9adb3')
                  .margin({right: 5})
                Text('637视频')
                  .fontSize(12)
                  .fontColor('#a9adb3')
              }
            }
            .alignItems(HorizontalAlign.Start)
          }

          Row(){
            Row(){
              Image($r('app.media.video_lighting'))
                .width(15)
                .margin({right: 5})
              Text('充电')
                .fontSize(14)
                .fontColor('#fe9fbf')
            }
            .padding({top: 3, bottom: 3, left: 15, right: 15})
            .border({radius: 20, style: BorderStyle.Solid, width: 2, color: '#fe9fbf'})
            .margin({right: 5})

            Row(){
              Image($r('app.media.video_focus'))
                .width(15)
                .margin({right: 5})
              Text('已关注')
                .fontSize(14)
                .fontColor('#989ca2')

            }
            .padding({top: 3, bottom: 3, left: 10, right: 10})
            .border({radius: 20})
            .backgroundColor('#e4e5e7')
          }
        }
        .width('100%')
        .padding({top: 10, bottom: 10, left: 10, right: 10})
        .justifyContent(FlexAlign.SpaceBetween)

        Row(){
          Row(){
            Row(){
              Text('活动').fontSize(12)
                .fontColor('#fe7ba7')
            }
            .padding(5)
            .backgroundColor('#f6f7f9')
            .border({radius: 12})

            Text('花丸！我耳朵好痒！【花丸晴琉】')
              .fontSize(16)
              .fontWeight(FontWeight.Medium)
          }
          Image($r('app.media.video_bottom_arrow'))
            .width(15)
        }
        .width('100%')
        .padding({bottom: 5, left: 10, right: 10})
        .justifyContent(FlexAlign.SpaceBetween)

        Row(){
          Image($r('app.media.video_play_gray'))
            .width(18)
            .margin({right: 3})
          Text("6739")
            .textGrayMargin()
          Image($r('app.media.video_barrage_gray'))
            .width(18)
            .margin({right: 3})
          Text('15')
            .textGrayMargin()
          Text('2024年3月10日')
            .textGrayMargin()
          Text('12:15')
            .textGrayMargin()
          Image($r('app.media.video_person'))
            .width(18)
            .margin({right: 5})
          Text('1人正在看')
            .textGrayMargin()
        }
        .width('100%')
        .margin({left: 20})

        Row(){
          ForEach(this.icons, (icon: ResourceStr, index) => {
            Column(){
              Image(icon)
                .width(30)
                .margin({bottom: 5})
              Text(this.count[index])
                .fontSize(12)
                .fontColor('#b6babe')
            }
          })
        }
        .width('100%')
        .height(80)
        .justifyContent(FlexAlign.SpaceAround)
        .alignItems(VerticalAlign.Center)

        Row(){

          Text("B站动画种草大赛")
        }
        .width('100%')
      }


    }
  }
}