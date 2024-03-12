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
  @State Canime:work[]=[
    new work($r('app.media.C2'),'我家老婆来自一千年前','之画文化','都市','更新至257话'),
    new work($r('app.media.C3'),'我的假女友正全力防御她们的进攻','原著：四处置花','都市','更新至小假条'),
    new work($r('app.media.C5'),'为了美少女游戏，女装也是不可避免的','作者：二三玖陆工作室','都市','更新至056话'),
    new work($r('app.media.C6'),'天生媚骨的我被病娇徒儿盯上了','二三玖陆工作室','奇幻','更新至015话'),
    new work($r('app.media.C7'),'转生成为异世界的唯物者，爷只对女鬼重拳出击','二三玖陆工作室','都市','更新至030话'),
    new work($r('app.media.C8'),'好徒儿你就饶了为师伐','二三玖陆工作室','玄幻','更新至242话'),
  ]
  @State Fanime:work[]=[
    new work($r('app.media.F1'),'本圣女摊牌了','兔兔','奇幻','更新至331话'),
    new work($r('app.media.F2'),'修炼成仙的我只想养成女徒弟','二三玖陆工作室','奇幻','更新至231话'),
    new work($r('app.media.F3'),'反派师尊的我带着徒弟们天下无敌','菠萝包轻小说','奇幻','更新至109话'),
    new work($r('app.media.F4'),'长的太像BOSS，结果世人真的信了','兔兔','奇幻','更新至65话'),
    new work($r('app.media.F5'),'人生深浅','辣猫漫画','都市','更新至11话'),
    new work($r('app.media.F6'),'老婆请安分','之画文化','都市','更新至55话'),
  ]
  @State rankNumber:Resource[]=[
    $r('app.media.rank1'),
    $r('app.media.rank2'),
    $r('app.media.rank3'),
    $r('app.media.rank4'),
    $r('app.media.rank5'),
    $r('app.media.rank6'),
    $r('app.media.rank0'),
  ]

  build() {
    Column() {
      Row(){
        Rank_Top()
      }

      Column(){
        this.rank()
      }
      .layoutWeight(1)

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
            .margin({left:'22%'})
            .fontColor(FONT_COLOR_CHOSE)
            .backgroundColor('#fef2f6')
        }else{
            Button('日漫榜')
              .sure()
              .margin({left:'22%'})
              .onClick(()=>{
                this.index=0
              })
        }
        if(this.index==1){
          Button('国漫榜')
            .sure()
            .margin({left:'4%'})
            .fontColor(FONT_COLOR_CHOSE)
            .backgroundColor('#fef2f6')
        }else{
            Button('国漫榜')
              .sure()
              .margin({left:'4%'})
              .onClick(()=>{
                this.index=1
              })
          }
          if(this.index==2){
            Button('免费榜')
              .sure()
              .margin({left:'4%'})
              .fontColor(FONT_COLOR_CHOSE)
              .backgroundColor('#fef2f6')
          }else{
              Button('免费榜')
                .sure()
                .margin({left:'4%'})
                .onClick(()=>{
                  this.index=2
                })
            }
      }
      .margin({top:10})
      .height(40)
    }

    ForEach((this.index==0 ? this.Janime : (this.index==1 ? this.Canime : this.Fanime)),(item:work,index)=>{
      ListItem(){
        Row(){
            if(index<3){
              Column(){
                Image(this.rankNumber[index])
                  .width("10%")
                  .margin({left:5,right:-7})
              }
              .justifyContent(FlexAlign.Start)
              .height('100%')
            }
            else {
              Column(){
                Image(this.rankNumber[6])
                  .width("4%")
                  .margin({left:5,right:-5})
              }.justifyContent(FlexAlign.Start)
              .height('100%')
              Column(){
                Image(this.rankNumber[index])
                  .width("4%")
                  .margin({left:5})
              }
              .justifyContent(FlexAlign.Start)
              .height('100%')
            }

          Column(){
              Image(item.img)
                .width(120)
                .margin({top:5})
            }
          .height('100%')
          .width('30%')

          Column(){
            Row(){
              Text(item.title)
                .fontSize(20)
                .maxLines(2)
                .textOverflow({overflow:TextOverflow.Ellipsis})
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
                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .alignItems(HorizontalAlign.Start)
              .justifyContent(FlexAlign.SpaceBetween)
              .height(60)
              .width('100%')
            }

          }
          .justifyContent(FlexAlign.SpaceBetween)
          .alignItems(HorizontalAlign.Start)
          .height('100%')
          .width('58%')
          .margin({left:5})
          .padding({right:20})


        }
        .height(170)
        .width('100%')
      }
    })
  }
  .scrollBar(BarState.Auto)
  .edgeEffect(EdgeEffect.Spring)
  .width('100%')
}

}