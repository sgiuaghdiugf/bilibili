import router from '@ohos.router'
import {my_course_Tabs_01, my_course_Tabs_02} from '../components/sch_my_course_tabs'

@Entry
@Component
struct MyCoursePage {
  @State message: string = 'Hello World'

  build() {
    Column(){

      Head_01()
      List(){
        ListItem(){
          Head_02()
        }

        ListItem(){
          Column(){
            my_course_Tabs_01()
          }
          .height(250)
        }

        ListItem(){
          Column(){
            my_course_Tabs_02()
          }
          .height(700)
        }

      }
      .layoutWeight(1.1)



    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct Head_01{
  build(){
    Row(){
      Image($r('app.media.sch_fanhui'))
        .onClick(()=>{
          router.back()
        })
        .width(15)
        .margin({left:5,right:120})

      Text('我的课程')
        .fontSize(15)
        .margin({right:30})
        .fontWeight(FontWeight.Medium)
        .width('80')

      Image($r('app.media.sch_ketangzhuanqu'))
        .width(20)
        .margin({right:8})
      Text('课堂专区')
        .fontSize(15)
        .fontColor('#aaaaaa')
    }
    .width('100%')
    .height(40)
  }
}


@Component
struct Head_02{

  private items:struct_head_02_item[]=[
    new struct_head_02_item($r('app.media.sch_quanbao'),'券包'),
    new struct_head_02_item($r('app.media.sch_shoucang'),'收藏'),
    new struct_head_02_item($r('app.media.sch_kaoyanzhuanqu'),'考研专区'),
    new struct_head_02_item($r('app.media.sch_kechengduihuan'),'课程兑换'),
    new struct_head_02_item($r('app.media.sch_jiangshiruzhu'),'讲师入驻'),
  ];
  build(){
    Column(){
      Row(){
        Row(){
          Image($r('app.media.sch_sousuo'))
            .backgroundColor('#f4f4f4')
            .margin({left:10})
            .width(20)

          TextInput(
            {placeholder:'搜索想学的课程'}
          ).width('80%')
            .backgroundColor('#f4f4f4')
            .type(InputType.Normal)
        }
        .margin({right:15})
        .borderRadius(15)
        .backgroundColor('#f4f4f4')

        Column(){
          Image($r('app.media.sch_fenlei'))
            .width(19)
          Text('分类')
            .fontSize(10)
        }
        .margin({right:10})
      }
      .justifyContent(FlexAlign.SpaceEvenly)
      .width('100%')
      .height(40)
      .margin({bottom:10})

      Row(){
        ForEach(
          this.items,
          (item:struct_head_02_item) => {
            build_head_02_item(item.icon,item.name)
          }
        )
      }
      .justifyContent(FlexAlign.SpaceEvenly)
      .width('100%')

    }
    .width('100%')
    .height(100)
    // .backgroundColor('#fff13333')

  }
}

@Component
struct Head_02_item{
  icon:Resource;
  name:string;
  build(){
    Column(){
      Image(this.icon)
        .width(27)

      Text(this.name)
        .fontSize(15)

    }
    .width(70)
    .height(50)
  }
}
@Builder function build_head_02_item(icon:Resource,name:string){
  Head_02_item({icon:icon,name:name})
}
class struct_head_02_item{
  icon:Resource;
  name:string;

  constructor(icon,name) {
    this.icon = icon;
    this.name = name;
  }
}