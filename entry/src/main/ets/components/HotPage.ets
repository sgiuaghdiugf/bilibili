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