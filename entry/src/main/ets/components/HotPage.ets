import {video} from '../videomodel/VideoInfo'
import { VideoCover } from './VideoCover'

class HotRecommend{
  pic: ResourceStr
  title: string

  constructor(pic: ResourceStr, title: string) {
    this.pic = pic
    this.title = title
  }
}

@Component
export struct HotPage {
  homeTopic: string[] = [
    "网飞版《三体》烂番茄新鲜度67%",
    "LOL封禁超52万个账号",
    "你最喜欢金庸笔下的那个角色？",
    "《周处除三害》票房破3亿",
    "B站发布女性配捐计划",
    "奥运冠军谌龙到JDG主场观赛",
    "周星驰悼念鸟山明",
    "arcaea七周年",
  ]
  hotRecommend: HotRecommend[] = [
    new HotRecommend($r('app.media.icon_popular'), "综合热门"),
    new HotRecommend($r('app.media.icon_rank'), "排行榜"),
    new HotRecommend($r('app.media.icon_weekly'), "每周必看"),
    new HotRecommend($r('app.media.icon_history'), "入站必刷"),
    new HotRecommend($r('app.media.icon_music'), "全站音乐榜"),
    new HotRecommend($r('app.media.icon_short_drama'), "短剧榜"),
  ]


  build() {
    Column(){
      List(){
        ListItem(){
          Column(){
            Row(){
              List({space: 20}){
                ForEach(this.hotRecommend, (item: HotRecommend) => {
                  ListItem(){
                    Column(){
                      Image(item.pic)
                        .width(35)
                        .margin({bottom: 5})
                      Text(item.title)
                        .fontSize(10)
                        .fontColor('#73787d')
                    }
                    .margin({right: 20})
                  }
                })
              }
              .height(60)
              .listDirection(Axis.Horizontal)
            }
            .padding({top: 10, bottom: 10})
            .margin({left: 10})

            Divider()
              .opacity(0.3)
              .padding({left: 10, right: 10})

            Column(){
              Row(){
                Row(){
                  Image($r('app.media.hotTopic'))
                    .width(16)
                    .margin({right: 5})
                  Text("热门话题")
                    .fontSize(14)
                    .fontWeight(FontWeight.Bold)
                }
                Row(){
                  Text('查看更多')
                    .fontSize(13)
                    .fontColor('#b9bcc0')
                    .margin({right: 3})
                  Image($r('app.media.rightArrow'))
                    .width(9)
                }
              }
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
              .alignItems(VerticalAlign.Center)

              List(){
                ForEach(this.homeTopic, (item: string) => {
                  ListItem(){
                    Text(item)
                      .fontSize(14)
                      .fontColor('#4b4d50')
                      .maxLines(1)
                      .textOverflow({overflow: TextOverflow.Ellipsis})
                      .margin({right: 7, top: 15})
                  }
                })
              }
              .lanes(2)
            }
            .padding(10)

            Divider()
              .opacity(0.3)
              .padding({left: 10, right: 10})
          }
        }

        ListItem(){
          VideoCover()
        }


      }
    }
    .width('100%')
    .backgroundColor('#ffffff')
    .layoutWeight(1)
  }
}