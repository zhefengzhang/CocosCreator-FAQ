# 【CococsCreator 常见问题归纳】第十一期

*往期记录：*

[【CocosCreator 常见问题归纳】第一期](https://forum.cocos.com/t/cocoscreator/74555)

[【CocosCreator 常见问题归纳】第二期](https://forum.cocos.com/t/cocoscreator/77714)

[【CocosCreator 常见问题归纳】第三期](https://forum.cocos.com/t/cocos-creator/80350)

[【CocosCreator 常见问题归纳】第四期](https://forum.cocos.com/t/cocos-creator/81800)

[【CocosCreator 常见问题归纳】第五期](https://forum.cocos.org/t/cococscreator/85032)

[【CocosCreator 常见问题归纳】第六期](https://forum.cocos.org/t/cococscreator/85751)

[【CocosCreator 常见问题归纳】第七期](https://forum.cocos.org/t/cococscreator/86570)

[【CocosCreator 常见问题归纳】第八期](https://forum.cocos.org/t/cococscreator/87919)

[【CocosCreator 常见问题归纳】第九期](https://forum.cocos.org/t/cococscreator/88850)

[【CocosCreator 常见问题归纳】第十期](https://forum.cocos.org/t/cococscreator/90174)

---

[部分PR周知：](https://github.com/cocos-creator/engine/pulls)

[ instantiate-jit.ts 中 obj.node 为空的时候，导致程序异常 ](https://github.com/cocos-creator/engine/pull/10128)

---
*常见问题：*
<details>
 <summary>Creator3.X 微信小游戏开放数据域排行榜显示问题</summary>
 > 找到问题了，subContextView 分辨率设置问题，改成 480 * 600 就好了。

 [查看原文](https://forum.cocos.org/t/topic/130942)
</details>

<details>
 <summary>button 使用 tween 缓动变化 scale 属性之后无法点击</summary>
 > 设置scale 的时候是不是 z 没设置？

 [查看原文](https://forum.cocos.org/t/topic/131082)
</details>

<details>
 <summary>HMS 崩溃服务如何使用？</summary>
 > AppGallery Connect 注册好 app 项目；
 
 cocos 客户端 ->服务 -> 开启崩溃服务 （如果需要测试其他功能，相对应开启，例如分析服务）；
 
 根据创建好的项目包名，构建安卓app;
 用 AS 打开工程；
 AppGallery Connect 后台，项目设置 -> 常规 -> SHA256 证书指纹配置：
 gradle.properties -> RELEASE_STORE_FILE
 在 AS 上的 Terminal 中：keytool -list -v -keystore F:/CocosDashboard_1.0.11/resources/.editors/Creator/3.0.0/resources/tools/keystore/debug.keystore
 
 ![Image Text](https://forum.cocos.org/uploads/default/optimized/3X/2/2/22bcd5d88aae8ca1d0d499ca18aea2fe546b1703_2_1380x140.png)
 
 因为打的debug 包，所以直接使用默认的配置生成 SHA256;
 
 修改build.gradle ，因为使用的 debug 包，所以修改了下配置。
 
 ![Image Text](https://forum.cocos.org/uploads/default/original/3X/d/f/df64ba78be1fcdd3843bc6c72f926d3fefa3d757.png)
 
 运行 app，进入 crash 场景，调用 huawei.agc.crash.CrashService.testIt() app 崩溃，等一下进去后台，可查看到崩溃信息：
 
 ![Image Text](https://forum.cocos.org/uploads/default/optimized/3X/9/3/93b79da2e1b9587c32597db4fe3ce47a99a36839_2_690x328.png)

 [查看原文](https://forum.cocos.org/t/topic/131082)
</details>

<details>
 <summary>CocosCreator 3.4 在 ios 手机上加载某些图片会变形，变成蓝色</summary>
 > 原先是16位通道的，改成8位通道，iOS微信小游戏平台才能正常显示。

 [查看原文](https://forum.cocos.org/t/topic/130974)
</details>

<details>
 <summary>CocosCreator 3.x 在编辑器中添加 3D 模型失败</summary>
 > 安装一下 [vc_redist.ext](https://aka.ms/vs/17/release/vc_redist.x64.exe) 即可。

 [查看原文](https://forum.cocos.org/t/topic/124734)
</details>

<details>
 <summary>CocosCreator 3.x 怎么去掉自带加载界面</summary>
 > 安装一下 [vc_redist.ext](https://aka.ms/vs/17/release/vc_redist.x64.exe) 即可。

 [查看原文](https://forum.cocos.org/t/topic/131245)
</details>

<details>
 <summary>摄像机预览问题</summary>
 > 预览的那个相机的没有清屏，修改下 clearflag 选择 SOLID_COLOR。

 [查看原文](https://forum.cocos.org/t/topic/131303)
</details>