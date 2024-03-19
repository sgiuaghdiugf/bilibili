import { Commodity } from '../Class/Commodity'

export class ShopCarArray{
  public shop_car_array:Commodity[]=[];


  pushCommodity(item:Commodity){
    this.shop_car_array.push(item)
  }

  Length():number{
    return this.shop_car_array.length
  }
}

export let shopCarArray= new ShopCarArray()
