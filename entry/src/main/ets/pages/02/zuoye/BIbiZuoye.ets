@Entry
@Component
struct BIbiZuoye {
  @State message: string = 'Hello World';
  @State List: number[] = [1, 2, 3, 6, 5, 8, 55, 8, 5, 5, 5, 8, 6, 3, 8, 3, 6, 8, 5, 3, 5, 3, 6, 65, 3, 6]

  build() {
    Column() {
      Grid() {
        ForEach(this.List, () => {
          GridItem() {
            Row({ space: 10 }) {
              Stack() {
                Image("https://i2.hdslb.com/bfs/archive/70055c4d20b3a7cde6383c159a8054a568cb083f.jpg@960w_540h_1c.webp")
                  .width(150)
                  .height(100)
                Text('1900:20').margin({ top: 75, left: 85 })
                  .borderRadius(3)
                  .backgroundColor('#99090909')
                  .fontColor('#dfe5ec')

              }

              Column({ space: 8 }) {
                Text() {
                  Span('2024').fontSize(14)
                  Span('黑马程序员').fontColor('#f895b7').fontSize(16)
                  Span('Java+AI智能辅助编程全套视频教程， ').fontSize(16)
                }
                .maxLines(2)

                Column({ space: 5 }) {
                  Row() {
                    Image($r('app.media.tuiguangzhong')).width(20).padding({ right: 5 })
                    Text('黑马程序员').fontSize(14)
                  }

                  Row() {
                    Row() {
                      Image($r('app.media.tuiguangzhong')).width(20).padding({ right: 5 })
                      Text('3.1万').fontSize(14).margin({ right: 15 })
                    }

                    Row() {
                      Image($r('app.media.tuiguangzhong')).width(20).padding({ right: 5 })
                      Text('174').fontSize(14)
                    }
                  }
                }
                .alignItems(HorizontalAlign.Start)
                .width('100%')
              }
              .layoutWeight(1)
            }
            .padding(5)
          }
        })
      }
      .columnsTemplate('1fr')
      .rowsGap(5)
      .backgroundColor('#f4f4f4')
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#ccc')
  }
}