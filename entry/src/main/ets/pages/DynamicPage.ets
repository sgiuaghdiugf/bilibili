import { DynamicHeader } from '../components/DynamicHeader'
import { BlogCard, Blog } from '../components/BlogCard'
import { BottomBar } from "../components/BottomBar"
import { DynamicUserList } from "../components/DynamicUserList"


@Entry
@Component
struct DynamicPage {
  private blogCards: Blog[] = [
    new Blog($r('app.media.bilibili_record',), "哔哩哔哩纪录片", "1小时前", "纪录片好奇心周刊\n这是一个关于【她】的节日 纪录片的镜头，也曾拍摄下【她】的精彩瞬 间", $r('app.media.01'), 1000, 500, 1000),
    new Blog($r('app.media.bilibili_record',), "哔哩哔哩纪录片", "1小时前", "纪录片好奇心周刊\n这是一个关于【她】的节日 纪录片的镜头，也曾拍摄下【她】的精彩瞬 间", $r('app.media.02'), 1000, 500, 1000),
    new Blog($r('app.media.bilibili_record',), "哔哩哔哩纪录片", "1小时前", "纪录片好奇心周刊\n这是一个关于【她】的节日 纪录片的镜头，也曾拍摄下【她】的精彩瞬 间", $r('app.media.03'), 1000, 500, 1000),
    new Blog($r('app.media.bilibili_record',), "哔哩哔哩纪录片", "1小时前", "纪录片好奇心周刊\n这是一个关于【她】的节日 纪录片的镜头，也曾拍摄下【她】的精彩瞬 间", $r('app.media.04'), 1000, 500, 1000),
    new Blog($r('app.media.bilibili_record',), "哔哩哔哩纪录片", "1小时前", "纪录片好奇心周刊\n这是一个关于【她】的节日 纪录片的镜头，也曾拍摄下【她】的精彩瞬 间", $r('app.media.05'), 1000, 500, 1000),
    new Blog($r('app.media.bilibili_record',), "哔哩哔哩纪录片", "1小时前", "纪录片好奇心周刊\n这是一个关于【她】的节日 纪录片的镜头，也曾拍摄下【她】的精彩瞬 间", $r('app.media.06'), 1000, 500, 1000),
  ]
  private content_01 = "纪录片好奇心周刊\n这是一个关于【她】的节日 纪录片的镜头，也曾拍摄下【她】的精彩瞬 间一"

  build() {
    Column() {
      DynamicHeader()


      List() {
        ListItem() {
          DynamicUserList()
        }

        ForEach(this.blogCards,
          (blog: Blog) => {
            ListItem() {
              BlogCard({ blog: blog })
                .margin({ bottom: 10 })
            }
          })
      }
      .backgroundColor('#F0F2F4')
      .layoutWeight(1)

      BottomBar({page_index:1})

    }
  }
}