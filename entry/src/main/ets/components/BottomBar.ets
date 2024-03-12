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

/*@Builder
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
}*/


@Component
struct BottomSon {
  item: Item;
  color:string;
  idx: number;
  page_url: string;
  icon_width: number;

  build() {

    Column({ space: 5 }) {
      Image(this.item.icon)
        .fillColor(this.color)
        .width(this.icon_width)
      Text(this.item.name)
        .fontColor(this.color)
        .fontSize(13)
    }
    .onClick(() => {
      console.log('点击了')
      router.replaceUrl(
        {
          url: this.page_url
        },
        router.RouterMode.Single,
        err => {
          console.log(err.code + " " + err.message)
        }
      )


    })
    .justifyContent(FlexAlign.SpaceAround)
    .width(40)
    .height(45)
  }
}
@Builder function buildAdd():void{
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
}
@Component
export struct BottomBar {
  @State idx: number = 0x3f
  page_index: number;
  private items: any = [
    new Item($r('app.media.sch_shouye'), '首页'),
    new Item($r('app.media.sch_dongtai'), '动态'),
    0,
    new Item($r('app.media.sch_huiyuangou'), '会员购'),
    new Item($r('app.media.sch_wode'), '我的'),
  ]
  private Page: string[]= [
    'pages/HomePage','pages/DynamicPage','pages/DynamicPage','pages/DynamicPage','pages/MyAccountPage'
  ]


  build() {
    Row() {
      ForEach(
        this.items,
        (item:Item,index:number) => {
          if(index == this.page_index){
            BottomSon({
              item:item,
              icon_width: 25,
              color: '#c14537',
              page_url: this.Page[index]
            })
          }else if(index == 2){
            buildAdd()
          }else{
            BottomSon({
              item: this.items[index],
              icon_width: 22,
              color: '#676767',
              page_url: this.Page[index]
            })
          }
        }
      )

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
  f:Function;
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
        .onClick(()=>{
          this.f()
        })
    }
    .height(40)
    .width('98%')
  }
}



