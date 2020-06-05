往期记录：

[【CocosCreator 常见问题归纳】第一期](https://forum.cocos.com/t/cocoscreator/74555)
[【CocosCreator 常见问题归纳】第二期](https://forum.cocos.com/t/cocoscreator/77714)

---

[部分 PR 周知：](https://github.com/cocos-creator/engine/pulls)

[1、cocos creator 旋转 3d 节点时 万向节死锁问题 ](https://forum.cocos.com/t/creator3d/79443)

> PR: https://github.com/cocos-creator/engine/commit/581ef383593051ce1ed3c8c29a9ab5f10f4bead1

[2、修复 spine 使用多皮肤，在 cache mode 下不显示的问题 ](https://forum.cocos.com/t/2-0-9-spine/75339/3)

> PR: https://github.com/cocos-creator/engine/pull/4091

[3、2.0.10 Label 较 2.0.9 卡顿 ](https://forum.cocos.com/t/2-0-10-label-2-0-9/78697)

> PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/1765

[4、修复 cc.tween 的值为 0 时可能无效果的问题 ](https://forum.cocos.com/t/2-1-1-cc-tween-bug-2-1-2/80081)

> PR: https://github.com/cocos-creator/engine/pull/4790

[5、 2.1.1用射线检测基础 3D 物体(长方体)，检测距离会被缩放值影响 ](https://forum.cocos.com/t/2-1-1-3d/78777)

> PR: https://github.com/cocos-creator/engine/pull/4562

[6、bmfont 内存泄漏 ](https://forum.cocos.com/t/bmfont-demo/79336)

> PR: https://github.com/cocos-creator/engine/pull/4651

[7、 Cocos Creator 2.0.9 ttf 字体导致 iOS 设备上内存泄漏问题 ](https://forum.cocos.com/t/cocos-creator-2-0-9-ttf-ios/78424)

> PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/1752

[8、creator 2.0.9 微信小游戏上背景音乐无法关闭 ](https://forum.cocos.com/t/creator-2-09/79652)

> PR: https://github.com/cocos-creator/engine/pull/4793

[9、spine 通过 JSB 调原生函数 BUG ](https://forum.cocos.com/t/spine-jsb-bug-demo/78389)

> PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/1754

[10、网络图片多次加载失败后 loadResArray 无回调 ](https://forum.cocos.com/t/loadresarray/78335)

> PR: https://github.com/cocos-creator/engine/pull/4501
https://github.com/cocos-creator-packages/weapp-adapter/pull/96

[11、2.0.10 字体显示异常 系统字体 Arial，在模拟器显示忽大忽小 ](https://forum.cocos.com/t/2-0-10-arial/79862)

> PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/1766

[12、creator h5 音效静音问题 ](https://forum.cocos.com/t/creator-h5-demo/79989)

> PR: https://github.com/cocos-creator/engine/pull/4767

[13、微信小游戏下加载大文件 json ios 直接闪退 ](https://forum.cocos.com/t/json-ios/79161)

> PR: https://github.com/cocos-creator-packages/weapp-adapter/pull/101

[14、UI加了 BlockInputEvents 后还是吃事件 ](https://forum.cocos.com/t/ui-blockinputevents/79731)

> PR: https://github.com/cocos-creator/engine/pull/4522
https://github.com/cocos-creator/engine/pull/4710
https://github.com/cocos-creator/engine/pull/4653/files

---

常见问题：

[1、2.1.1 动态修改material 贴图 ](https://forum.cocos.com/t/cocos-creator-cc-texrure2d/78425)

> A: 材质贴图接收的是cc.Texture2D对象，所以我们可以自己添加在属性面板一个cc.Texture2D对象。
![Image Text](https://forum.cocos.org/uploads/default/original/3X/3/c/3c0f58b742338e6279fc3baf9808dac49f19b1e1.png)
```
spriteFrame.getTexture()
```
有了贴图，我们直接调用材质系统的api修改贴图：
```
this.material.setProperty("diffuseTexture", this.goldTexture);
```
setProperty这个接口是可以修改材质上几乎所有属性的。
测试demo：[https://github.com/Jno1995/DynamicLoadingMaterial](https://github.com/Jno1995/DynamicLoadingMaterial)

[2、cocos H5 在 ios端getID 无法判断](https://forum.cocos.com/t/cocos-h5-ios-getid/78309)

> A: 因为这两个平台的touchID本身就是不一样的，这个需要注意一下。
所以touchID并不能作为多点触控的序号标识，
你应该获取
![Image Text](https://forum.cocos.org/uploads/default/original/3X/a/b/ab85fae303142fe2231744dac86694fb51ac13a6.png)
event.getTouches().length;
这个字段来检测触点数量

[3、cocos creator 旋转 3d节点时 万向节死锁问题](https://forum.cocos.com/t/creator3d/79443)

> A: [https://forum.cocos.com/t/creator3d/79443/4?u=337031709](https://forum.cocos.com/t/creator3d/79443/4?u=337031709)

[4、 2.1.0 更新到 2.1.1 sprite.setState 不能使用](https://forum.cocos.com/t/2-1-0-2-1-1-sprite-setstate/78306)

> A: this.sprite.setMaterial(0, cc.Material.getBuiltinMaterial('gray-sprite');

[5、VIVO window.requestAnimFrame 未捕获的错误](https://forum.cocos.com/t/vivo-window-requestanimframe/77984)

> A: 
![Image Text](https://forum.cocos.org/uploads/default/original/3X/3/3/337c1774970ea06dc521df710d6fe5cfb3f0e514.png)
如果windows.requestAnimFrame没有初始化的话，就赋值为16。

[6、按钮的点击事件失效](https://forum.cocos.com/t/demo/79910?u=337031709)

> A: 这是2.0.10版本存在的缺陷，你需要在切换按钮的透明度之后再调用
节点的onSiblingIndexChanged函数，根据arrivalOrder重新刷新场景渲染顺序。
你可以这样使用：
![Image Text](https://forum.cocos.org/uploads/default/original/3X/6/2/62a5ceb8e39c8b090a567cf5e12650caebfded1a.png)

[7、取消定时器失败，定时器仍然运行](https://forum.cocos.com/t/topic/78597)

> A: 你好这个问题原因是this.unschedule(callback, target)是需要两个参数来指定需要暂停的定时器对象。
callBack 必须是与this.schedule中的回调一样，匿名函数不行。
target则是schedule的环境对象，这两个如有差异都不能正常停止schedule。
实现可以参考：
CCScheduler.js -&gt; unschedule

[8、如何在编辑器环境下，动态切换资源](https://forum.cocos.com/t/topic/78766/5)
> A:
```js
var texture2DEnum = cc.Enum({
    null: 0,
    texture_one: 1,
    texture_two: 2
});

cc.Class({
    extends: cc.Sprite,
    editor: {
        disallowMultiple: true,
        executeInEditMode: true,
        menu: "自定义组件/自定义精灵组件",
    },
    properties: {
        defaultSpriteFrameTexture2D: {
            default: texture2DEnum.null,
            type: texture2DEnum,
            displayName: "图片精灵初始贴图枚举",
            notify: function() {
                this.onLoadTexture2DToSprite();
            }
        },
        _oldDefaultTexture2D: null,
    },

    // LIFE-CYCLE CALLBACKS:

    // onLoad () {},
    start () {
        this.onLoadTexture2DToSprite();
    },

    onLoadTexture2DToSprite () {
        this.defaultTextureUrl = cc.url.raw(`resources/texture_${this.defaultSpriteFrameTexture2D}.jpg`);
        if (this._oldDefaultTexture2D !== this.defaultTextureUrl) {
            this._oldDefaultTexture2D = this.defaultTextureUrl;
            if (this.defaultSpriteFrameTexture2D !== texture2DEnum.null) {
                cc.loader.load(this.defaultTextureUrl, (err, resTexture2D)=> {
                    this.spriteFrame = null;
                    this.spriteFrame = new cc.SpriteFrame(resTexture2D);
                });
            }
            else {
                this.spriteFrame = null;
            }
        }
    }
});

```
![Image Text](https://forum.cocos.org/uploads/default/original/3X/5/a/5aa8f242ca2019d92d6b3db878b06c5dd9bf1d61.gif)
2、http://forum.cocos.com/t/topic/78766/1
这个需求可以利用creator的控件库插件解：
将需要用到的prefab拉到控件库，下次使用的时候只要拖出来就行。
![Image Text](https://forum.cocos.org/uploads/default/original/3X/6/9/6935442a4acf0e0e4453c286364d482f572f7081.png)

[9、使用 cc.loader.loadRes加载cc.BufferAssets类型报错](https://forum.cocos.com/t/cc-loader-loadres-cc-bufferassets/80009)

> A: 不好意思，2.0.x只支持加载binary，但识别为cc.Asset类型，只有在2.1以上编辑器才会将binary识别为BufferAsset

[10、有什么方法可以获取Creator项目中的所有龙骨资源吗？](https://forum.cocos.com/t/creator/79082)

> A:
```js
Editor.assetdb.queryAssets('db://assets/**\\/*',['dragonbones','dragonbones-atlas'],function ( error, results ) {

});
```
https://forum.cocos.org/uploads/default/original/3X/f/2/f2ac8537d0da8507cec8f206f1e28bdc4e75d30c.png

[11、Can't find subpackage xxx](https://forum.cocos.com/t/cant-find-subpackage-xxx/78581)

> A: 请把项目构建发布之后测试。
> web预览时无法生成分包信息。

[12、 关于 videoPlayer 永远显示在最上面的问题](https://forum.cocos.com/t/videoplayer/54019)

> A: 参考这个帖子的方案，
> https://forum.cocos.com/t/topic/68397
> 可以满足绝大多数浏览器需求。但是在安卓微信浏览器上则需要像下面这样做。
> https://forum.cocos.org/uploads/default/original/3X/4/0/409abcbfe1d7c222d349fda801a440d16951e5ce.png

[13、 挂载Animation组件的节点使用nodePool的问题](https://forum.cocos.com/t/animation-nodepool/79760)

> A: 目前引擎是这样设计的，回收到节点池时会移除节点注册的action动作，但是对于动画只会暂停而不会消除。
> 所以你需要自己在播放的时候处理一下每次都从头开始重新播放。

[14、 2.1.1 LabelShadow IOS上无效](https://forum.cocos.com/t/2-1-1-labelshadow-ios/79286/2)

> A: 目前暂不支持ios

[15、 ScrollView嵌套EditBox，使用节点池复用EditBox出现的问题](https://forum.cocos.com/t/editbox/79896/2)

> A: 主要是这个接口导致的问题。
> https://forum.cocos.org/uploads/default/original/3X/5/1/51184dba423315b93149c00cce1451fc961bfeb5.png
> removeFromParent() 这个接口默认会清除节点的已注册的事件。
> removeFromParent() 传入false 即可解决你的问题

[16、cdn缓存问题](https://forum.cocos.com/t/cdn/79729)

> A: 这运营方面的问题，我们的解决方案是：manifaset 放 oss, 下载包 放 cdn 服务器。拿走不谢！这个问题也是坑了我们很久。
> {"version":"1.0055","packageUrl":"http://cdn.xx.net/xx/fk10055","remoteManifestUrl":"http://osscdn.xx.net/xx/fk/project.manifest","remoteVersionUrl":"http://osscdn.xx.net/xx/fk/version.manifest"}
> 
> 也可以这样：
> {"version":"1.0055","packageUrl":"http://cdn.xx.net/xx/fk10055","remoteManifestUrl":"http://osscdn.xx.net/xx/fk10055/project.manifest","remoteVersionUrl":"http://osscdn.xx.net/xx/fk10055/version.manifest"} 代码取远程 manifest 时加上版本号自己拼，都放 cdn服务器。

[17、Cocos Creator 物理引擎相关问题](https://forum.cocos.com/t/cocos-creator/79064)

> A: 1、box2d弹力问题：
> 弹力属于特殊运动，物理系统在游戏生命周期内会不断计算刚体的状态和位置。目前可以通过降低物理系统的update回调传递的dt参数的精度来优化这个问题。
> 找到box2d.js中的这段代码，然后改一下红框部分的代码。
> ![Image Text](https://forum.cocos.org/uploads/default/original/3X/4/2/421fbb31cc0c2a35b5580bdbe01ad148a00f9d8e.png)
> 还有另外一种方案是开启一个计时器，判断多次回弹时每次幅度是否小于某个值（比如dt），然后再手动停止这个物体的弹跳。
> 2、3属于同类问题，开启gold刚体的摩擦力即可。

[18、编辑器问题：经常打开工程就异常](https://forum.cocos.com/t/topic/78190)

> A: [https://www.weidown.com/xiazai/733.html](https://www.weidown.com/xiazai/733.html)
> 下载这个DLL修复工具使用试试

[19、cc.url.raw获取的路径因平台而异？](https://forum.cocos.com/t/cc-url-raw/80093)

> A: 2、这是正常的，这个 API 只是简单的路径转换而已，不会考虑到文件类型。实际上 Creator 也没有任何 API 或文档要求用户直接使用 xxx.prefab 这样后缀的路径。你应该直接写 TestPrefab.json 如果你需要的话
> （因为 Prefab 不是 raw asset，只有 raw asset 才能用 .raw。对普通的 asset 来说，无法保证能拿到这个 json，因为 json 可能会合并。）

[20、2.0.2 IOS10 以下的没法跑啊](https://forum.cocos.com/t/2-0-2-ios10/66290)

> A: https://forum.cocos.org/uploads/default/original/3X/3/7/3713e64092b22e9c56cd87ce80f13755c40b3523.png
根据今天最新的数据来看，iOS 9 占比已经非常小了。我们之前有尝试支持过，不过效果不佳，因此决定暂时放弃。之后我们会尽快在 iOS 上启用全新的 JS 引擎，这样就能避免造成平台割裂，到时有概率能支持 iOS 9