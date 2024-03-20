import axios from '@ohos/axios'

export class pre_login {
  baseUrl: string = 'http://192.168.137.1:8000/login/'

  getCodeMethod(name: string, password: string): Promise<number> {
    return new Promise(
      (resolve, reject) => {
        axios.post(
          `${this.baseUrl}`,
          {
            userName: name,
            password: password,
          }
        ).then(resp => {
          if (resp.status === 200) {
            // console.info('successful', resp.data.code)
            // console.info(resp.data.msg)
            resolve(resp.data.code)
          }
        }).catch(error => {
          console.info("查询失败" + JSON.stringify(error))
          reject('fail')
        })
      }
    )
  }
}

export class pre_register {
  baseUrl: string = 'http://192.168.137.1:8001/register/'

  getCodeMethod(name: string, password: string): Promise<number> {
    return new Promise(
      (resolve, reject) => {
        axios.post(
          `${this.baseUrl}`,
          {
            userName: name,
            password: password,
          }
        ).then(resp => {
          if (resp.status === 200) {
            // console.info('successful', resp.data.code)
            // console.info(resp.data.msg)
            resolve(resp.data.code)
          }
        }).catch(error => {
          console.info("查询失败" + JSON.stringify(error))
          reject('fail')
        })
      }
    )
  }
}