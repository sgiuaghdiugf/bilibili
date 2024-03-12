import router from '@ohos.router'
@Entry
@Component
struct VideoCreateComponent {
  @State videoSrc: Resource = $rawfile('GenShinStart.mp4')
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X
  @State isAutoPlay: boolean = true
  @State showControls: boolean = false
  controller: VideoController = new VideoController()

  build() {
    Column() {
      Video({
        src: this.videoSrc,
        currentProgressRate: this.curRate,
        controller: this.controller
      }).width('100%').height("100%")
        .autoPlay(this.isAutoPlay)
        .controls(this.showControls)
        .objectFit(ImageFit.Contain)
        .onFinish(() => {
          router.replaceUrl({
            url: 'pages/HomePage'
          }, router.RouterMode.Single)
        })
    }
  }
}