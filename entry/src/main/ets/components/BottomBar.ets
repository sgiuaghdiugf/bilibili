import font from '@ohos.font';
import router from '@ohos.router';
// import {bottom_onclick} from '../sch_functions/click_function'
export class Item {
  icon: Resource;
  name: string;

  constructor(icon, name) {
    this.icon = icon;
    this.name = name;
  }
}

@Builder
export function buildItem(item: Item, column_width: number,
                          column_height: number, icon_width: number,
                          font_size: number, icon_color?: string,
                          f?: any) {
  Column({ space: 5 }) {
    Image(item.icon)
      .fillColor(icon_color)
      .width(icon_width)
    Text(item.name)
      .fontSize(font_size)
  }
  .onClick(() => {
    f()
  })
  .justifyContent(FlexAlign.SpaceAround)
  .width(column_width)
  .height(column_height)
}

@Builder
function buildBottomItem(item: Item, column_width: number,
                         column_height: number, icon_width: number,
                         font_size: number, colors: string[], id?: number,
                         idx?: number,) {
  Column({ space: 5 }) {
    Image(item.icon)
      .fillColor(colors[id])
      .width(icon_width)
    Text(item.name)
      .fontSize(font_size)
  }
  .onClick(() => {
    console.log('点击了')
    let len = colors.length
    let clicked_Color = '#c34041'
    const color = '#686868'
    for (let i = 0;i < len; i++) {
      if ((i ^ id) == 0) {
        colors[i] = clicked_Color
      } else {
        colors[i] = color
      }
    }
    this.idx = id
    console.log(this.idx)
    console.log(colors[0])
    console.log(colors[1])
    console.log(colors[2])
    console.log(colors[3])
  })
  .justifyContent(FlexAlign.SpaceAround)
  .width(column_width)
  .height(column_height)
}

@Component
struct BottomSon{
  item:Item;
  @Link colors:string[];
  idx:number;
  page_url:string;
  icon_width:number;

  build(){

    Column({ space: 5 }) {
      Image(this.item.icon)
        .fillColor(this.colors[this.idx])
        .width(this.icon_width)
      Text(this.item.name)
        .fontSize(13)
    }
    .onClick(() => {
      console.log(this.idx+'点击了')
      let len = this.colors.length
      let clicked_Color = '#c34041'
      const color = '#686868'
      for (let i = 0;i < len; i++) {
        if ((i ^ this.idx) == 0) {
          this.colors[i] = clicked_Color
        } else {
          this.colors[i] = color
        }
      }

      router.pushUrl(
        {
          url:this.page_url
        },
        router.RouterMode.Single,
        err => {
          console.log(err.code+" "+err.message)
        }
      )
    })
    .justifyContent(FlexAlign.SpaceAround)
    .width(40)
    .height(45)
  }
}
@Entry
@Component
export struct BottomBar {
  @State idx: number = 0x3f
  private items: Item[] = [
    new Item($r('app.media.sch_shouye'), '首页'),
    new Item($r('app.media.sch_dongtai'), '动态'),
    new Item($r('app.media.sch_huiyuangou'), '会员购'),
    new Item($r('app.media.sch_wode'), '我的'),
  ]
  @State colors: string[] = [
    '#6b6a71', '#6b6a71', '#6b6a71', '#6b6a71'
  ]

  build() {
    Row() {
      // buildBottomItem(this.items[0], 40, 45, 20, 13, this.colors, 0, this.idx);
      BottomSon({item:this.items[0],icon_width:20,colors:$colors,idx:0,page_url:'pages/HomePage'})


      // buildBottomItem(this.items[1], 40, 45, 25, 13, this.colors, 1, this.idx);
      BottomSon({item:this.items[1],icon_width:25,colors:$colors,idx:1,page_url:'pages/DynamicPage'})


      Column() {
        Image($r('app.media.jiahao_2'))
          .width(15)
          .height(15)
      }
      .justifyContent(FlexAlign.Center)
      .width(40)
      .height(40)
      .borderRadius(15)
      .backgroundColor('#ee443c')

      // buildBottomItem(this.items[2], 40, 45, 20, 13, this.colors, 2, this.idx);
      BottomSon({item:this.items[2],icon_width:22,colors:$colors,idx:2,page_url:''})
      // buildBottomItem(this.items[3], 40, 45, 20, 13, this.colors, 3, this.idx);
      BottomSon({item:this.items[3],icon_width:25,colors:$colors,idx:3,page_url:'pages/MyAccountPage'})
    }
    .border({ width: 1,
      color: '#e6e6e6',
      style: { top: BorderStyle.Solid } })
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .height(65)
    .backgroundColor('#fefefe')
    .padding({ left: 10, right: 10 })
    .backgroundColor(Color.White)
  }
}

/*用于”更多服务“的行元素*/
@Component
export struct LineItem {
  icon: Resource;
  item_name: string;
  icon_back: Resource;

  build() {
    Row() {
      Image(this.icon)
        .width(23)
        .margin({ left: 20 })

      Text(this.item_name)
        .fontSize(14)
        .margin({ left: 15 })

      Blank()

      Image(this.icon_back)
        .width(16)
        .margin({ right: 10 })
    }
    .height(40)
    .width('98%')
  }
}



