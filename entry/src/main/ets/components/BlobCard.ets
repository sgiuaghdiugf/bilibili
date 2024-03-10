export class Blob {
  headImage: ResourceStr
  title: string
  updateTime: string
  content: string
  image: ResourceStr
  likeNumber: number
  commentsNumber: number
  repostNumber: number

  constructor(headImage: ResourceStr, title: string, updateTime: string, content: string, image: ResourceStr,

              likeNumber: number,
              commentsNumber: number,
              repostNumber: number,
  ) {
    this.headImage = headImage
    this.title = title
    this.updateTime = updateTime
    this.content = content
    this.image = image
    this.likeNumber = likeNumber
    this.commentsNumber = commentsNumber
    this.repostNumber = repostNumber
  }
}

import { BlogCardContent } from './BlogCardContent'
import { BlobCardHeader } from './BlogCardHeader'
import { BlogCardBeneath } from './BlogCardBeneath'

@Component
export struct BlobCard {
  // private content_01 = "纪录片好奇心周刊\n这是一个关于【她】的节日 纪录片的镜头，也曾拍摄下【她】的精彩瞬 间"
  private blog: Blob

  build() {
    Column() {
      BlobCardHeader({ title: this.blog.title, image: this.blog.headImage, updateTime: this.blog.updateTime })
      BlogCardContent({ content: this.blog.content, image: this.blog.image })
      BlogCardBeneath({
        likes: this.blog.likeNumber,
        comments: this.blog.commentsNumber,
        reposts: this.blog.repostNumber
      })
    }
    .width('100%')
    .padding(10)
    .backgroundColor('#FFFFFF')
  }
}