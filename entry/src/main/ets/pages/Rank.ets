import { FONT_COLOR_CHOSE, FONT_COLOR_UNCHOSE, Rank_Top } from './Rank_Top'

@Extend(Button) function sure(){
  .backgroundColor('#f5f6f8')
  .fontSize(16)
  .fontColor(FONT_COLOR_UNCHOSE)
}

class work{
  img : Resource
  title : string

}

@Entry
@Component
struct Index {
  @State arr:number[] =[0,1,2,3,4,5,6,7,8,9]
  @State index:number=0
  // @State Janime:
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
  }

  @Builder rank(){
  List({space:10}){
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

    ForEach(this.arr,(item:number)=>{
      ListItem(){
        Text(`${item+this.index}`)
          .width('100%')
          .height(100)
          .fontSize(20)
          .fontColor(Color.White)
          .textAlign(TextAlign.Center)
          .borderRadius(10)
          .backgroundColor(0x007DFF)
      }
    },item=>item)
  }
  .scrollBar(BarState.Auto)
  .edgeEffect(EdgeEffect.Spring)
}
}