import {my_space_head} from '../components/sch_MySpaceComponent'
import {my_space_tab} from '../components/MySpacePage_Tabs'
@Entry
@Component
struct NestedScroll {
  @State listPosition: number = 0; // 0代表滚动到List顶部，1代表中间值，2代表滚动到List底部。
  private arr: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  private scrollerForScroll: Scroller = new Scroller()
  private scrollerForList: Scroller = new Scroller()
  @State head_opacity:number = 1;
  @State yOffset:number = 1;
  build() {
    Column() {
      Scroll(this.scrollerForScroll) {
        Column() {
          my_space_head()
            .opacity(this.head_opacity)

          my_space_tab()
            .margin({top:10})
        }
      }
      .onScroll((yOffset:number)=>{
        this.yOffset =yOffset;
      })
      .onScrollFrameBegin((offset:number) =>{
        if(offset.valueOf() > 0){
          console.info('向上滑动'+this.yOffset.toString())
          this.head_opacity -= 0.01;
          if(this.head_opacity < 0) this.head_opacity = 0;
          console.info('透明度'+this.head_opacity)
        }else{
          console.info('向下滑动'+offset)
          this.head_opacity += 0.05;
          if(this.head_opacity > 1) this.head_opacity = 1;
          console.info('透明度'+this.head_opacity)
        }

        return {offsetRemain:offset}
      })
      .scrollBar(BarState.Off)
      .width("100%").height("100%")
    }.width('100%').height('100%').backgroundColor('#ffffff')
  }
}