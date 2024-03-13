import router from '@ohos.router'
import { Commodity } from '../Class/Commodity'

@Component
struct RightArrow {
  build() {
    Image($r('app.media.right_arrow_2'))
      .width(20)
      .fillColor('#CCCCCC')

  }
}

@Component
struct moreCard {
  private image: ResourceStr
  private name: string
  private score: number

  build() {
    Row() {
      Row() {
        Image(this.image)
          .width(30)
          .height(30)
          .borderRadius(5)
        Text(this.name)
          .fontSize(12)
          .margin({ left: 9 })
      }
      Row() {
        Image($r('app.media.right_arrow_2'))
          .width(12)
          .fillColor('#FFFFFF')
      }
      .borderRadius(6)
      .backgroundColor('#CCCCCC')
    }
    .width(165)
    .borderRadius(10)
    .padding(5)
    .border({ width: 1, color: '#E7E7E7' })
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor('#FFFFFF')

  }
}

@Component
struct commodityDetailBottom {
  private commodity: Commodity

  build() {
    Column() {
      Row() {
        Row() {
          Image($r('app.media.customer_service'))
            .width(30)
          Image($r('app.media.shop_car'))
            .width(35)
            .margin({ left: 15, right: 10 })
        }

        Row() {
          Text("加购物车")
            .fontSize(16)
            .fontColor('#D7557A')
        }
        .width(120)
        .borderRadius(25)
        .border({ width: 2, color: $r('app.color.pink') })
        .height(45)
        .justifyContent(FlexAlign.Center)

        Row() {
          Column() {
            Text("支付定金")
              .fontSize(16)
              .fontColor('#FFFFFF')
            Text(`${this.commodity.price * 0.15}`)
              .fontSize(16)
              .fontColor('#FFFFFF')
          }
        }
        .backgroundColor('#FF5F93')
        .borderRadius(25)
        .width(120)
        // .border({ width: 1, color: Color.Red })
        .height(45)
        .justifyContent(FlexAlign.Center)
      }
      .padding(10)
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      // .layoutWeight(1)
      .border({ width: 1, color: '#EBEBEB' })
      .borderWidth({ left: 0, right: 0, bottom: 0 })
      .backgroundColor('#FFFFFF')
    }
    .width('100%')
  }
}

@Styles function card() {
  .width('100%')
  // .border({ width: 1, color: Color.Black })
  .borderRadius(5)
  .backgroundColor('#FFFFFF')
  .padding(10)
  // .padding({ left: 10, right: 10, top: 10 })
}

@Component
struct Tag {
  private title: string

  build() {
    Row() {
      Text(`${this.title}`)
        .fontSize(12)
        .fontColor($r('app.color.pink'))
    }
    .borderRadius(5)
    // .border({ width: 1, color: '#000000' })
    .padding(5)
    .backgroundColor('#FFEEF4')

  }
}

@Entry
@Component
struct CommodityDetailPage {
  private commodity: Commodity = router.getParams()['commodity']

