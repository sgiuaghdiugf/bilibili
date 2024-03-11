import router from '@ohos.router'

const image: ResourceStr = router.getParams()['image']

@Entry
@Component
struct ShowImagePage {
  build() {
    Row() {
      Image(image)
        .onClick(() => {
          router.back()
        })
        .width('100%')
    }
    .backgroundColor('#0000000')
    .height('100%')
  }
}