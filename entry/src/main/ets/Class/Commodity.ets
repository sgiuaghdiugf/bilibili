export class Commodity {
  name: string
  detailName: string
  tagName: string
  images: ResourceStr[]
  price: number
  countPrice: number
  moreCommodity: ResourceStr[]
  moreCommodityName: string[]
  score: number
  wants: number
  size: string
  material: string
  officialPrice: string

  constructor(name, detailName, tagName, image, countPrice, price, moreCommodity,
              moreCommodityName: string[],
              score, wants,
              size: string,
              material: string,
              officialPrice: string
  ) {
    this.wants = wants
    this.detailName = detailName
    this.tagName = tagName
    this.name = name
    this.images = image
    this.price = price
    this.countPrice = countPrice
    this.moreCommodityName = moreCommodityName
    this.moreCommodity = moreCommodity
    this.score = score
    this.wants = wants
    this.size = size
    this.material = material
    this.officialPrice = officialPrice
  }
}
