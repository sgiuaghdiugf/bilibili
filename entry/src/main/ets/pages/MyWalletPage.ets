import { MyWalletPageHead } from '../components/BottomBar'

@Entry
@Component
struct MyWalletPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      MyWalletPageHead()
    }
  }
}