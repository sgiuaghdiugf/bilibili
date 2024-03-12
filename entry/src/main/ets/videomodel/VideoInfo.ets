export class video{
  id: number
  img: ResourceStr
  avatar: ResourceStr
  play: string
  barrage: string
  title: string
  up: string
  long: string
  publish: string
  fansCount: string
  videoCount: string
  time: string
  nowLook: string
  like: number
  coinCount: number
  collectCount: number
  forwardCount: number
  comment: string

  constructor(id, img, avatar, play, barrage, title, up, long, publish, fansCount, videoCount, time, nowLook, like, coinCount, collectCount, forwardCount, comment) {
    this.id = id
    this.img = img
    this.avatar = avatar
    this.play = play
    this.barrage = barrage
    this.title = title
    this.up = up
    this.long = long
    this.publish = publish
    this.fansCount = fansCount
    this.videoCount = videoCount
    this.time = time
    this.nowLook = nowLook
    this.like = like
    this.coinCount = coinCount
    this.collectCount = collectCount
    this.forwardCount = forwardCount
    this.comment = comment
  }
}

