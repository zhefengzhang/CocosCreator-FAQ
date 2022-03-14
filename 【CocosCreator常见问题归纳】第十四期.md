# 【CococsCreator 常见问题归纳】第十四期
本系列文档已经同步上传到 [github](https://github.com/Jno1995/CocosCreator-FAQ)

---
*常见问题*
<details>
 <summary>3.4.1 加载本地资源问题</summary>
 问题： 动态加载 resources 文件夹下的图片时提示找不到

 原因：
 图片设置为 sprite-frame 、 texture 或其他图片类型后，将会在 资源管理器 中生成一个对应类型的资源。但如果直接加载 testAssets/image ，得到的类型将会是 ImageAsset ，必须指定路径到具体的子资源（testAssets/图片名/类型-spriteframe）。 

 [查看原文](https://forum.cocos.org/t/topic/132211)
</details>

<details>
 <summary>求教，2.x远程图片如何动态合图？</summary>
 解决方案：<br>
 texture.packable 设置为 true;

 [查看原文](https://forum.cocos.org/t/topic/132242)
</details>

<details>
 <summary>Cocos Dashboard 安装不上？</summary>
 报错：<br>
 不能安装需要的文件，因为CAB文件没有正确的签名，可能表明CAB文件损坏。
 解决方案：<br>
 由于内网问题，不使用普通浏览器下载，使用迅雷下载，或者将不受内网影响机器上下载好的文件拿来安装。

 [查看原文](https://forum.cocos.org/t/topic/132259)
</details>

<details>
 <summary>did not have a source.properties file？</summary>
 原因：<br>
 ndk 配置出错，没有指定版本；

 [查看原文](https://forum.cocos.org/t/topic/132416)
</details>

<details>
 <summary>【BUG】Cocos Creator 3.4.2 骨骼动画 Uncaught RangeError: offset is out of bounds</summary>
 解决方案：

 如果重新设置了SkeletonData, 在设置新SkeletonData 之前清理下RenderData.手动调用 skeletonComp.destroyRenderData();

 [查看原文](https://forum.cocos.org/t/topic/132437)

 类似问题：
 
 [3.4.2 spine换装错误](https://forum.cocos.org/t/topic/132428)
</details>

<details>
 <summary>spine的局部换装，相同spine都会同时换装</summary>
 解决方案：<br>
 
 [https://note.youdao.com/s/P4bOPqRw](https://note.youdao.com/s/P4bOPqRw)

 [查看原文](https://forum.cocos.org/t/topic/132467)
 
</details>

<details>
 <summary>node起始不激活,后设置成激活，touch没事件回调</summary>
 原因：<br>
 node 太小，点击位置不对，Sprite 应先设置 sizeMode 为 custom，再设置节点大小。

 [查看原文](https://forum.cocos.org/t/topic/132155)
 
</details>

<details>
 <summary>3.4.1怎么调慢游戏整个画面的速度？</summary>
 解决方案：<br>
 
 ```javaScript
 let oldTick = director.tick.bind(director);
 let self = this;
 director.tick = function (dt) {
	dt *= self.globalGameTimeScale;
	oldTick(dt);
	if (isAndroid) {
		// 针对android，spine速度与dt无关，
      //需要设置SkeletonAnimation的GlobalTimeScale

		sp.spine.SkeletonAnimation.setGlobalTimeScale(self.globalGameTimeScale);
	}
 };
   ```
 [查看原文](https://forum.cocos.org/t/topic/132392)
 
</details>

<details>
 <summary>3.4.1常驻节点上资源再切换场景后，部分资源会丢失</summary>
 解决方案：<br>
 在节点上面添加 RenderRoot2D 组件。

 [查看原文](https://forum.cocos.org/t/topic/132310)
 
</details>

<details>
 <summary>构建完成后如何读取版本json文件</summary>
 解决方案：<br>
 安卓：

 ```javascript
 let fsUtils = window['fsUtils'];
 let result = fsUtils.readJsonSync('version.json');
 ```
 [查看原文](https://forum.cocos.org/t/topic/132343)
 
</details>

<details>
 <summary>cocos creator ios下多分辨率切换</summary>
 解决方案：<br>
 参考：https://forum.cocos.org/t/topic/128862

 里面的横竖屏切换方案

 [查看原文](https://forum.cocos.org/t/topic/132282)
 
</details>

---

### *论坛精华*

#### [自动化打包流程：打包前处理 => cocos构建 => 压缩图片，一行代码搞定](https://forum.cocos.org/t/topic/132246)

#### [高性能-材质动态变色分享](https://forum.cocos.org/t/topic/132212)

#### [【教你一招】编辑器启动时自动贴靠插件到内部](https://forum.cocos.org/t/topic/132247)

#### [Cocos Shader入门基础七：一文读懂深度图](https://forum.cocos.org/t/topic/132478)
---
*往期记录*

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

[【CocosCreator 常见问题归纳】第十一期](https://forum.cocos.org/t/topic/131524)

[【CocosCreator 常见问题归纳】第十二期](https://forum.cocos.org/t/topic/131843)

[【CocosCreator 常见问题归纳】第十三期](https://forum.cocos.org/t/topic/132233)

