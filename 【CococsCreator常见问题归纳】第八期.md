# 【CococsCreator 常见问题归纳】第八期

往期记录：

[【CocosCreator 常见问题归纳】第一期](https://forum.cocos.com/t/cocoscreator/74555)

[【CocosCreator 常见问题归纳】第二期](https://forum.cocos.com/t/cocoscreator/77714)

[【CocosCreator 常见问题归纳】第三期](https://forum.cocos.com/t/cocos-creator/80350)

[【CocosCreator 常见问题归纳】第四期](https://forum.cocos.com/t/cocos-creator/81800)

[【CocosCreator 常见问题归纳】第五期](https://forum.cocos.org/t/cococscreator/85032)

[【CocosCreator 常见问题归纳】第六期](https://forum.cocos.org/t/cococscreator/85751)

[【CocosCreator 常见问题归纳】第七期](https://forum.cocos.org/t/cococscreator/86570)
---

部分PR周知：

1、(2.2.0) 修复 native 和 pc 平台上的屏幕适配异常。

> Q: https://forum.cocos.org/t/topic/79780 ,  https://forum.cocos.org/t/creator2-2-0-window-bug/87467
> PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/1891

[2、修复富文本频繁创建时导致的内存泄漏问题。](https://forum.cocos.org/t/topic/79294)

> PR: https://github.com/cocos-creator/engine/pull/5906

[3、label 使用 char 模式时在 android 上会出现像素边框](https://forum.cocos.org/t/2-1-3-label-char/87165)

> PR: https://github.com/cocos-creator/engine/pull/5903

[4、修复 QQ 和 safari 浏览器上当滚动游戏界面后触点不正确的问题](https://forum.cocos.org/t/2-2-0-qq-bug/84750)

> PR: https://github.com/cocos-creator/engine/pull/5604 ， https://github.com/cocos-creator/engine/pull/5907

[5、修复预加载场景有几率不进入成功回调](https://forum.cocos.org/t/topic/87050)

> PR: https://github.com/cocos-creator-packages/adapters/pull/52 ， https://github.com/cocos-creator-packages/adapters/pull/53

[6、修复 graphics stroke 绘制线条时的 bug](https://forum.cocos.org/t/graphic-bug/87288)

> PR: https://github.com/cocos-creator/engine/pull/6002

[7、修复 TiledMap 在原生平台花屏的问题](https://forum.cocos.org/t/creator-tiledmap/87680)

> PR: https://github.com/cocos-creator-packages/jsb-adapter/pull/229

[8、修复节点销毁时，没有完全清空 eventTargets 的 bug](https://forum.cocos.org/t/-onpredestroy-target-targetoff-this-bug/87616)

> PR: https://github.com/cocos-creator/engine/pull/5985

[9、修复节点销毁时，没有完全清空 eventTargets 的 bug](https://forum.cocos.org/t/-onpredestroy-target-targetoff-this-bug/87616)

> PR: https://github.com/cocos-creator/engine/pull/5985

[10、修复 cc.Director.calculateDeltaTime 会在微信平台上死循环的 bug](https://forum.cocos.org/t/creator-2-2-1-calculatedeltatime/87187)

> PR: https://github.com/cocos-creator/engine/pull/5952

[11、修复老设备上 shader 不支持 highp 导致渲染黑屏的问题](https://forum.cocos.org/t/failed-to-compile-fs-0-in-2-highp-recision-is-not-supported-in-fragment-shader/77452)

> PR: https://github.com/cocos-creator/engine/pull/5675

[12、图片选择 etc1 纹理压缩并且所在场景选择延迟加载资源时，出现渲染错误并报错](https://forum.cocos.org/t/2-2-1-web-etc1/87570)

> PR: https://github.com/cocos-creator/engine/pull/5965
https://github.com/cocos-creator/engine/pull/6016

13、修复手机 UC 浏览器全屏时无法多点触摸的 bug

> PR: https://github.com/cocos-creator/engine/pull/6016

[13、修复 PageView 在超出边界时进行快速二次拖动，会导致页面跳转错乱](https://forum.cocos.org/t/creator2-1-2-pageview--curpageidx/87562)

> PR: https://github.com/cocos-creator/engine/pull/6015

[13、修复纹理压缩导致 TiledMap 地表层渲染错误](https://forum.cocos.org/t/2-2-1-tiledmap/85455)

> PR: https://github.com/cocos-creator/engine/pull/5999

---

常见问题：

1、CocosCreator 2.2.0 版本之后，让精灵制灰应该怎么做：
> A: 参考代码：
```js
let grayMaterial = cc.Material.getBuiltinMaterial('2d-gray-sprite');
cc.find("Canvas/cocos").getComponent(cc.Sprite).setMaterial(0, grayMaterial);
```

[2、自定义组件能否创建临时子结点而不被保存](https://forum.cocos.org/t/topic/87013)
> A: 对于不需要保存的子节点，加一句node._objFlags = cc.Object.Flags.DontSave;

[3、CocosCreator 设备扫一扫预览的问题](https://forum.cocos.org/t/creator-2-0-9/78364)
> A: https://forum.cocos.org/uploads/default/original/3X/b/0/b06a50bcf8fad031ad34394cdf63b3604e4c8aa9.png
> A: 在防火墙里面配置，把cocos全部允许通过

[4、2.2.0打包安卓 字体投影效果失效，ttf字体](https://forum.cocos.org/t/2-2-0-ttf/87896)
> A: 原生平台的 Canvas 还没支持 shadow 的特性设置，后面会陆续补全 Web 端 Canvas 的功能。

[5、原生 Spine骨骼换肤不生效](https://forum.cocos.org/t/spine/87742)
> A: setSkin后，执行 setToSetupPose(); 才会更新

[6、资源无法释放的问题](https://forum.cocos.org/t/1-9-1-10/59449/45?u=337031709)
> A: 这些 JS 引用你需要清理下
https://forum.cocos.org/uploads/default/original/3X/2/e/2e8f71bd75c26c2528d44acc718d0ed90ed672f1.png
> 销毁是需要 node.destroy 的，而不只是销毁组件
https://forum.cocos.org/uploads/default/original/3X/0/9/099c8ea65e1b36590363b1657c1f343bbee89aee.png
> **避免在控制台打印对象日志，这个会产生内存的，导致误判**
https://forum.cocos.org/uploads/default/original/3X/d/9/d9557f007ef402a8899edd1b3df19bcd734c0e63.png
> 基本都是用法问题，使用JS语言，要细心，不然很容易数据泄漏的，还有节点不用都需要调用destroy，不然会出现内存泄漏，下面是修复前后的代码比对 (该处理基于2.2.x)。
https://forum.cocos.org/uploads/default/original/3X/9/9/99243a3f0611163f2a60886273d1b53f5da811c7.zip
