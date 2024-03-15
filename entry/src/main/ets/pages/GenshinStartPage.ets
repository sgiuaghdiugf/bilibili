import router from '@ohos.router'
@Entry
@Component
struct VideoCreateComponent {
  @State videoSrc: Resource = $rawfile('原神启动_1.mp4')
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X
  @State isAutoPlay: boolean = true
  @State showControls: boolean = false
  @State previewUri: Resource = $r('app.media.cover')
  controller: VideoController = new VideoController()

  build() {
    Column() {
      Video({
        src: this.videoSrc,
        previewUri: this.previewUri,
        currentProgressRate: this.curRate,
        controller: this.controller
      }).width('100%').height("100%")
        .autoPlay(this.isAutoPlay)
        .controls(this.showControls)
        .objectFit(ImageFit.Cover)
        .onFinish(() => {
          router.replaceUrl({
            url: 'pages/HomePage'
          }, router.RouterMode.Single)
        })
    }
  }
}