import router from '@ohos.router'
import { video } from '../videomodel/VideoInfo'
import { videoObjects } from '../videomodel/VideoObject'

@Component
export struct VideoCover {
  playingId: number

  build() {
    List(){
      ForEach(videoObjects, (video: video, index) => {
        if(this.playingId != video.id){
          ListItem(){
            Column(){
              Row(){
                Image(video.img)
                  .height(100)
                  .border({radius: 5})
                  .margin({right: 5})

                Column(){
                  Text(video.title)
                    .fontSize(14)
                    .maxLines(2)
                    .textOverflow({overflow: TextOverflow.Ellipsis})
                    .margin({bottom: 5})

                  Row(){
                    if(index % 3 == 0){
                      Text('很多人点赞')
                        .fontSize(12)
                        .fontColor('#ff7244')
                    }else if(index % 3 == 1){
                      Text('很多人分享')
                        .fontSize(12)
                        .fontColor('#ff7244')
                    }
                  }
                  .backgroundColor('#fff1ee')
                  .padding(3)

                  Column(){

                    Row(){
                      Image($r('app.media.video_up_gray'))
                        .width(15)
                        .margin({right: 5})
                      Text(video.up)
                        .fontSize(12)
                        .fontColor('#989da3')
                    }
                    .width('100%')

                    Row(){
                      Row(){
                        Image($r('app.media.video_play_gray'))
                          .width(15)
                          .margin({right: 5})
                        Text(`${video.play}观看·${video.publish}`)
                          .fontSize(12)
                          .fontColor('#989da3')
                      }
                      Image($r('app.media.video_more'))
                        .width(15)
                    }
                    .width('100%')
                    .justifyContent(FlexAlign.SpaceBetween)
                  }
                  .position({y: 60})
                }
                .width('52%')
                .height(90)
                .alignItems(HorizontalAlign.Start)
              }
              .width('100%')
              .margin({top: 10})
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/VideoPage',
                  params: {
                    id: video.id - 1
                  }
                }, router.RouterMode.Standard)
              })

              Divider()
                .opacity(0.3)
                .margin({top: 10})

            }
            .padding({left: 10, right: 10})

          }
        }
      })
    }
  }
}