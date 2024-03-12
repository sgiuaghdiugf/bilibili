import { FONT_COLOR_UNCHOSE } from './Rank_Top'
import router from '@ohos.router'
import { Setting_Top } from './Setting_Top'
export  class message{
  title : string
  remark : string =''

  constructor(title : string , remark? :string) {
    this.title=title
    if(remark != undefined)  this.remark=remark
  }
}

function test(){
  console.log('123')
}

@Entry
@Component
struct Setting {
  @State List_Message: message[]=[
    new message('账号资料'),
    new message('安全隐私'),
    new message('收货信息'),
    new message('开屏画面设置'),
    new message('首页推荐设置' ,'双列/Wi-Fi/免流/移动网络下自动播放'),
    new message('播放设置'),
    new message('离线设置'),
    new message('追番/追剧设置'),
    new message('推送设置'),
    new message('消息设置'),
    new message('下载管理'),
    new message('清理存储空间'),
    new message('其他设置'),
    new message('定时关闭','不开启'),
    new message('睡眠提醒','不提醒'),
    new message('深色设置'),
    new message('我的客服'),
    new message('关于哔哩哔哩'),
    new message('商务合作'),
    new message('用户协议'),
    new message('隐私政策'),
    new message('隐私权限设置'),
    new message('个人信息收集清单'),
    new message('第三方信息共享清单')
  ]
  @State Click_color: string ='#FFFFFF'

  build() {
   Column(){
     Setting_Top({ str:'设置' })

     List(){
       ForEach(this.List_Message,(item:message,index)=>{
          ListItem(){
            Column(){
              if(index==0||index==3||index==8||index==13||index==15||index==16||index==19){
                Row(){ }
                .width('100%')
                .height(20)
                .backgroundColor('#f0f1f3')
              }
              this.part(item)
            }

          }
       })
       ListItem(){
         Column(){
           Row(){}
           .width('100%')
           .height(20)
           .backgroundColor('#f0f1f3')
           Row(){
             Text('账号切换')
           }
           .width('100%')
           .height(50)
           .padding({left:20,right:20})
           .justifyContent(FlexAlign.Center)
           .backgroundColor('#ffffff')
           Row(){}
           .width('100%')
           .height(20)
           .backgroundColor('#f0f1f3')
           Row(){
             Text('退出登录')
           }
           .width('100%')
           .height(50)
           .padding({left:20,right:20})
           .justifyContent(FlexAlign.Center)
           .backgroundColor('#ffffff')
           Row(){}
           .width('100%')
           .height(20)
           .backgroundColor('#f0f1f3')
         }

       }
     }
     .layoutWeight(1)

    Row(){}
   }
    .height('100%')
    .backgroundColor('#f0f1f3')
  }



   @Builder  part(m:message){
    Column(){
      Row(){
        Column(){
          Text(m.title)
          .fontSize(15)

          if(m.remark !== ''){
            Text(m.remark)
              .fontSize(10)
              .fontColor(FONT_COLOR_UNCHOSE)
              .margin({top:5})
          }
        }
        .height('100%')
        .alignItems(HorizontalAlign.Start)
        .justifyContent(FlexAlign.Center)
        Image($r('app.media.right_arrow'))
          .height(10)
      }
      .height(50)
      .width('100%')
      .padding({left:20,right:20})
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor(this.Click_color)
      .onClick(()=>{
        if (m.title=='账号资料'||m.title=='收货信息'||m.title=='播放设置') {
          router.pushUrl({
            url: 'pages/Account_Data'
          })
        }
      })

      Divider()
        .padding({left:20})
        .strokeWidth(1)
        .opacity(0.4)
    }


    
  }

}