<<<<<<< HEAD
import {MyWalletPageHead,MyWalletElement,
  MyWalletElement2,MyWalletElement3,MyWalletElement4} from '../components/MyWalletComponents'
=======
import { MyWalletPageHead } from '../components/BottomBar'
>>>>>>> jackson

@Entry
@Component
struct MyWalletPage {
  @State message: string = 'Hello World'

  build() {
<<<<<<< HEAD
   Column({space:5}){
     /*页面标题部分*/
    MyWalletPageHead(
      {
        icon:$r('app.media.sch_fanhui'),
        page_name:'我的钱包',
        icon_msg:$r('app.media.sch_gengduo')
      });
     /*我的B币栏*/
    MyWalletElement()

     /*我的收入*/
     MyWalletElement2()

     /*卡券包*/
     MyWalletElement3()

     /*联名卡福利*/
     MyWalletElement4()


   }
   .align(Alignment.Center)
   .backgroundColor('#f6f7f9')
    .width('100%')
    .height('100%')
=======
    Column() {
      MyWalletPageHead()
    }
>>>>>>> jackson
  }
}