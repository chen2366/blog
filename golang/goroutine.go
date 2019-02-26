package main

import "fmt"
import "time"

// 这个是异步多线程的简单例子

// 定义函数输出传入的字符串
func f(from string) {
    
    for i := 0; i < 3; i++ {
        // 等待 1s 钟再执行下面的语句
        time.Sleep(time.Second)
        fmt.Println(from, ":", i)
    }
}

func main() {
    // 1. 单线程调用
    f("直接调用")
    
    // 2. 异步执行
    // go 关键字表示异步调用
    // 异步调用的时候 打印程序会直接被挂到后台去
    // 被挂到后台的代码：比如f函数执行了3秒，代码不会卡在这里，而会继续执行下面的一个代码
    go f("异步调用")

    go func(msg string) {
        f(msg)
    }("另外一种写法")

    // 3. 等待异步程序执行完
    // 异步代码(也就是go关键字后面程序)会在后台执行，如果主程序退出了，而异步的程序还没有执行完就会被系统kill掉
    // 所以把程序加入到异步之后，需要在最后等待所有的异步程序执行完
    // 这个是等待用户输入，以堵住主程序
    fmt.Scanln()

    // 程序执行完成
    fmt.Println("done")
}
