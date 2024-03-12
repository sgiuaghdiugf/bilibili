import router from '@ohos.router'
import { VideoCover } from '../components/VideoCover'
import { FONT_COLOR_UNCHOSE } from './Rank_Top'

@Entry
@Component
struct Saving {
  @State Index_Moren1:boolean=true
  @State Index_Moren2:boolean=true
  @State Index_Moren3:boolean=true
  @State Index_Moren4:boolean=true

  build() {
    Column(){
      this.top()
      List(){
        ListItem(){
          Column(){
            Row(){
              Row(){
                Image(this.Index_Moren1==true ? $r("app.media.arrow_on"):$r('app.media.arrow_down'))
                  .width('4%')
                  .margin({left:'4%',right:'4%'})
                Text('默认收藏夹')
                Text(' · 5')
                  .fontSize(13)
                  .fontColor(FONT_COLOR_UNCHOSE)
              }
              Row(){
                Image($r('app.media.play'))
                  .width("5%")
                  .margin({right:'3%'})
                Text('全部播放')
                  .fontColor('#fd6598')
                Image($r('app.media.find'))
                  .width('4%')
                  .margin({left:'5%',right:'3%'})
                Image($r('app.media.video_more'))
                  .width('6%')
              }
            }
            .height(40)
            .width('100%')
            .alignItems(VerticalAlign.Center)
            .justifyContent(FlexAlign.SpaceBetween)
            .onClick(()=>{
              this.Index_Moren1=!this.Index_Moren1
            })
            if(this.Index_Moren1==false){
              VideoCover()
            }
          }
        }

        ListItem(){
          Column(){
            Row(){
              Row(){
                Image(this.Index_Moren2==true ? $r("app.media.arrow_on"):$r('app.media.arrow_down'))
                  .width('4%')
                  .margin({left:'4%',right:'4%'})
                Text('我创建的收藏夹')
                Text(' · 1')
                  .fontSize(13)
                  .fontColor(FONT_COLOR_UNCHOSE)
              }
            }
            .height(40)
            .width('100%')
            .alignItems(VerticalAlign.Center)
            .onClick(()=>{
              this.Index_Moren2=!this.Index_Moren2
            })
            if(this.Index_Moren2==false){
              VideoCover()
            }
          }
        }
        ListItem(){
          Column(){
            Row(){
              Row(){
                Image(this.Index_Moren3==true ? $r("app.media.arrow_on"):$r('app.media.arrow_down'))
                  .width('4%')
                  .margin({left:'4%',right:'4%'})
                Text('我的收藏与订阅')
                Text(' · 0')
                  .fontSize(13)
                  .fontColor(FONT_COLOR_UNCHOSE)
              }
            }
            .height(40)
            .width('100%')
            .alignItems(VerticalAlign.Center)
            .onClick(()=>{
              this.Index_Moren3=!this.Index_Moren3
            })
            if(this.Index_Moren3==false){
              VideoCover()
            }
          }
        }
        ListItem(){
          Column(){
            Row(){
              Row(){
                Image($r('app.media.shaohouzaikan'))
                  .width('4%')
                  .margin({left:'4%',right:'4%'})
                Text('稍后再看')
                Text(' · 0')
                  .fontSize(13)
                  .fontColor(FONT_COLOR_UNCHOSE)
              }

            }
            .height(40)
            .width('100%')
            .alignItems(VerticalAlign.Center)
            .onClick(()=>{
              this.Index_Moren4=!this.Index_Moren4
            })
            if(this.Index_Moren4==false){
              VideoCover()
            }
          }
        }
      }
      .layoutWeight(1)
    }
  }

  @Builder
    top(){
      Column(){
        Row(){
          Column(){
            Row(){
              Image($r('app.media.back'))
                .height(20)
                .margin({left:20})
                .onClick(()=>{
                  router.back()
                })
              Text('我的收藏')
                .margin({left: 20})
                .fontSize(18)
            }
            .justifyContent(FlexAlign.Start)
            .alignItems(VerticalAlign.Center)
            .height(60)
            .backgroundColor('#FFFFFF')
          }
          Column(){
            Image($r('app.media.add'))
              .width(20)
          }
          .margin({right:20})
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')
        .height(60)
        Row(){
          Column(){
            Row(){
              Text('视频')
                .fontColor('#fd6598')
            }
            .width('100%')
            .justifyContent(FlexAlign.Center)
            Row(){
              Divider()
                .strokeWidth(2)
                .color("#fd6598")
            }
          }
          .width(35)
          .height('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          .alignItems(HorizontalAlign.Start)
        }
        .margin({left:'7%'})
        .justifyContent(FlexAlign.Start)
        .width('100%')
        .height(30)
      }
    }
}