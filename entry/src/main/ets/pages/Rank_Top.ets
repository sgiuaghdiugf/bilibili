//对一些固定属性做设置
import router from '@ohos.router';
export  const FONT_COLOR_UNCHOSE:string ='#5e6265';
export const FONT_COLOR_CHOSE:string ='#fc8bab';

@Component
export struct Rank_Top{

  //对头部的界面规划
  build(){
    Column(){
      Row(){
        //返回箭头图片
         Column(){
           Image($r('app.media.back'))
             .width(17)
             .margin({top:'6%',left:'7%'})
             .onClick(()=>{
               router.back()
             })
         }
         .height('100%')

        //三个选项设置
         Column(){
           Row(){
             Text()
           }
           Row(){
             Text('推荐')
               .fontColor(FONT_COLOR_UNCHOSE)
           }
           Row(){

           }
         }
         .margin({left:'11.5%'})
         .padding({left:15, right:15})
         .height('100%')
         .justifyContent(FlexAlign.SpaceBetween)

         Column(){
           Row(){
             Text()
           }
           Row(){
             Text('排行')
               .fontColor(FONT_COLOR_CHOSE)
           }
           Row(){
             Divider()
               .color(FONT_COLOR_CHOSE)
               .width(60)
               .strokeWidth(3)
           }
         }
         .padding({left:15,right:15})
         .height('100%')
         .justifyContent(FlexAlign.SpaceBetween)

         Column(){
           Row(){
             Text()
           }
           Row(){
             Text('分类')
               .fontColor(FONT_COLOR_UNCHOSE)
           }
           Row(){

           }
         }
         .padding({left:15,right:15})
         .height('100%')
         .justifyContent(FlexAlign.SpaceBetween)
       }
       .width('100%')
       .height(60)

       Row(){
         Divider()

       }
      .margin({top:5})
    }
    .height(60)
  }
}