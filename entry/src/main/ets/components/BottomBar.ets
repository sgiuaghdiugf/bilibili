
import font from '@ohos.font';

export class Item{
  icon:Resource;
  name:string;

  constructor(icon,name) {
    this.icon = icon;
    this.name= name;
  }
}
@Builder export function buildItem(item:Item,column_width:number,
                                   column_height:number,icon_width:number,
                                   font_size:number,icon_color?:string,
                                    f?:Function){
  Column({space:5}){
    Image(item.icon)
      .fillColor(icon_color)
      .width(icon_width)
    Text(item.name)
      .fontSize(font_size)
  }
  .onClick(()=>{
    f
  })
  .justifyContent(FlexAlign.SpaceAround)
  .width(column_width)
  .height(column_height)
}


@Entry
@Component
export struct BottomBar {
  private items:Item[]=[
    new Item($r('app.media.shouye'),'首页'),
    new Item($r('app.media.dongtai'),'动态'),
    new Item($r('app.media.huiyuangou'),'会员购'),
    new Item($r('app.media.wode'),'我的'),
  ]
  build() {
    Row() {
      buildItem(this.items[0],40,45,20,13);
      buildItem(this.items[1],40,45,20,13);

      Column(){
        Image($r('app.media.jiahao_2'))
          .width(15)
          .height(15)
      }
      .justifyContent(FlexAlign.Center)
      .width(40)
      .height(40)
      .borderRadius(15)
      .backgroundColor('#ee443c')

      buildItem(this.items[2],40,45,20,13);
      buildItem(this.items[3],40,45,20,13);
    }
    .border({width:1,
            color:'#e6e6e6',
            style:{top:BorderStyle.Solid}})
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .height(65)
    .backgroundColor('#fefefe')
    .padding({left:10,right:10})
    .backgroundColor(Color.White)
  }

}

