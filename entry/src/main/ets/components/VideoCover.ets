import { video } from '../videomodel/VideoInfo'


@Component
export struct VideoCover {
  videos: video[] = [
    new video($r('app.media.video_5'), "2655", "40", "跨越世界的思念【Muv-Luv Alternative】第3期", "恶魔球卡燃", "42:17", '5小时前'),
    new video($r('app.media.video_8'), "111.7万", "1171", "麻枝准最新力作《炽焰天穹》首曝PV、 「简中服特别寄语」首公开", "炽焰天穹_HBR", "02:22", "3小时前"),
    new video($r('app.media.video_4'), "4.5万", "44", "【中日歌词/全曲/MyGO】輪符雨", "Mikoi_", "03:38", "1天前"),
    new video($r('app.media.video_7'), "9847", "53", "从galgame到手游，真的只有无奈与妥协吗[炽焰天穹/红烧天堂]", "放水之刃", "10:36", "3天前"),
    new video($r('app.media.video_6'), "9683", "103", "那么，请和萤立下约定……请一定也要爱上下一个萤喔", "和纱に嘘をつけない", "03:36", "3月4日"),
    new video($r('app.media.video_2'), "6.4万", "213", "【碧蓝航线】3月14日帝国复刻，3~7月活动时间线梳理，帝国活动船强度分析，还值得抽吗？近半年建造船抽取优先级排序！", "猫姐姐nya", "03:47", "1月3日"),
    new video($r('app.media.video_3'), "39.4万", "129", "大型纪录片《女婿去丈母娘家》", "阿文纪录片", "01:13", "1周前"),
    new video($r('app.media.video_1'), "43.6万", "799", "广州番禺凌晨吃猪杂，店隔壁就是屠宰场，最新鲜猪杂吃了3斤", "肚子等待大嘴", "04:55", "5天前"),
  ]

  build() {
    List(){
      ForEach(this.videos, (video: video, index) => {
        ListItem(){
          Column(){
            Row(){
              Image(video.img)
                .height(90)
                .border({radius: 5
                })
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
              .width(170)
              .height(90)
              .alignItems(HorizontalAlign.Start)
            }
            .width('100%')
            .margin({top: 10})

            Divider()
              .opacity(0.3)
              .margin({top: 10})

          }
          .padding({left: 10, right: 10})
        }
      })
    }
  }
}