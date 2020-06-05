# 【CococsCreator 常见问题归纳】第九期

*往期记录：*

[【CocosCreator 常见问题归纳】第一期](https://forum.cocos.com/t/cocoscreator/74555)

[【CocosCreator 常见问题归纳】第二期](https://forum.cocos.com/t/cocoscreator/77714)

[【CocosCreator 常见问题归纳】第三期](https://forum.cocos.com/t/cocos-creator/80350)

[【CocosCreator 常见问题归纳】第四期](https://forum.cocos.com/t/cocos-creator/81800)

[【CocosCreator 常见问题归纳】第五期](https://forum.cocos.org/t/cococscreator/85032)

[【CocosCreator 常见问题归纳】第六期](https://forum.cocos.org/t/cococscreator/85751)

[【CocosCreator 常见问题归纳】第七期](https://forum.cocos.org/t/cococscreator/86570)

[【CocosCreator 常见问题归纳】第八期](https://forum.cocos.org/t/cococscreator/87919)

---

*部分PR周知：*

[1、scrollView 不开启回弹 scroll-to-bottom 回调不生效](https://forum.cocos.org/t/scrollview-scroll-to-bottom/88305)

> PR: https://github.com/cocos-creator/engine/pull/6096

[2、用没有压缩过的图替换使用 PVRTC 4bits RGB Separate A 格式压缩后的图，显示有问题](https://forum.cocos.org/t/pvrtc-4bits-rgb-separate-a/88830)

> PR: https://github.com/cocos-creator/engine/pull/6019  https://github.com/cocos-creator/engine/pull/6022

[3、两个层级属性相同的 button 节点，渲染顺序较晚的节点将 scale 设置成 0 之后，会导致渲染顺序较早的节点无法被点击](https://forum.cocos.org/t/cocos-creator-2-3-0-button-bug/88501)

> PR: https://github.com/cocos-creator/engine/pull/6152

[4、this.node.getBoundingBoxToWorld 调用之后导致 mask 异常](https://forum.cocos.org/t/creator-2-2-1-getboundingboxtoworld/88198)

> PR: https://github.com/cocos-creator/engine/pull/6108

[5、只调用一次 cc.gamme.once，却能重复收到好多好多次回调](https://forum.cocos.org/t/cc-gamme-once/88132)

> PR: https://github.com/cocos-creator/engine/pull/6055

[6、通过本地下载的url，加载的视频资源无法保持原来尺寸](https://forum.cocos.org/t/url/88644)

> PR: https://github.com/cocos-creator/engine/pull/6138

[7、摄像机在不勾选AlignWithScreen时缩放效果异常](https://forum.cocos.org/t/alignwithscreen/88333)

> PR: https://github.com/cocos-creator/engine/pull/6139


---

*常见问题：*

[1、如何去除 videoplayer 的进度条？](https://forum.cocos.org/t/videoplayer/88282)

> A: 改成 [self showPlaybackControls:NO];
https://forum.cocos.org/uploads/default/original/3X/8/5/859870fdf171d465afcf35951086ee8e7d1a9ce6.png

[2、web 打包构建, 发现未引用的业务代码也打了进去, 引用方式是通过 import 引用, 通过 export 导出](https://forum.cocos.org/t/web-js/88515)

> A:通常情况下的 import/export 即使未引用也会打包进去。
环境变量 就是 CC_EDITOR 之类的宏啊，参考
https://docs.cocos.com/creator/api/zh/modules/GLOBAL-MACROS.html11
测试内容写在 if(CC_DEBUG){ } 里面，在正式构建的时候就会剔除了

[3、安卓实现视频背景](https://forum.cocos.org/t/videoview-ui/88323)

> A: https://forum.cocos.org/t/videoview-ui/88323

[4、帧动画如何拉伸？](https://forum.cocos.org/t/topic/88701)

> A: 通过修改cc.AnimationClip.curveData4能够达成你要的效果

[5、在 Creator 里怎样获取毫秒小数部分？](https://forum.cocos.org/t/creator/88663)

> A: performance.now();

[6、2.2.2 版本 3d 模型 在运行中会闪退](https://forum.cocos.org/t/2-2-1-3d-2-2-2/87879)

> A: https://forum.cocos.org/t/2-2-1-3d-2-2-2/87879/35?u=337031709

[7、Cocos creator 2.2.1 需要什么版本的 NDK 呢？](https://forum.cocos.org/t/cocos-creator-2-2-1-ndk/88341)

> A: 由于兼容性问题，2.2.x 版本是建议使用 r17 ～ r19 这些 NDK 版本的，r16b 这个版本也能用。

[8、dragonBones.WorldClock安卓原生报错](https://forum.cocos.org/t/dragonbones-worldclock/88823)

> A: 原生可以使用 WorldClock.getClock().advanceTime(-1)

[9、tiled地图图块错位](https://forum.cocos.org/t/tiled/88154)

> A: 目前是有这个问题，在全局使用下面方法，可以修复这个错位，但是会引入黑边的问题，黑边可以试试使用第三方工具(texture packer)对图片做扩边处理。
cc.macro.FIX_ARTIFACTS_BY_STRECHING_TEXEL_TMX = false;

---

*游戏开发辅助工具推荐：*

* https://forum.cocos.org/t/topic/88433

---

*论坛教程推荐：*

* https://forum.cocos.org/t/flag/88446

* https://forum.cocos.org/t/scrollview/88758

* https://forum.cocos.org/t/topic/88049

* https://forum.cocos.org/t/shader-thebookofshaders-for-cocoscreator/88602

---
*CocosCreator 游戏试玩推荐：*

[1、小迷宫大冒险](https://forum.cocos.org/t/topic/87624)

platform: WeChatMinGame
QTCode: ![Image Text](https://forum.cocos.org/uploads/default/original/3X/c/5/c5af08e1404c69646436f55879f2a33766854bd6.jpg)

[2、钢琴之王](https://forum.cocos.org/t/topic/76504)

platform: WeChatMinGame
QTCode: ![Image Text](https://forum.cocos.org/uploads/default/original/3X/1/b/1b5ce904e28d4bcb0cab4daa0f8b7ed56fa0dce7.png)

[3、单挑篮球](https://forum.cocos.org/t/topic/84248)

platform: WeChatMinGame
QTCode: ![Image Text](https://forum.cocos.org/uploads/default/original/3X/d/9/d91e1698d7a00b7c73ca0712a7cc846fdb7644fc.jpg)