  build() {
    Column() {
      // list
      List() {
        ListItem() {

          Stack() {
            Image(this.commodity.images[0])
              .width('100%')
            Row() {
              Row() {
                Image($r('app.media.commodity_left_arrow'))
                  .width(25)
                  .onClick(() => {
                    router.back()
                  })
              }
              .borderRadius('50%')
              .backgroundColor("#fdfdfd")

              Row() {
                Image($r('app.media.commodity_repost'))
                  .width(25)
              }
              .borderRadius('50%')
              .backgroundColor("#fdfdfd")

            }
            .opacity(0.8)
            .width('100%')
            .borderRadius('50%')
            .justifyContent(FlexAlign.SpaceBetween)
            .position({ x: 0, y: 10 })
            .padding({ left: 10, right: 10 })
          }

        }

        ListItem() {
          Column() {
            Column() {
              Stack() {
                Row() {
                  Column() {
                    Row() {
                      Text("定金￥")
                        .fontSize(14)
                        .fontColor($r('app.color.pink'))
                      Text(`${this.commodity.price * 0.15}`)
                        .fontSize(20)
                        .fontColor($r('app.color.pink'))
                    }
                    .width('100%')

                    Row() {
                      Row() {
                        Text(`新人卷后￥${this.commodity.countPrice}`)
                          .fontSize(12)
                          .fontColor($r('app.color.pink'))
                        Image($r('app.media.right_arrow_2'))
                          .width(12)
                          .fillColor($r('app.color.pink'))
                      }
                      // .border({ width: 1, color: Color.Black })
                      .backgroundColor('#FFEEF4')

                      Text(`原价${this.commodity.price}`)
                        .fontSize(15)
                        .fontColor('#66686C')
                        .decoration({ type: TextDecorationType.LineThrough })
                        .margin({ left: 10 })
                    }
                    // .border({ width: 1, color: Color.Black })
                    .width('100%')
                  }
                  .width('50%')

                  Text("售完为止")
                    .fontSize(16)
                    .fontColor($r('app.color.pink'))


                }
                .height(70)
                .justifyContent(FlexAlign.SpaceBetween)
                .padding(10)
                // .border({ width: 1, color: Color.Black })
                .width('100%')

                Image($r('app.media.BILIBILI'))
                  .width(40)
                  .position({ x: 200, y: 20 })
                  .fillColor('#fff8d8df')
              }

              Row() {
                Row() {
                  Tag({ title: "满89减7元" })
                  Tag({ title: "满20减5元" })
                    .margin({ left: 5, right: 5 })
                  Tag({ title: "满119减9元" })
                }

                Row() {
                  Text("    领卷")
                    .fontSize(12)
                    .fontWeight(FontWeight.Bold)
                    .fontColor('#FFFFFF')
                  Image($r('app.media.right_arrow_2'))
                    .width(10)
                    .fillColor('#FFFFFF')
                }
                .margin({ right: -20 })
                .width(70)
                .height(20)
                .borderRadius(10)
                .backgroundColor('#FF589A')
              }
              .justifyContent(FlexAlign.SpaceBetween)
              .width('100%')

              Row() {
                Row() {
                  Text(this.commodity.detailName)
                    .fontSize(16)
                    .fontWeight(FontWeight.Bold)

                }
                .width('80%')

                Row() {
                  Column() {
                    Image($r('app.media.love'))
                      .width(30)
                    Text(`${this.commodity.wants}人想要`)
                      .fontSize(12)
                  }
                }
                .width('100%')
              }
              .margin({ top: 10, bottom: 10 })
              .width('100%')


              Row() {
                Row() {
                  Row() {
                    Image($r('app.media.rank_list'))
                      .width(20)
                    Text("排行榜")
                      .margin({ left: 5 })
                      .fontSize(14)
                      .fontWeight(FontWeight.Bold)
                      .fontColor('#FF922D')
                  }
                  .backgroundColor('#FFF7E8')
                  .borderRadius(10)
                  .padding({ top: 5, bottom: 5, left: 10, right: 10 })

                  Text(`${this.commodity.tagName}`)
                    .fontSize(14)
                }

                Image($r('app.media.right_arrow_2'))
                  .fillColor('#CCCCCC')
                  .width(20)
              }
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
              .margin({ bottom: 10 })
            }
            .card()
            .margin({ bottom: 10 })

            Column({ space: 10 }) {
              Row() {
                Text("参数")
                  .fontSize(14)
                  .fontColor('#999999')

                Row() {
                  Column({ space: 5 }) {
                    Text(" 尺寸")
                      .fontSize(12)
                      .fontColor('#999999')
                    Text(this.commodity.size)
                      .fontSize(14)
                  }
                }

                Image($r('app.media.space_divider_vertical'))
                  .height(30)
                  .fillColor('#F4F4F4')

                Row() {
                  Column({ space: 5 }) {
                    Text("材质")
                      .fontSize(12)
                      .fontColor('#999999')
                    Text(this.commodity.material)
                      .fontSize(14)
                  }

                }

                Image($r('app.media.space_divider_vertical'))
                  .height(30)
                  .fillColor('#F4F4F4')

                Row() {
                  Column({ space: 5 }) {
                    Text("官方定价")
                      .fontSize(12)
                      .fontColor('#999999')
                    Text(this.commodity.officialPrice)
                      .fontSize(14)
                  }
                }

                Image($r('app.media.right_arrow_2'))
                  .width(20)
                  .fillColor('#CCCCCC')
              }
              .margin({ bottom: 10 })
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)

              Row() {
                moreCard({ image: this.commodity.moreCommodity[0], name: this.commodity.moreCommodityName[0] })
                moreCard({
                  image: this.commodity.moreCommodity[1],
                  name: this.commodity.moreCommodityName[1],
                  score: this.commodity.score
                })
              }
              .justifyContent(FlexAlign.SpaceBetween)
              .width('100%')

              Divider()
                .width('100%')
                .color('#EAEAEA')
              // .color(Color.Red)

              Row() {
                Row() {
                  Column({ space: 10 }) {
                    Row() {
                      Image($r('app.media.fxg'))
                        .height(15)
                        .margin({ right: 20 })

                      Text("专业包装 · 满129包邮")
                        .fontSize(12)
                    }
                    .width('100%')

                    Row() {
                      Text("延期无忧 · 48h内发货 · ")
                        .fontSize(12)
                      Text("!不支持7天无理由退货")
                        .fontSize(12)
                    }
                  }
                  .width('100%')
                }
                .width('80%')

                RightArrow()
              }
              .justifyContent(FlexAlign.SpaceBetween)
              .width('100%')
              // .margin({ bottom: 10 })

            }
            .width('100%')
            .card()
            .margin({ bottom: 12 })


            Column() {
              Text("商品详情")
                .fontWeight(FontWeight.Bold)
                .fontSize(14)
                .width('100%')

              ForEach(this.commodity.images, (image: ResourceStr) => {
                Image(image)
                  .width('100%')
              })
            }
            .card()
            .margin({ bottom: 12 })

            Column() {
              Text("运费说明")
                .fontWeight(FontWeight.Bold)
                .fontSize(14)
                .width('100%')
              Text("不满足包邮条件的订单，江浙沪地区10元运费，其他地区15 元，实际订单运费请以结算页显示为准。可配送区域为中国大陆 地区（除特殊偏远地区），收件地址在此之外的区域请勿下单。")
                .fontSize(12)
                .width('100%')
            }
            .card()
          }
          .backgroundColor('#F4F4F4')
          .width('100%')
          .margin({ bottom: 10 })
        }
      }
      .height('92%')
      .width('100%')


      commodityDetailBottom({ commodity: this.commodity })

    }
    .backgroundColor('#F4F4F4')
    .width('100%')
  }
}