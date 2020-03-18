# 【CococsCreator 常见问题归纳】第十期

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

---
*部分PR周知：*

<details>
 <summary>[(v2.3.0) 调用 cc.game.restart() 原生平台可能存在内存泄漏](https://forum.cocos.org/t/creator2-3-0-cc-game-restart/89314)</summary>
 > PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/2215
</details>

<details>
 <summary>[(v2.3.0) 粒子组件 positionType 设置为 free 后，在安卓上表现异常](https://forum.cocos.org/t/creator-positiontype-free/89344)</summary>
 > PR: https://github.com/cocos-creator-packages/jsb-adapter/pull/253 | https://github.com/cocos-creator/cocos2d-x-lite/pull/2203
</details>

<details>
 <summary>[(v2.3.0) 修改了隐藏节点的 blend 设置之后出现纹理错乱](https://forum.cocos.org/t/topic/89122)</summary>
 > PR: PR: https://github.com/cocos-creator/engine/pull/6201
</details>

---

*常见问题：*
<details>
 <summary>[小游戏真机调试显示的 drawcall 比在 chrome 里多太多，是什么原因？](https://forum.cocos.org/t/drawcall-chrome/89332)</summary>
 > 小游戏默认不开启动态合批，所以 DC 会比较高。可以参考文档 [动态合图](https://docs.cocos.com/creator/manual/zh/advanced-topics/dynamic-atlas.html#%E5%90%AF%E7%94%A8%E3%80%81%E7%A6%81%E7%94%A8%E5%8A%A8%E6%80%81%E5%90%88%E5%9B%BE) 开启动态合批。
</details>

<details>
 <summary>[怎么使用 cc.tween 执行贝塞尔曲线?](https://forum.cocos.org/t/cc-tween-bezier/86756)</summary>
 > cc.tween(node).then(cc.bezierTo()).start();
</details>

<details>
 <summary>[Android 平台怎么读取远程 json ？](https://forum.cocos.org/t/cc-loader-load-json/85019)</summary>
 > ![Image text](https://forum.cocos.org/uploads/default/original/3X/3/8/38422aa2bd25a785b74c6e43f4c37a32c5d8f8a1.png)
</details>

<details>
 <summary>[CocosCreator 用 awsd 漫游场景很慢怎么办？](https://forum.cocos.org/t/creator2-3-0-2-3-1-asdw/89401)</summary>
 > 把如下图红框中的值改大点就行。
 ![Image text](https://forum.cocos.org/uploads/default/original/3X/b/6/b607e5e2488f836c5f61032d70e4192ab0133bce.png)
</details>

<details>
 <summary>[节点移动出现花屏怎么办？](https://forum.cocos.org/t/cocos-creator-sprite/89424)</summary>
 > 因为摄像机没有勾选 clearFlags 的 color 选项，摄像机在每次渲染的时候不会清除上次渲染的颜色缓冲区数据，故造成花屏。
 ![Image Text](https://forum.cocos.org/uploads/default/original/3X/3/7/372528e73b86b3b8a0b7acc7330bc038d1066f6f.png)
</details>

<details>
 <summary>[Sprite 节点旋转出现锯齿怎么办？](https://forum.cocos.org/t/creator-2-2-1-sprite/89498)</summary>
 > 这个和纹理的混合模式无关。开显卡的抗锯齿就好了，把 `cc.macro.ENABLE_WEBGL_ANTIALIAS = true;` 放到任意项目脚本的最开头（第一行）即可。
</details>

<details>
 <summary>[材质渲染不出来怎么办？](https://forum.cocos.org/t/creator-2-3-1/89710)</summary>
 > 3D 摄像机使用 renderStages 来选择性的渲染 material，在 material 上对应的是 technique 属性的值。
 ![Image Text](https://forum.cocos.org/uploads/default/original/3X/e/f/ef1e41da86a0c53c0ff91fd6fb6780450dfaec6b.png)
</details>

<details>
 <summary>[如何获取 tiledMap 对象的自定义属性？](https://forum.cocos.org/t/tiledmap/89916)</summary>
 > `getObjectGroups()[i]._properties.terrain`
</details>

<details>
 <summary>[Creator 2.3 如何自定义光照Effect?](https://forum.cocos.org/t/creator-2-3-effect/89873)</summary>
 > 直接 #include <cc-lights> 就能用参数了，可以参考下 [shading-toon](https://github.com/cocos-creator/engine/blob/v2.3.3-release/cocos2d/renderer/build/chunks/shading-toon.inc) 的实现。
</details>

---

*论坛精华 demo*

<details>
 <summary>[2.3.0 转场特效](https://forum.cocos.org/t/2-3-0/88861)</summary>
 > github: https://github.com/2youyou2/transitions | online: http://2youyou2.com/transitions
</details>

<details>
 <summary>[LoopList(2) 做一个类似UITableView 的控件](https://forum.cocos.org/t/looplist-2-uitableview/89957)</summary>
 > github: https://github.com/backjy/CCC-LoopList.git
</details>

<details>
 <summary>[开源 Cocos Creator 中 TypeScript 版本的 PureMvc](https://forum.cocos.org/t/cocos-creator-typescript-puremvc/90057)</summary>
 > github: https://github.com/error-maker/cocos-typescript-puremvc
</details>

---

*游戏开发辅助工具 / 插件推荐：*

* [原生调试工具](https://bitbucket.org/wolfpld/tracy/src/master/)

* [音效库](http://audio.wangshaoxing.com)

* [Js 状态机](https://github.com/jakesgordon/javascript-state-machine)

* [Js 代码混淆](https://github.com/javascript-obfuscator/javascript-obfuscator)

---

*论坛教程推荐：*

* [Cocos 荣耀讲师征稿](https://forum.cocos.org/t/cocos/83536)

* [WebView内部页面的交互和层级问题](https://forum.cocos.org/t/webview/88932)

* [分形着色器](https://forum.cocos.org/t/topic/89354)