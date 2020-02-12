# 【CococsCreator 常见问题归纳】第七期

往期记录：

[【CocosCreator 常见问题归纳】第一期](https://forum.cocos.com/t/cocoscreator/74555)

[【CocosCreator 常见问题归纳】第二期](https://forum.cocos.com/t/cocoscreator/77714)

[【CocosCreator 常见问题归纳】第三期](https://forum.cocos.com/t/cocos-creator/80350)

[【CocosCreator 常见问题归纳】第四期](https://forum.cocos.com/t/cocos-creator/81800)

[【CocosCreator 常见问题归纳】第五期]( https://forum.cocos.org/t/cococscreator/85032 )

[【CocosCreator 常见问题归纳】第六期](https://forum.cocos.org/t/cococscreator/85751)

---

部分PR周知：

[1、(2.2.0) Lable 组件在微信小游戏开放数据域中出现异常

>  PR: https://github.com/cocos-creator/engine/pull/5763

[2、(2.2.0) EditBox 输入状态时需要检测 EditBox 是否已经销毁

> PR:  https://github.com/cocos-creator/engine/pull/5748

3、(2.2.0)  修复原生粒子颜色不正确的问题

> PR:  https://github.com/cocos-creator/cocos2d-x-lite/pull/1920

[4、(2.2.0) VideoPlayer 在 show all 布局下竖屏下显示有问题

> PR:  https://github.com/cocos-creator/2d-tasks/issues/2050

[5、 (2.2.0)  setTiledTileAt 接口无效的问题](https://forum.cocos.org/t/bug-v2-2-0-tile-layer-settilegidat/85747)

> PR:  https://github.com/cocos-creator/engine/pull/5713

6、(new)   当节点 scale 不为 1 时， editBox、webview、videoPlayer 显示位置出现偏移的问题 

> PR:  https://github.com/cocos-creator-packages/jsb-adapter/pull/201

7、[(2.2.0)  修复 cc.rotateTo 无效的问题 ](https://forum.cocos.org/t/2-2-0-rotateto-bug/85717)

> PR:  https://github.com/cocos-creator/engine/pull/5717
>

8、[(2.2.0)  修复 cc.rotateBy 无效的问题 ]( https://forum.cocos.org/t/cocos-creator-v2-2-1-rc-4/85555/267?u=337031709 )

> PR: https://github.com/cocos-creator/engine/pull/5612

9、[(2.2.0)  修复子节点group与父节点group同步的问题 ](https://forum.cocos.com/t/2-2-0-child-group-group/84960/2)

> PR:  https://github.com/cocos-creator/engine/pull/5723

10、[(2.2.0) iOS音效切后台回来bug导致崩溃](https://forum.cocos.org/t/2-2-0-ios-bug/85439)

> PR:  https://github.com/cocos-creator/cocos2d-x-lite/pull/1930

11、(2.2.0) 修复 editBox 在 editing-did-began 回调里无法设置 editBox.string 的问题 

> PR:   https://github.com/cocos-creator/engine/pull/5732

12、[(2.2.0)  修复 jsb.Downloader 注册回调报错的问题 ](https://forum.cocos.org/t/cocos-creator-v2-2-1/85555/275?u=337031709)

> PR:  https://github.com/cocos-creator/cocos2d-x-lite/pull/1936

[13、(2.2.0)  修复断点续传下载失败的问题 

> PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/1931

---

常见问题：

[1、inspector 编码 vue 如何 call 组件的function？](https://forum.cocos.org/t/inspector-vue-call-function/86076)

> A:  
>
> ```  
> Vue.component("UploadComponent", {
>   template: `<ui-button class="green flex-1" @confirm="upload">上传</ui-button>`,
>   props: {
>     target: {
>       twoWay: true,
>       type: Object,
>     },
>   },
>   methods: {
>     upload() {
>       var scene = cc.director.getScene();
>       // 然后通过场景节点scene获取场景中的节点、组件，调用上面的方法
>     }
>   }
> });
> ```

[2、各位大佬，有没有办法远程加载图集？](https://forum.cocos.org/t/topic/86099)

> A:  参考 demo :  https://github.com/Jno1995/load-remote-plist 
>

[3、cocoscreator 在苹果系统下无法 加载网络图片.webp](https://forum.cocos.org/t/cocoscreator-webp/86037)

> A:   [https://caniuse.com/#search=webp18](https://caniuse.com/#search=webp)
>ios系统不支持webp
