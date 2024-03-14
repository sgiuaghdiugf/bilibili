import router from '@ohos.router'
import { my_course_Tabs_01, my_course_Tabs_02 } from '../components/sch_my_course_tabs'
import { Head_01, Head_02 } from '../pages/MyCoursePage'

@Entry
@Component
struct NestedScroll {
  @State listPosition: number = 0; // 0代表滚动到List顶部，1代表中间值，2代表滚动到List底部。
  private arr: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  private scrollerForScroll: Scroller = new Scroller()
  private scrollerForList: Scroller = new Scroller()

  build() {
    Column() {
      Head_01()
      Scroll(this.scrollerForScroll) {
        Column() {
          Head_02()

          Column() {
            my_course_Tabs_01()
          }
          .height(250)

          Column() {
            my_course_Tabs_02()
          }
          .height(800)

        }
      }
      .width("100%").height("100%")
      .scrollBar(BarState.Off)
    }.width('100%').height('100%').backgroundColor(0xDCDCDC)
  }
}