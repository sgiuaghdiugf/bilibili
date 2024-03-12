import { message } from './Setting'
import { Setting_Top } from './Setting_Top'

const FONT_COLOR:string='#999da0'


@Entry
@Component
struct Account_Data {
  @State List_Message:message[]=[
    new message('头像'),
    new message('昵称','呜啦啦'),
    new message('性别','保密'),
    new message('出生年月','生日当天会收到祝福'),
    new message('个性签名','这个人很神秘，什么都没有写'),
    new message('学校','填写学校发现更多校友~'),
    new message('头像挂件'),
    new message('UID','12344567'),
    new message('二维码名片'),
    new message('哔哩哔哩认证'),
  ]



  build() {
    Column(){
      Setting_Top({str:'账号资料',url:'pages/Setting'})
      ForEach(this.List_Message,(item:message,index)=>{
          Column(){
            if(index==0||index==6||index==7||index==9){
              Row(){ }
              .width('100%')
              .height(20)
              .backgroundColor('#f0f1f3')
            }
            this.part(item)
          }
      })
    }
    .height('100%')
    .backgroundColor('#f0f1f3')
  }

  @Builder part(m :message){
    Column(){
      Row(){
        Column(){
          Text(m.title)
            .fontSize(15)
        }
        .height('100%')
        .alignItems(HorizontalAlign.Center)
        .justifyContent(FlexAlign.Center)
        Column(){
          Row(){
            if(m.title=='头像'){
              Image($r('app.media.photo'))
                .height(50)
                .borderRadius(50)
                .margin({right:10})
            }
            if(m.remark !== ''){
              Text(m.remark)
                .fontSize(13)
                .fontColor(FONT_COLOR)
                .margin(m.title=='UID' ? {right:0} : {right:10})
            }
            if(m.title=='二维码名片'){
              Image($r('app.media.QR'))
                .width(30)
                .margin({right:10})
            }
            if(m.title!='UID'){
              Image($r('app.media.right_arrow'))
                .height(10)
            }
          }
        }
      }
      .height(m.title=='头像' ? 70:50)
      .width('100%')
      .padding({left:20,right:20})
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor('#FFFFFF')

      Divider()
        .padding({left:20})
        .strokeWidth(1)
        .opacity(0.4)
    }
  }
}