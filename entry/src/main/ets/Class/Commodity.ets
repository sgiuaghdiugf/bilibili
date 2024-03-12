export class Commodity {
  name: string
  detailName: string
  tagName: string
  images: ResourceStr[]
  price: number
  countPrice: number

  constructor(name, detailName, tagName, image, countPrice, price) {
    this.detailName = detailName
    this.tagName = tagName
    this.name = name
    this.images = image
    this.price = price
    this.countPrice = countPrice
  }
}
