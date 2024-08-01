class TaskDetails {
  data: DataList = new DataList()
  msg: string = '提示信息'
}

class DataList {
  actualArrivalTime: string = '2024-08-01' //实际到达时间
  actualDepartureTime: string = '2024-08-01' //实际发车时间
  cargoPickUpPictureList: Array01 = new Array01() //提货凭证
  cargoPictureList: cargoPictureList = new cargoPictureList() //提货图片
  deliverPictureList: deliverPictureList = new deliverPictureList() //回单图片
  driverId: string = '85204563' //司机id
  driverName: string = '王然' //司机姓名
  endAddress: string = '保定市' //目的市
  endAgencyId: string = '0311-52' //目的机构id
  endCity: string = '士大夫v不能给对方的' // 目的机构详细地址
  endProvince: string = '河北省' // 目的省
  finishHandoverName: string = '张三' //交付对接人
  id: string = '张三' //司机作业单id
  finishHandoverPhone: string = '张三' //交付对接人电话
  licensePlate: string = '张三' //车牌号码
  planArrivalTime: string = '张三' //计划到达时间
  planDepartureTime: string = '张三' //计划发车时间
  startAddress: string = '张三' //起始机构详细地址
  startAgencyId: string = '张三' //起始机构id
  startCity: string = '张三' //起始市
  startHandoverName: string = '张三' //提货对接人
  startHandoverPhone: string = '张三' //提货对接人电话
  startProvince: string = '张三' //起始省份
  status: string = '张三' //作业状态
  certificatePictureList: certificatePictureList = new certificatePictureList() //回单凭证
  exceptionList: exceptionList = new exceptionList() //提货对接人
  transportTaskId: string = '张三' //运输任务id
}

class Array01 {
  url: string = 'qqqqqqqqqq$r(app/)'
}

class cargoPictureList {
  url: string = '$r(app/)'
}

class deliverPictureList {
  url: string = '$r(app/)'
}

class certificatePictureList {
  url: string = '$r(app/)'
}

class exceptionList {
  exceptionTime: string = '2024-8-1' //异常时间
  exceptionPlace: string = '2024-8-1' //上报的位置
  exceptionType: string = '2024-8-1' //异常类型(中文)
  exceptionDescribe: string = '2024-8-1' //异常描述
  handleResult: string = '2024-8-1' //处理结果
  exceptionImagesList: exceptionImagesList = new exceptionImagesList() //异常图片
}

class exceptionImagesList {
  url: string = '异常图片$r(app/)'
}

let p = new TaskDetails()
console.log('p.data', p.data.cargoPickUpPictureList.url) // 结果： qqqqqqqqqq$r(app/)
console.log('p.data', p.data.exceptionList.exceptionImagesList.url) // 结果： 异常图片$r(app/)


// @Extend(组件名)
// function functionName(参数1....) {
//   .属性()
//     .事件(()=>{})
// }
@Extend(Text)
//样式复用修饰符
function functionText() {
  .fontColor('#2A2929')
  .fontWeight(600)
}


@Entry
@Component
struct Meituan {
  build() {
    Column({ space: 20 }) {
      Text('神领快递')
        .height(25)
        .margin({ top: 10, bottom: 50 })
        .fontSize(18)
        .functionText()
      Row() {
        Text('手机号登录')
          .fontSize(24)
          .functionText()
          .fontWeight(500)
          .layoutWeight(1)
        Row() {
          Text('账号登录')
            .fontColor('#EF4F3F')
            .fontSize(16)
          Image($r('app.media.you'))
            .width('10')
            .height('10')
            .margin({ left: 8 })
        }
      }
      .margin({ left: 33, right: 17 })

      TextInput({
        placeholder: '请输入手机号'
      })
        .width('90%')
        .height(60)
      TextInput({
        placeholder: '请输入验证码'

      })
        .width('90%')
        .height(60)
      Button('登录')
        .width('90%')
        .height(50)
        .margin({ top: 50 })
        .backgroundColor('#FADCD9')
    }
    .width('100%')
    .height('100%')
  }
}