class Person {
  image: ResourceStr
  name: string

  constructor(image, name) {
    this.image = image
    this.name = name
  }
}

@Component
export struct DynamicUserList {
  persons: Person[] = [
    new Person($r('app.media.image_list01'), "城阳电工"),
    new Person($r('app.media.image_list02'), "弱电小胡"),
    new Person($r('app.media.image_list03'), "Zhan |"),
    new Person($r('app.media.image_list04'), "信息汇i"),
    new Person($r('app.media.image_list05'), "长片短解"),
    new Person($r('app.media.image_list06'), "-LKs-"),
    new Person($r('app.media.image_list07'), "林亦LYi"),
    new Person($r('app.media.image_list08'), "派蒙科普"),

    new Person($r('app.media.image_list01'), "城阳电工"),
    new Person($r('app.media.image_list02'), "弱电小胡"),
    new Person($r('app.media.image_list03'), "Zhan |"),
    new Person($r('app.media.image_list04'), "信息汇i"),
    new Person($r('app.media.image_list05'), "长片短解"),
    new Person($r('app.media.image_list06'), "-LKs-"),
    new Person($r('app.media.image_list07'), "林亦LYi"),
    new Person($r('app.media.image_list08'), "派蒙科普"),
    new Person($r('app.media.image_list01'), "城阳电工"),
    new Person($r('app.media.image_list02'), "弱电小胡"),
    new Person($r('app.media.image_list03'), "Zhan |"),
    new Person($r('app.media.image_list04'), "信息汇i"),
    new Person($r('app.media.image_list05'), "长片短解"),
    new Person($r('app.media.image_list06'), "-LKs-"),
    new Person($r('app.media.image_list07'), "林亦LYi"),
    new Person($r('app.media.image_list08'), "派蒙科普"),


  ]

  build() {
    Column() {
      Row() {
        Text("全部")
          .fontSize(20)
          .fontColor('#FC8BAB')
          .width('45%')
          .textAlign(TextAlign.Center)
          .backgroundColor('#F5F7F9')
        Text("视频")
          .fontSize(20)
          .width('45%')
          .textAlign(TextAlign.Center)
          .backgroundColor('#F5F7F9')
      }
      .justifyContent(FlexAlign.SpaceAround)
      .width('100%')
      .backgroundColor('#FFFFFF')
      .padding({ top: 10, bottom: 10 })

      Row() {
        Text("最常访问")
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .width(100)
        Row() {
          Text("更多")
            .fontColor('#979CA0')
          Image($r('app.media.right_arrow'))
            .width(10)
            .fillColor('#979CA0')
        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .padding(10)
      .margin({ bottom: 10 })

      List({ space: 20 }) {
        ForEach(this.persons, (person: Person) => {
          ListItem() {
            Column() {
              Stack() {
                Image(person.image)
                  .width(54)
                  .borderRadius(27)
                  .margin({ bottom: 10 })
                Row() {
                }
                .width(14)
                .height(14)
                .backgroundColor('#FF589A')
                .borderRadius(7)
                .border({ width: 3, color: Color.White })
                .position({ x: 40, y: 40 })

              }

              Text(person.name)
                .fontSize(14)
            }
          }
        })
      }
      .listDirection(Axis.Horizontal)

    }
    .padding({ bottom: 20 })
    .backgroundColor('#FFFFFF')
    .width('100%')
    .margin({ bottom: 15 })
  }
}