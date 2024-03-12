import router from '@ohos.router'


export function my_space_onclick() {
}

export function my_wallet_onclick() {
  router.pushUrl(
    {
      url: 'pages/MyWalletPage'
    },
    router.RouterMode.Single,
    err => {
      console.log("我的钱包页面跳转失败")
    }
  )
}

export function my_course_onclick() {
  router.pushUrl(
    {
      url: 'pages/MyWalletPage'
    },
    router.RouterMode.Single,
    err => {
      console.log("我的钱包页面跳转失败")
    }
  )
}

export function my_collect_onclick() {
  router.pushUrl(
    {
      url: 'pages/MyWalletPage'
    },
    router.RouterMode.Single,
    err => {
      console.log("我的钱包页面跳转失败")
    }
  )
}
export function my_setting_onclick(){
  router.pushUrl(
    {
      url: 'pages/Setting'
    },
    router.RouterMode.Single,
    err => {
      console.log("我的钱包页面跳转失败")
    }
  )
}
export function my_history_onclick() {
  router.pushUrl(
    {
      url: 'pages/MyWalletPage'
    },
    router.RouterMode.Single,
    err => {
      console.log("我的钱包页面跳转失败")
    }
  )
}

export function my_surplus_onclick() {
  router.pushUrl(
    {
      url: 'pages/Rank'
    },
    router.RouterMode.Single,
    err => {
      console.log("我的钱包页面跳转失败")
    }
  )
}

export function bottom_onclick(idx: number, id: number, colors: string[]) {
  idx = id
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
}