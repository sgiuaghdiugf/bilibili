@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World'
  icons: ResourceStr[] = [
    $r('app.media.weichat'),
    $r('app.media.qq'),
    $r('app.media.weibo')
  ]

  build() {
    Column() {
      Column(){
        Row(){
          Text('登录')
            .fontSize(48)
        }
        .justifyContent(FlexAlign.Center)
        .width('100%')
        .margin({bottom: '20%'})

        Column(){
          Column(){
            Text('用户名')
            .fontSize(14)
            .fontColor('#39393b')

            Row(){
              Image($r('app.media.user'))
                .width(18)
                .margin({right: '2%'})
              TextInput({placeholder: '请输入用户名'})
                .width('93%')
                .placeholderColor('#c0c0c0')
                .backgroundColor(Color.White)
            }
            Divider()
              .width('100%')
              .color('#c0c0c0')
              .strokeWidth(1)
          }
          .width('100%')
          .margin({bottom: '10%'})
          .alignItems(HorizontalAlign.Start)

          Column(){
            Text('密码')
              .fontSize(14)
              .fontColor('#39393b')

            Row(){
              Image($r('app.media.password'))
                .width(18)
                .margin({right: '2%'})
              TextInput({placeholder: '请输入密码'})
                .width('93%')
                .placeholderColor('#c0c0c0')
                .backgroundColor(Color.White)
            }
            Divider()
              .width('100%')
              .color('#c0c0c0')
              .strokeWidth(1)
          }
          .width('100%')
          .alignItems(HorizontalAlign.Start)
          .margin({bottom: '5%'})

          Row(){
            Text('忘记密码？')
              .fontSize(12)
              .fontColor('#9f9f9f')
          }
          .width('100%')
          .justifyContent(FlexAlign.End)
          .margin({bottom: '5%'})

          Row(){
            Text('登 录')
              .fontColor(Color.White)
          }
          .width('100%')
          .height('7%')
          .border({radius: 20})
          .justifyContent(FlexAlign.Center)
          .margin({bottom: '20%'})
          .linearGradient({
            angle: 90,
            colors: [[0xc034f7, 0.1], [0xfc8bab, 0.7]]
          })

          Column(){
            Text('第三方登录')
            .fontSize(16)
            .fontColor('#6c6c6c')
            .margin({bottom: '5%'})
            Row(){
              List(){
                ForEach(this.icons, icon => {
                  ListItem(){
                    Image(icon)
                      .width(40)
                      .margin({right: '5%'})
                  }
                })
              }
              .listDirection(Axis.Horizontal)
              .height('10%')
            }
            Text('立即注册')
              .fontSize(16)
              .fontColor('#6c6c6c')
          }

        }
      }
      .width('90%')
      .height('90%')
      .padding({top: 50, bottom: 50, left: 30, right: 30})
      .position({x: '5%', y: '5%'})
      .backgroundColor(Color.White)
      .border({radius: 10})
    }
    .width('100%')
    .height('100%')
    .linearGradient({
      angle: 225,
      colors: [[0xc034f7, 0.1], [0xfc8bab, 0.7]]
    })
  }
}