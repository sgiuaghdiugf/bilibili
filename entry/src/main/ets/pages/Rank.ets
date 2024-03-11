import { FONT_COLOR_CHOSE, FONT_COLOR_UNCHOSE, Rank_Top } from './Rank_Top'

@Extend(Button) function sure(){
  .backgroundColor('#f5f6f8')
  .fontSize(16)
  .fontColor(FONT_COLOR_UNCHOSE)
}

const BACKGOURNDCOLOR:string='#fefefe'

class work{
  img : Resource
  title : string
  worker: string
  style : string
  update : string

  constructor(img:Resource,title:string,worker:string,style:string,update:string) {
    this.img  = img;
    this.title  = title;
    this.worker  = worker;
    this.style  = style;
    this.update  = update;
  }
}

@Entry
@Component
struct Index {
  @State arr:number[] =[0,1,2,3,4,5,6,7,8,9]
  @State index:number=0
  @State Janime:work[]=[
    new work($r('app.media.J1'),'迷宫饭','九井谅子 角川集团','奇幻','更新至85话'),
    new work($r('app.media.J2'),'碧蓝之海','井上坚二 吉冈公威 讲谈社','都市','更新至92话'),
    new work($r('app.media.J3'),'葬送的芙莉莲','阿部司 山田钟人 小学馆','奇幻','更新至126话'),
    new work($r('app.media.J4'),'蓝色监狱','金城宗幸 之村优介 讲谈社','游戏竞技','更新至254话'),
    new work($r('app.media.J5'),'间谍过家家','远藤达哉','都市','更新至95话'),
    new work($r('app.media.J6'),'香格里拉边境','硬梨菜 不二凉介 讲谈社','游戏竞技','更新至169话'),
  ]
  @State
  @State rankNumber:Resource[]=[
    $r('app.media.rank1'),
    $r('app.media.rank2'),
    $r('app.media.rank3'),
    $r('app.media.rank4'),
    $r('app.media.rank5'),
    $r('app.media.rank6'),
  ]

  build() {
    Column() {
      Row(){
        Rank_Top()
        // Image()
      }

      Column(){
        this.rank()

      }

    }
    .backgroundColor(BACKGOURNDCOLOR)
  }

  @Builder rank(){
  List({space:6}){
    ListItem(){
      Row(){
        if(this.index==0){
          Button('日漫榜')
            .sure()
            .margin({left:30})
            .fontColor(FONT_COLOR_CHOSE)
            .backgroundColor('#fef2f6')
        }else{
            Button('日漫榜')
              .sure()
              .margin({left:30})
              .onClick(()=>{
                console.log('0');
                this.index=0
              })
        }
        if(this.index==1){
          Button('国漫榜')
            .sure()
            .margin({left:30})
            .fontColor(FONT_COLOR_CHOSE)
            .backgroundColor('#fef2f6')
        }else{
            Button('国漫榜')
              .sure()
              .margin({left:30})
              .onClick(()=>{
                console.log('1');
                this.index=1
              })
          }
          if(this.index==2){
            Button('免费榜')
              .sure()
              .margin({left:30})
              .fontColor(FONT_COLOR_CHOSE)
              .backgroundColor('#fef2f6')
          }else{
              Button('免费榜')
                .sure()
                .margin({left:30})
                .onClick(()=>{
                  console.log('2')
                  this.index=2
                })
            }
      }
      .margin({top:10})
      .height(40)
    }

    ForEach(this.Janime,(item:work,index)=>{
      ListItem(){
        Row(){
          Column(){
            Image(this.rankNumber[index])
              .width(40)
              .height(60)
              .margin({left:5,right:-10})
          }
          .justifyContent(FlexAlign.Start)
          .height('100%')

          Column(){
              Image(item.img)
                .width(100)
                .height(150)
                .margin({top:5})
            }
          .height('100%')

          Column(){
            Row(){
              Text(item.title)
                .fontSize(25)
            }
            .margin({top: 10})
            Row(){
              Column(){
                Text(item.worker)
                  .fontSize(13)
                  .fontColor(FONT_COLOR_UNCHOSE)
                Text(item.style)
                  .fontSize(13)
                  .fontColor(FONT_COLOR_UNCHOSE)
                Row(){
                  Text(item.update)
                    .fontSize(13)
                    .fontColor(FONT_COLOR_UNCHOSE)
                  Image($r('app.media.equal'))
                    .width(25)
                    .margin({left:110})
                }
              }
              .alignItems(HorizontalAlign.Start)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
            }
            .margin({top:60})

          }
          .justifyContent(FlexAlign.Start)
          .alignItems(HorizontalAlign.Start)
          .height('100%')
          .width(200)
          .margin({left:5})


        }
        .height(170)
        .width(340)
      }
    })
  }
  .scrollBar(BarState.Auto)
  .edgeEffect(EdgeEffect.Spring)

}

}