
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

class Living{
  pic: ResourceStr
  avatar: ResourceStr
  title: string
  name: string
  person: string
  type: string

  constructor(pic: ResourceStr, avatar: ResourceStr, title: string, name: string, person: string, type: string) {
    this.pic = pic
    this.avatar = avatar
    this.title = title
    this.name = name
    this.person = person
    this.type = type
  }
}

@Builder function SwiperModule(){
  Swiper(this.swiperController) {
    LazyForEach(this.data, (item: ResourceStr) => {
      Stack(){
        Image(item).width('100%').height(100).border({radius: 5})
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
  .margin(3)
  .itemSpace(10)
  .indicatorStyle({right: 10, size: 12, color: '#8a8182', selectedColor: '#ff679a'})
}

@Builder function FocusModule(){
  Column(){
    Row(){
      Row(){
        Text('我的关注')
          .fontSize(14)
          .fontWeight(FontWeight.Bold)
          .margin({right: 5})
        Text('12')
          .fontSize(12)
          .fontColor('#fe9cbd')
        Text('人正在直播')
          .fontSize(14)
          .fontColor('#c1c4c8')
          .margin({right: 5})
        Image($r('app.media.live_single'))
          .width(17)
      }

      Row(){
        Stack(){
          Image($r('app.media.live_ing_1'))
            .width(25)
            .border({radius: 15, width: 2, style: BorderStyle.Solid, color: Color.White})

          Image($r('app.media.live_ing_2'))
            .width(25)
            .border({radius: 10})
            .margin({right: 25})
            .border({radius: 15, width: 2, style: BorderStyle.Solid, color: Color.White})

          Image($r('app.media.live_ing_3'))
            .width(25)
            .border({radius: 10})
            .margin({right: 50})
            .border({radius: 15, width: 2, style: BorderStyle.Solid, color: Color.White})
        }
        .margin({right: -20})

        Text('全部')
          .fontSize(12)
          .fontColor('#c2c4c8')

        Image($r('app.media.rightArrow'))
          .width(13)
      }
    }
    .width('100%')
    .margin({bottom: 20})
    .justifyContent(FlexAlign.SpaceBetween)

    List({space: 15}){
      ForEach(this.livings, (living: Living) => {
        ListItem(){
          Column(){
            Stack(){
              Image(living.avatar)
                .width(40)
                .border({radius: 20, width: 2, style: BorderStyle.Solid, color: '#ff74a3'})
                .margin({bottom: 5})
              Image($r('app.media.live_charge'))
                .width(15)
                .position({x: 26, y: 26})
            }
            Text(living.name)
              .fontSize(10)
              .maxLines(2)
          }
          .width(50)
        }
      })
    }
    .height(80)
    .listDirection(Axis.Horizontal)
  }
  .padding(10)
}

@Builder function LiveModule(){
  Column(){
    Row(){
      List(){
        ListItem(){
          Text('推荐')
            .fontSize(14)
            .fontWeight(FontWeight.Bold)
            .lineHeight(20)
        }
        ForEach(this.recommend, (item: string, index) => {
          ListItem(){
            Text(item)
              .fontSize(14)
              .fontColor('#adb1b6')
              .lineHeight(20)
          }
          .margin({left: 20})
        })
      }
      .height(20)
      .listDirection(Axis.Horizontal)
      .layoutWeight(1)
      .margin({right: 15})

      Image($r('app.media.live_sort'))
        .width(25)
        .height(20)
    }
    .padding(10)
    .width('100%')


    List(){
      ForEach(this.livings, (item: Living, index) => {
        ListItem(){
          Column(){
            Stack(){
              Image(item.pic)
                .width('100%')
                .border({radius: 5})

              Row(){
                Row(){
                  Image($r('app.media.live_nowlook'))
                    .width(15)
                    .margin({right: 5})
                  Text(item.person)
                    .fontSize(12)
                    .fontColor(Color.White)
                }
                Text(item.type)
                  .fontSize(12)
                  .fontColor(Color.White)
              }
              .position({x: 0, y: 75})
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
              .padding({left: 5, right: 5, top: 3, bottom: 3})
              .border({radius: {bottomLeft: 5, bottomRight: 5}})
            }
            Row(){
              Image(item.avatar)
                .width(35)
                .border({radius: 16})
                .margin({right: 5})
              Column(){
                Text(item.title)
                  .maxLines(1)
                  .textOverflow({overflow: TextOverflow.Ellipsis})
                  .width('100%')
                  .fontSize(14)
                  .margin({bottom: 5, top: 3})
                Row(){
                  Text(item.name)
                    .maxLines(1)
                    .textOverflow({overflow: TextOverflow.Ellipsis})
                    .fontSize(12)
                    .fontColor('#abafb4')
                  Image($r('app.media.video_more'))
                    .width(15)
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width('100%')
            }
            .padding({right: 40, top: 5, bottom: 5})
          }
          .width('100%')
          .border({radius: 5})
          .margin({bottom: 5})
          .padding({bottom: 5})
          .backgroundColor(Color.White)
        }
      })
    }
    .width('100%')
    .margin({left: 5})
    .lanes({maxLength: 175, minLength: 175})
  }
  .backgroundColor('#f1f2f4')
}

@Component
export struct LivePage {
  private swiperController: SwiperController = new SwiperController()
  private data: MyDataSource = new MyDataSource([])

  swiperInfo: ResourceStr[] = [
  $r('app.media.live_1'),
  $r('app.media.live_2'),
  $r('app.media.live_3'),
  $r('app.media.live_4'),
  $r('app.media.live_5'),
  ]
  recommend: string[] = [
    "人气",
    "颜值",
    "英雄联盟",
    "虚拟主播",
    "王者荣耀",
    "娱乐",
    "单机主播",
    "电台",
    "CS:GO",
    "视频唱见",
    "聊天室",
    "互动玩法",
    "帮我玩"
  ]
  livings: Living[] = [
    new Living($r('app.media.living_item_1'), $r('app.media.living_1'), "二姐领衔出战，2月废萌大乱斗【新作前瞻 2024/02】", "Galgame批评", "103", "聊天"),
    new Living($r('app.media.living_item_2'), $r('app.media.living_2'), "与雌小鬼日语对线4分12秒，全程无滤镜无美颜无对白，试问有谁能坚持到", "星羽幸Official" ,"302", "虚拟主播"),
    new Living($r('app.media.living_item_3'), $r('app.media.living_3'), "てへぺりんこ！炽焰天穹（绯染天空/红烧天堂）解包数据、版本速报、搬运、不定期更新。每周六上午直播小游戏，中午雀魂", "茅森月哥", "63", "游戏解包"),
    new Living($r('app.media.living_item_4'), $r('app.media.living_4'), "目前身处日本的虚拟魔法使？欢迎关注！ ※未经允许禁止转载视频 淘宝卡比的打油铺 闲聊q群228191837 街机卡群 466805695", "卡比カビィOfficial", "42", "游戏"),
    new Living($r('app.media.living_item_5'), $r('app.media.living_5'), "哇呼", "苏婆玛丽奥", "89", "游戏"),
    new Living($r('app.media.living_item_6'), $r('app.media.living_6'), "键视“台长”的个人号兼本台“官方号”运营。全面报道Key社相关资讯，深度剖析大小键事。同时也是键系美图bot（不自动）", "StuartRiki_鍵視", "29", "资讯"),
    new Living($r('app.media.living_item_7'), $r('app.media.living_7'), "从壳里出来的小鸟精灵~ 日本語表記:小鳥遊あんず anzu.takanashi.official@gmail.com", "小鸟游杏子Official", "2305", "虚拟主播"),
    new Living($r('app.media.living_item_8'), $r('app.media.living_8'), "来自BanG Dream! Project，「MyGO!!!!!」与「Ave Mujica」的官方账号", "MyGO_AveMujica", "23423", "音乐"),
    new Living($r('app.media.living_item_9'), $r('app.media.living_9'), "bambikano.info@gmail.com", "鹿乃ちゃん", "16234", "虚拟主播"),
    new Living($r('app.media.living_item_10'), $r('app.media.living_10'), "求求了，别盗视频了",  "三哈兄弟-沙雕日常", "10", "搞笑"),
    new Living($r('app.media.living_item_11'), $r('app.media.living_11'), "VISUAL ARTS/Key的官方账号。最新作等与Key相关的情报将由VISUAL ARTS营业本部进行公告。",  "Key公式", "15323", "情报"),
    new Living($r('app.media.living_item_12'), $r('app.media.living_12'), "4/20 上海MAO 线下LIVE《过去和未来》 冰兔兔兔兔！希望大家可以听到每首歌曲的最后一秒，我会超级开心的！！！",  "冰兔w", "2002", "虚拟主播")
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
        ListItem(){
          SwiperModule()
        }
        ListItem(){
          FocusModule()
        }
        ListItem(){
          LiveModule()
        }
      }
    }
    .layoutWeight(1)


  }
}