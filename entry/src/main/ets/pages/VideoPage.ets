import router from '@ohos.router'
import { VideoCover } from '../components/VideoCover'
import { video } from '../videomodel/VideoInfo'
import { videoObject } from '../videomodel/VideoObject'
@Extend(Text) function textGrayMargin(){
  .fontSize(12)
  .fontColor('#b7b9be')
  .margin({right: 5})
}

@Entry
@Component
struct VideoPage {
  @State index: number = router.getParams()['id']
  @State videoObject: video = videoObject.list[this.index]
  @State videoSrc: Resource = $rawfile('原神启动.mp4')
  // @State previewUri: Resource = $r('app.media.cover')
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
  count: string[] = [this.videoObject.like.toString(), "不喜欢", this.videoObject.coinCount.toString(), this.videoObject.collectCount.toString(), this.videoObject.forwardCount.toString()]

  build() {

    Column() {
      Video({
        src: this.videoSrc,
        // previewUri: this.previewUri,
        currentProgressRate: this.curRate,
        controller: this.controller
      }).width('100%').height(240)
        .autoPlay(this.isAutoPlay)
        .controls(this.showControls)
        .objectFit(ImageFit.Contain)

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


          Text(`评论 ${this.videoObject.comment}`)
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

      List(){
        ListItem(){
          Column(){
            Row(){
              Row(){
                Stack(){
                  Image(this.videoObject.avatar)
                    .width(36)
                    .border({radius: 18})
                    .margin({bottom: 5})
                  Image($r('app.media.live_charge'))
                    .width(15)
                    .position({x: 26, y: 26})
                }
                .margin({right: 10})
                Column(){
                  Text(this.videoObject.up)
                    .fontSize(14)
                    .fontColor('#fe7ba7')
                    .margin({bottom: 5})
                  Row(){
                    Text(`${this.videoObject.fansCount}粉丝`)
                      .fontSize(12)
                      .fontColor('#a9adb3')
                      .margin({right: 5})
                    Text(`${this.videoObject.videoCount}视频`)
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

                Text(this.videoObject.title)
                  .fontSize(16)
                  .fontWeight(FontWeight.Medium)
                  .maxLines(1)
                  .textOverflow({overflow: TextOverflow.Ellipsis})
              }
              .width('80%')
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
              Text(this.videoObject.play)
                .textGrayMargin()
              Image($r('app.media.video_barrage_gray'))
                .width(18)
                .margin({right: 3})
              Text(this.videoObject.barrage)
                .textGrayMargin()
              Text(this.videoObject.time)
                .textGrayMargin()
              Image($r('app.media.video_person'))
                .width(18)
                .margin({right: 5})
              Text(`${this.videoObject.nowLook}人正在看`)
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
              Row(){
                Image($r('app.media.video_tv'))
                  .width(15)
                  .margin({right: 8})
                Text("B站动画种草大赛")
                  .fontSize(14)
                  .margin({right: 5})
                Image($r('app.media.right_arrow'))
                  .width(10)
                  .margin({right: 5})
              }
              .padding(3)
              .backgroundColor('#f6f7f9')
              .border({radius: 20})
              .margin({left: 16})
            }
            .width('100%')
            .justifyContent(FlexAlign.Start)
            .margin({bottom: 12})

            Divider()
              .color('#ebebed')
              .strokeWidth(1)

            VideoCover({playingId: this.videoObject.id})
          }
        }
      }
      .layoutWeight(1)



    }
  }
}