import router from '@ohos.router'
import { Commodity } from '../Class/Commodity'

@Entry
@Component
struct ShopCarPage {
  private commodities: Commodity[] = [
    new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_06'),
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      ],
      108, 115,
      [$r('app.media.R'), $r('app.media.fuRyu')],
      ["五等分的新娘", "FuRyu"],
      5,
      2115,
      "520cm",
      'ABS',
      "1400日元"
    ),


    new Commodity("机动战士高达SEE",
      "万代HG不朽正义高达拼装模型 【机动战士高达SEE FREEDOM】",
      "正义高达榜No.1",
      [
      $r('app.media.commidity02_01'),
      $r('app.media.commidity02_02'),
      $r('app.media.commidity02_03'),
      $r('app.media.commidity02_04'),
      $r('app.media.commidity02_05'),
      ],
      126, 135,
      [$r('app.media.gaoda'), $r('app.media.wandai')],
      ["高达系列", "万代"],
      5,
      199,
      "高约12.5cm",
      'PS;ABS',
      "2600日元"
    ),


    new Commodity("火影忍者漩涡鸣人",
      "商家万代 SHF 火影忍者 漩涡鸣人N ARUTOP99 成品模型",
      "漩涡鸣人榜No.10",
      [
      $r('app.media.commidity03_01'),
      $r('app.media.commidity03_03'),
      $r('app.media.commidity03_05'),
      $r('app.media.commidity03_02'),
      $r('app.media.commidity03_04'),
      ],
      164, 175,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      26,
      "高约14.5cm",
      'PVC;ABS',
      "3600日元"
    ),


    new Commodity("机动战士高达SEED",
      "商家万代HG飞升自由高达拼装模 型【机动战士高达SEED】",
      "自由高达榜No.1",
      [
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_03'),
      $r('app.media.commidity04_04'),
      $r('app.media.commidity04_05'),
      ],
      138, 158,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      259,
      "高约13cm",
      'PS',
      "2400日元"
    ),


    new Commodity("世嘉LUMINASTA",
      "世嘉LUMINASTA名侦探柯南赤井 秀一椅子Ver.景品手办再版",
      "赤井秀一榜No.7",
      [
      $r('app.media.commidity05_01'),
      $r('app.media.commidity05_02'),
      $r('app.media.commidity05_03'),
      $r('app.media.commidity05_04'),
      $r('app.media.commidity05_05'),
      $r('app.media.commidity05_06'),
      ],
      94.29, 105,
      [$r('app.media.shijia'), $r('app.media.shijia')],
      ["名侦探柯南", "世家"],
      5,
      25,
      "高约130mm",
      'PVC',
      "2400日元"
    ),


    new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_06'),
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      ],
      108, 115,
      [$r('app.media.R'), $r('app.media.fuRyu')],
      ["五等分的新娘", "FuRyu"],
      5,
      2115,
      "520cm",
      'ABS',
      "1400日元"
    ),


    new Commodity("机动战士高达SEE",
      "万代HG不朽正义高达拼装模型 【机动战士高达SEE FREEDOM】",
      "正义高达榜No.1",
      [
      $r('app.media.commidity02_01'),
      $r('app.media.commidity02_02'),
      $r('app.media.commidity02_03'),
      $r('app.media.commidity02_04'),
      $r('app.media.commidity02_05'),
      ],
      126, 135,
      [$r('app.media.gaoda'), $r('app.media.wandai')],
      ["高达系列", "万代"],
      5,
      199,
      "高约12.5cm",
      'PS;ABS',
      "2600日元"
    ),


    new Commodity("火影忍者漩涡鸣人",
      "商家万代 SHF 火影忍者 漩涡鸣人N ARUTOP99 成品模型",
      "漩涡鸣人榜No.10",
      [
      $r('app.media.commidity03_01'),
      $r('app.media.commidity03_03'),
      $r('app.media.commidity03_05'),
      $r('app.media.commidity03_02'),
      $r('app.media.commidity03_04'),
      ],
      164, 175,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      26,
      "高约14.5cm",
      'PVC;ABS',
      "3600日元"
    ),


    new Commodity("机动战士高达SEED",
      "商家万代HG飞升自由高达拼装模 型【机动战士高达SEED】",
      "自由高达榜No.1",
      [
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_03'),
      $r('app.media.commidity04_04'),
      $r('app.media.commidity04_05'),
      ],
      138, 158,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      259,
      "高约13cm",
      'PS',
      "2400日元"
    ),


    new Commodity("世嘉LUMINASTA",
      "世嘉LUMINASTA名侦探柯南赤井 秀一椅子Ver.景品手办再版",
      "赤井秀一榜No.7",
      [
      $r('app.media.commidity05_01'),
      $r('app.media.commidity05_02'),
      $r('app.media.commidity05_03'),
      $r('app.media.commidity05_04'),
      $r('app.media.commidity05_05'),
      $r('app.media.commidity05_06'),
      ],
      94.29, 105,
      [$r('app.media.shijia'), $r('app.media.shijia')],
      ["名侦探柯南", "世家"],
      5,
      25,
      "高约130mm",
      'PVC',
      "2400日元"
    ),
    new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_06'),
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      ],
      108, 115,
      [$r('app.media.R'), $r('app.media.fuRyu')],
      ["五等分的新娘", "FuRyu"],
      5,
      2115,
      "520cm",
      'ABS',
      "1400日元"
    ),


    new Commodity("机动战士高达SEE",
      "万代HG不朽正义高达拼装模型 【机动战士高达SEE FREEDOM】",
      "正义高达榜No.1",
      [
      $r('app.media.commidity02_01'),
      $r('app.media.commidity02_02'),
      $r('app.media.commidity02_03'),
      $r('app.media.commidity02_04'),
      $r('app.media.commidity02_05'),
      ],
      126, 135,
      [$r('app.media.gaoda'), $r('app.media.wandai')],
      ["高达系列", "万代"],
      5,
      199,
      "高约12.5cm",
      'PS;ABS',
      "2600日元"
    ),


    new Commodity("火影忍者漩涡鸣人",
      "商家万代 SHF 火影忍者 漩涡鸣人N ARUTOP99 成品模型",
      "漩涡鸣人榜No.10",
      [
      $r('app.media.commidity03_01'),
      $r('app.media.commidity03_03'),
      $r('app.media.commidity03_05'),
      $r('app.media.commidity03_02'),
      $r('app.media.commidity03_04'),
      ],
      164, 175,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      26,
      "高约14.5cm",
      'PVC;ABS',
      "3600日元"
    ),


    new Commodity("机动战士高达SEED",
      "商家万代HG飞升自由高达拼装模 型【机动战士高达SEED】",
      "自由高达榜No.1",
      [
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_03'),
      $r('app.media.commidity04_04'),
      $r('app.media.commidity04_05'),
      ],
      138, 158,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      259,
      "高约13cm",
      'PS',
      "2400日元"
    ),


    new Commodity("世嘉LUMINASTA",
      "世嘉LUMINASTA名侦探柯南赤井 秀一椅子Ver.景品手办再版",
      "赤井秀一榜No.7",
      [
      $r('app.media.commidity05_01'),
      $r('app.media.commidity05_02'),
      $r('app.media.commidity05_03'),
      $r('app.media.commidity05_04'),
      $r('app.media.commidity05_05'),
      $r('app.media.commidity05_06'),
      ],
      94.29, 105,
      [$r('app.media.shijia'), $r('app.media.shijia')],
      ["名侦探柯南", "世家"],
      5,
      25,
      "高约130mm",
      'PVC',
      "2400日元"
    ),
    new Commodity("余量预售 FuRyuy 泡面压",
      " [余量预售]FuRyu 泡面压 五等分的新娘 中野三玖 居家服 景品手办",
      "中野三玖榜No.3",
      [
      $r('app.media.commidity01_06'),
      $r('app.media.commidity01_01'),
      $r('app.media.commidity01_02'),
      $r('app.media.commidity01_03'),
      $r('app.media.commidity01_04'),
      $r('app.media.commidity01_05'),
      ],
      108, 115,
      [$r('app.media.R'), $r('app.media.fuRyu')],
      ["五等分的新娘", "FuRyu"],
      5,
      2115,
      "520cm",
      'ABS',
      "1400日元"
    ),


    new Commodity("机动战士高达SEE",
      "万代HG不朽正义高达拼装模型 【机动战士高达SEE FREEDOM】",
      "正义高达榜No.1",
      [
      $r('app.media.commidity02_01'),
      $r('app.media.commidity02_02'),
      $r('app.media.commidity02_03'),
      $r('app.media.commidity02_04'),
      $r('app.media.commidity02_05'),
      ],
      126, 135,
      [$r('app.media.gaoda'), $r('app.media.wandai')],
      ["高达系列", "万代"],
      5,
      199,
      "高约12.5cm",
      'PS;ABS',
      "2600日元"
    ),


    new Commodity("火影忍者漩涡鸣人",
      "商家万代 SHF 火影忍者 漩涡鸣人N ARUTOP99 成品模型",
      "漩涡鸣人榜No.10",
      [
      $r('app.media.commidity03_01'),
      $r('app.media.commidity03_03'),
      $r('app.media.commidity03_05'),
      $r('app.media.commidity03_02'),
      $r('app.media.commidity03_04'),
      ],
      164, 175,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      26,
      "高约14.5cm",
      'PVC;ABS',
      "3600日元"
    ),


    new Commodity("机动战士高达SEED",
      "商家万代HG飞升自由高达拼装模 型【机动战士高达SEED】",
      "自由高达榜No.1",
      [
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_02'),
      $r('app.media.commidity04_03'),
      $r('app.media.commidity04_04'),
      $r('app.media.commidity04_05'),
      ],
      138, 158,
      [$r('app.media.huoying'), $r('app.media.wandai')],
      ["火影忍者", "万代"],
      5,
      259,
      "高约13cm",
      'PS',
      "2400日元"
    ),


    new Commodity("世嘉LUMINASTA",
      "世嘉LUMINASTA名侦探柯南赤井 秀一椅子Ver.景品手办再版",
      "赤井秀一榜No.7",
      [
      $r('app.media.commidity05_01'),
      $r('app.media.commidity05_02'),
      $r('app.media.commidity05_03'),
      $r('app.media.commidity05_04'),
      $r('app.media.commidity05_05'),
      $r('app.media.commidity05_06'),
      ],
      94.29, 105,
      [$r('app.media.shijia'), $r('app.media.shijia')],
      ["名侦探柯南", "世家"],
      5,
      25,
      "高约130mm",
      'PVC',
      "2400日元"
    ),


  ]

  build() {
    Column() {
      Row() {
        Image($r('app.media.commodity_left_arrow'))
          .fillColor('#000000')
          .width(25)
        Text(`购物车(${this.commodities.length})`)
          .fontSize(20)
        Text("管理")
          .fontSize(20)
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .padding(20)

      Column() {
        Row() {
          CheckboxGroup({ group: 'checkboxGroup' })
            .selectedColor('#007DFF')
            .onChange((itemName: CheckboxGroupResult) => {
              console.info("checkbox group content" + JSON.stringify(itemName))
            })

          Text(`预售凑单区`).fontSize(18).fontWeight(500)
        }
        .width('100%')

        // 选项1
        Row() {
          Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
            .selectedColor('#007DFF')
            .onChange((value: boolean) => {
              console.info('Checkbox1 change is' + value)
            })
          Text('Checkbox1').fontSize(14).lineHeight(20).fontColor('#182431').fontWeight(500)
        }
        .width('100%')

        Row() {
          Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
            .selectedColor('#007DFF')
            .onChange((value: boolean) => {
              console.info('Checkbox1 change is' + value)
            })
          Text('Checkbox1').fontSize(14).lineHeight(20).fontColor('#182431').fontWeight(500)
        }
        .width('100%')

        Row() {
          Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
            .selectedColor('#007DFF')
            .onChange((value: boolean) => {
              console.info('Checkbox1 change is' + value)
            })
          Text('Checkbox1').fontSize(14).lineHeight(20).fontColor('#182431').fontWeight(500)
        }
        .width('100%')

        Row() {
          Checkbox({ name: 'checkbox1', group: 'checkboxGroup' })
            .selectedColor('#007DFF')
            .onChange((value: boolean) => {
              console.info('Checkbox1 change is' + value)
            })
          Text('Checkbox1').fontSize(14).lineHeight(20).fontColor('#182431').fontWeight(500)
        }
        .width('100%')

      }
      .width('100%')
      .justifyContent(FlexAlign.Start)

    }
    .width('100%')
  }
}