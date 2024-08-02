@Entry
@Component
struct JiaoYou {
  build() {
    Column({ space: 20 }) {
      Row() {
        Flex({
          direction: FlexDirection.Row,
          justifyContent: FlexAlign.SpaceBetween
        }) {
          Row() {
            Image($r('app.media.dingwei')).width(15)
              .margin({ left: 20 })
            Text('西安市').fontSize(13)
          }
          .width(50)
          .margin({ top: 10 })

          Row({ space: 30 }) {
            Text('发现')
              .border({
                width: { bottom: 2 },
                color: '#8e70e5'
              })
              .height(30)
            Text('附近')
          }

          Row() {
            Image($r('app.media.caidan')).width(15)
              .margin({ left: 20 })
          }
          .width(50)
          .margin({ top: 10 })
        }

      }

      Column() {
        Stack() {
          Image("https://tse2-mm.cn.bing.net/th/id/OIP-C.DWwWIpLI-FUT4HOWk24ZuwHaJ4?rs=1&pid=ImgDetMain")
            .width('90%')
            .height(500)
            .borderRadius(15)
          Row() {
            Column({ space: 5 }) {
              Text('西瓜')
              Text('3.4km-互联网-水瓶座')
              Row() {
                Image($r('app.media.tuiguangzhong'))
                  .width(15)
                Image($r('app.media.musical'))
                  .width(60)
              }
            }
            .alignItems(HorizontalAlign.Start)
            .margin({ left: 30, bottom: 10 })
            .layoutWeight(2)

            Column() {
              Image($r('app.media.dianzan'))
                .width(50)
            }
            .layoutWeight(1)
          }
        }
        .align(Alignment.Bottom)
      }
      .padding({ top: 170 })
      .height(500)

      Row({ space: 20 }) {
        Row() {
          Column() {
            Text('灵魂匹配').fontSize(14)
            Text('和懂你的人聊天').fontSize(12)
          }
          .alignItems(HorizontalAlign.Start)

          Image($r('app.media.xinxi_1'))
            .width(30)
            .margin({ left: 10 })
        }
        .backgroundColor('#f9f2ff')
        .padding(15)
        .borderRadius(10)

        Row() {
          Column() {
            Text('灵魂匹配').fontSize(14)
            Text('和懂你的人聊天').fontSize(12)
          }
          .alignItems(HorizontalAlign.Start)

          Image($r('app.media.xinxi_1'))
            .width(30)
            .margin({ left: 10 })
        }
        .backgroundColor('#fef3e4')
        .padding(15)
        .borderRadius(10)
      }

      Row() {
        Flex({
          justifyContent: FlexAlign.End,
        }) {
          Row({ space: 40 }) {
            Image($r('app.media.xinxi_1'))
              .width(25)
            Image($r('app.media.xinxi_1'))
              .width(25)
            Image($r('app.media.xinxi_1'))
              .width(25)
              .margin({ right: 25 })
          }
          .width('100%')
          .justifyContent(FlexAlign.End)
          .padding(10)
          .border({ width: { top: 1 }, color: '#f7f7f7' })
        }
      }
      .layoutWeight(1)
      .alignItems(VerticalAlign.Bottom)
      .margin({ bottom: 20 })
    }
    .height('100%')
    .width('100%')

    // .backgroundColor("#ccc")
  }
}