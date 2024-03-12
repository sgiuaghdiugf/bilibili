export class Blog {
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
export struct BlogCard {
  private blog: Blog

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