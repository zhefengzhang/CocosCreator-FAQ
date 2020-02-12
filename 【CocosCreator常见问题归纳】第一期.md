### 开门见山吧。本贴会坚持更新，不出意外的话频率一周一次。希望能帮到大家学习和开发。
	这个帖子更希望作为一个“问题与问题解决方案”的借鉴平台而持续的发光发热。包括让大家喜欢。
	如果你需要帮助，你可以通过论坛搜索找到一些参考。如果没有，请你发篇新贴。
	情况紧急的话@我们一下。（@huanxinyin，@337031709，@Knox，@jare，@jjyinkailejj，
	@BigBear，@_PP ，@crazypad，@yufang.wu，@leda）
	如果有些方案是我们还没整理的，请在帖子下方留言。
---
[CocosCreator文档](https://docs.cocos.com/creator/2.1/manual/zh/)
[CocosCreatorAPI](https://docs.cocos.com/creator/2.1/api/zh/)
[CocosCreator产品发布](https://www.cocos.com/creator)
[CocosCreator产品下载](https://www.cocos.com/download)
[CocosCreator引擎仓库](https://github.com/cocos-creator/engine)
[其他第三方工具和资源](https://docs.cocos.com/creator/manual/zh/getting-started/support.html#%E5%85%B6%E4%BB%96%E7%AC%AC%E4%B8%89%E6%96%B9%E5%B7%A5%E5%85%B7%E5%92%8C%E8%B5%84%E6%BA%90)
[到仓库向开发团队反馈](https://github.com/cocos-creator/engine/issues)
[FAQ](https://docs.cocos.com/creator/manual/zh/getting-started/faq.html)
#### **论坛其它常见问题收录贴**
> * [Cocos Creator常见问题汇总](https://forum.cocos.com/t/cocos-creator/35732)
> * [[faq] 常见问题集合，有问题请先看这里再发帖（8月29日更新）](https://forum.cocos.com/t/faq-8-29/35510)
#### **CocosCreator组件化开发相关**
> * [属性检查器参数](https://docs.cocos.com/creator/manual/zh/scripting/reference/attributes.html?h=属性参数)
> * [组件脚本开发指南](https://docs.cocos.com/creator/manual/zh/scripting/)
> * [自定义组件Editor参数](https://docs.cocos.com/creator/manual/zh/scripting/reference/class.html#editor-%E5%8F%82%E6%95%B0)
> * [插件开发Editor Module API](https://docs.cocos.com/creator/manual/zh/extension/api/editor-framework/)
> * [扩展 UI Kit](https://docs.cocos.com/creator/manual/zh/extension/extends-ui-kit.html)
#### **提供设计参考的Demo**
> * [演示和项目范例](https://docs.cocos.com/creator/manual/zh/getting-started/support.html#%E6%BC%94%E7%A4%BA%E5%92%8C%E8%8C%83%E4%BE%8B%E9%A1%B9%E7%9B%AE)
> * [官方范例合集](https://github.com/cocos-creator/example-cases/tree/v2.1)
> * [微信小游戏开放数据域范例1.x版](https://github.com/cocos-creator/demo-wechat-subdomain/tree/1.x)
> * [微信小游戏开放数据域范例2.x版](https://github.com/cocos-creator/demo-wechat-subdomain/tree/master)
> * [Facebook instant game](https://github.com/cocos-creator/demo-instant-games)
> * [物理系统范例2.0版](https://github.com/2youyou2/physics-example/tree/next)
> * [不同场景中显示不同分辨率子域2.0版](https://github.com/Jno1995/Subdomain-display-with-different-resolutions)
> * [同一场景中显示不同分辨率子域2.0版](https://github.com/Jno1995/Subdomains-with-different-resolutions-in-the-same-scene)
> * [龙骨动画、spine动画相关测试例2.0版](https://github.com/Jno1995/dragonBone-spine_Dome)
> * [Cocos Creator 项目中使用shader](https://github.com/ShawnZhang2015/ShaderHelper)

---
#### *[1、微信小游戏子域使用艺术字字体报错，怎么解决啊](https://forum.cocos.com/t/topic/60785)*
>A:可以用艺术字，但是艺术字只能是白色的。

#### *[2、微信小游戏子域工程的res资源如何像主域工程一样远程下载](https://forum.cocos.com/t/res/63123)*
>A:开放数据域的 Image 只能使用本地或微信 CDN 的图片，不能使用开发者自己服务器上的图片。对于非本地或非微信 CDN 的图片，可以先从主域 wx.downloadFile() 下载图片文件，再通过 OpenDataContext.postMessage() 把文件路径传给开放数据域去使用。

#### *[3、creator 电脑双屏问题能不能修一下](https://forum.cocos.com/t/creator/66870)*
>A:删除项目中的local文件夹的layout.windows.json也可以解决问题。

#### *[4、rpk包构建失败！错误：Error: Command failed:rpk包构建失败！错误：Error: Command failed: quickgame.cmd pack'quickgame.cmd' ](https://forum.cocos.com/t/oppo-vivo-bug/68839/11?u=337031709)*
>A:<img src="/uploads/default/original/3X/e/2/e21988a783efcb022c604aea63fb52d892097854.png" width="634" height="123">
现这个报错可以将类似的quickgame-toolkit\lib\bin目录路径加入环境变量Path
 ;E:\quickgame-toolkit\lib\bin\
<img src="/uploads/default/original/3X/b/9/b9bcce9590409ec9360aaa7d9ce66e8c28fb0e91.png" width="622" height="51">
保存之后，需要等一小会才能看到quickgame-toolkit版本。这样就解决问题了。

#### *[5、oppo构建发布程序包报以下错误： Error:release 签名不存在! ](https://forum.cocos.com/t/oppo-vivo-bug/68839/11?u=337031709)*
>A: 签名的生成流参考：https://forum.cocos.com/t/oppo-vivo-bug/68839/23?u=337031709


#### *[6、v2.1.0 eulerAngles替换rotationY的用法 ](https://forum.cocos.com/t/v2-1-0/70818/6?u=337031709)*
>A:  eulerAngles 参数类型为 Vec3 ，node.eulerAngles = cc.v3(x, y, z);


#### *[7、2.0.5多子包出现，Already has sub package ](https://forum.cocos.com/t/2-0-5-already-has-sub-package/70750?u=337031709)*
>A: 微信允许配置多个子包 我修改了你的工程 这个工程展示了在微信小游戏上分包加载的基础用法. https://forum.cocos.com/t/2-0-5-already-has-sub-package/70750/5?u=337031709

#### *[8、Label 下一帧才刷新大小 怎么办 ](https://forum.cocos.com/t/label/65851?u=337031709)*
>A:这里由于 label 中_updateRenderData 处理开销过大，导致没办法设置 string 的时候去触发更新，size 只能在渲染的时候才可以获取到正确的 size。目前可以自行在设置 label 所有属性后在执行一次 label._updateRenderData(true); 就能带当帧获取大小。

#### *[9、2.0模拟器运行热更新范例 ](https://forum.cocos.com/t/cocos2-0-bug/68452/16?u=337031709)*
>A:  creator 2.0，第一次加载的资源是原生的，而不是更新后的资源，执行热更新流程后，才会把manifest的热更新目录加入到文件的search path，所以完成热更新并执行更新后的资源，你需要两个步骤，1. 执行热更新，2.不管热更新成功与否，执行 cc.game.restart(); 重新加载游戏，示例代码中的ALREADY_UP_TO_DATE中没有重启游戏，导致热更新完成后，再次打开不会切换到更新后的界面。第二个问题，不要使用官方demo下面的热更新资源，因为脚本的加密密匙匹配不上，自己根据教程，重新导出热更新资源。
附上热更新相关的两个文档。
https://docs.cocos.com/creator/manual/zh/advanced-topics/assets-manager.html16
https://docs.cocos.com/creator/manual/zh/advanced-topics/hot-update.html

#### *[10、新手求助：子域scrollview无法滚动 ](https://forum.cocos.com/t/scrollview/67114)*

>A:  https://forum.cocos.com/t/scrollview/67114/15?u=337031709

#### *[11、CocosCreator调试预览的时候，如何设置不显示引擎信息 ](https://forum.cocos.com/t/cocoscreator/70236/2?u=337031709)*
>A:  web预览的话点击预览窗口中的ShowFPS按钮<img src="/uploads/default/original/3X/d/a/da7ec61ea974928a665166f15677fdf8eee2ae6d.png" width="100" height="44">
或者使用cc.debug.setDisplayStats(false);
这样模拟器和web预览都不会出现FPS信息

#### *[12、编译后出现了预加载和播放声音的错误 ](https://forum.cocos.com/t/topic/70759?u=337031709)*
>A:  排查下是否构建模块异常或者项目异常，将相同功能的代码和资源转移到一个空项目下测试编译下是否会出现类似异常

#### *[13、vscode升级后creator添加编译任务后使用出错 ](https://forum.cocos.com/t/vscode/70253?u=337031709)*
> A:  这个编译任务因为vscode的升级编译任务系统引起的问题，
https://code.visualstudio.com/docs/editor/tasks#vscode3
目前的解决方案是先将原先的tasks.json文件编码修改为如下，同时按住ctrl + shift + b 运行任务，先解决问题。

```
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "compile",
            "command": "curl",
            "args": ["http://localhost:7456/update-db"],
            "type":"shell",
            "isBackground": true,
            "group": "build",
            "presentation": {
                // Reveal the output only if unrecognized errors occur.
                "reveal": "always"
            },
        }
    ]
}
```
#### *[14、场景突然打不开 ](https://forum.cocos.com/t/topic/70088/2?u=337031709)*
>A:
><img src="/uploads/default/original/3X/e/6/e6a5abf72e2827dd835f35246afa38231babe16c.png" width="347" height="382">
如果有保存或托管了场景文件，请对比下文件差异，这个问题应该是异常保存了场景文件导致的场景文件某个属性出现异常。
用vscode 等代码编辑器打开异常项目，查看下_id是否为null
#### *[15、DragonBones骨骼动画（texture）会有黑边 ](https://forum.cocos.com/t/dragonbones/70312?u=337031709)*
>A:  https://forum.cocos.com/t/dragonbones/70312/7?u=337031709
#### *[16、Cocos Creator 2.0.5 打包Windows出错 ](https://forum.cocos.com/t/cocos-creator-2-0-5-windows/69046?u=337031709)*
>A: 你使用哪个版本的vs编译的，用vs2017编译看看，一般都是vs的编译环境没完全安装好 出现的问题  !
<img src="/uploads/default/original/3X/0/b/0b80c3ac5a86c41e398ed4ee3517049f6ddb73ca.png" width="357" height="373">
<img src="/uploads/default/original/3X/6/2/62c0519bdff484b850421b6a6183401d234e8b9d.png" width="351" height="500">
#### *[17、修改引擎js源码怎么生效 ](https://forum.cocos.com/t/js/69546?u=337031709)*
>A:  [定制 JavaScript 引擎](https://docs.cocos.com/creator/manual/zh/advanced-topics/engine-customization.html#1-%E5%AE%9A%E5%88%B6-javascript-%E5%BC%95%E6%93%8E)
#### *[18、安装新版本后怎么安装低版本呢 ](https://forum.cocos.com/t/topic/70949?u=337031709)*
>A: 直接把CocosCreator.app 更改名字就可以了，比如CososCreator193.app 但注意中间不能有空格。这样就可以多版本并存了。
#### *[19、tileLayer.getTiledTileAt为何无法获得某一个矩阵坐标的tile。返回都是undefined。 ](https://forum.cocos.com/t/tilemap-tile/69123?u=337031709)*
>A: 目前tileMap 的getTiledTileAt会判断在指定序列上_tiledTiles中是否已有tiledtile，有就输出，没有的话依据是否创建新的tiledtile（forceCreate）参数，执行相关代码。
你的项目中本来就没创建过tiledtile，所以这个逻辑在你项目上表现是正常的。
你可以通过setTiledTileAt (x, y, tiledTile)先创建一个，或者参考getTiledTileAt中的逻辑创建新的tiledtile，那么之后你getTiledTileAt()穿false就有东西了。
#### *[20、项目无法打开，无法新建，ipc timeout,message: app:open-project, session:1@renderer:1012 ](https://forum.cocos.com/t/cocos-creator/67594?u=337031709)*
>A:
> * 重启编辑器。
#### *[21、如何从2.0.5降级到1.9.3 ](https://forum.cocos.com/t/2-0-5-1-9-3/69191?u=337031709)*
>A: 只能升，不能降。工具层面没办法做到同时导出旧版本兼容的格式。（请做好备份）
#### *[22、求官方手册离线版2.1.0 ](https://forum.cocos.com/t/2-1-0/70925?u=337031709)*
>A: https://github.com/cocos-creator/creator-docs
#### *[23、creator2.0.5安卓调试无法断点? ](https://forum.cocos.com/t/2-1-0/70925?u=337031709)*
>A:   https://forum.cocos.com/t/creator2-0-5/70105/10?u=337031709
#### *[24、jsb2.0自动绑定对NDK版本有要求吗？ ](https://forum.cocos.com/t/jsb2-0-ndk/70374)*
>A:   ndk 16，头文件路径是按那个来的
#### *[25、android 打包问题 ](https://forum.cocos.com/t/android/70304?u=337031709)*
>A:  项目设置里面模块设置的network要勾选 第一次打包建议全部勾选上 别去模块
常见的打包失败4种问题
1.路径过长
2.去掉了必要模块
3.sdk或ndk版本太老或者太新
4.环境变量问题
#### *[26、android 版本编译成功但运行失败 ](https://forum.cocos.com/t/android/68591?u=337031709)*
>A:   https://forum.cocos.com/t/android/68591/6?u=337031709
#### *[27、2.1.0的3d深度问题](https://forum.cocos.com/t/2-1-0/70925?u=337031709)*
>A: 目前仅对3d模型开启深度检测，可以在官方范例中的 mech-drone场景测试

#### *[28、萌新问一下 TiledLayer.removeTileAt 已经没有了吗？ 可以用什么代替呢？](https://forum.cocos.com/t/tiledlayer-removetileat/70434?u=337031709)*
>A:  https://forum.cocos.com/t/tiledlayer-removetileat/70434/4?u=337031709

#### *[29、TiledMap导出的文件在CocosCreator V2.05 无法加载](https://forum.cocos.com/t/tiledmap-cocoscreator-v2-05/71229?u=337031709)*
>A:  https://forum.cocos.com/t/tiledmap-cocoscreator-v2-05/71229/5?u=337031709

#### *[30、2.0.7 spine 原生平台动态换装失败](https://forum.cocos.com/t/2-0-7-spine/72104/7?u=337031709)*
>A: 之前是用到了getRuntimeData()获取原生的spine操作，更换成Skeleton API就可以了
this.spine.setAttachment(type+'-slot', ${type}-${levelIndex})

#### *[31、请问cocos creator 会释放prefab引用的图片吗？](https://forum.cocos.com/t/cocos-creator-prefab/70642?u=337031709)*
>A: https://forum.cocos.com/t/cocos-creator-prefab/70642/15?u=337031709

#### *[32、cocosCreator2.0.6发布qqPlay玩一玩平台运行报cc.sys.localStorage.getItem为空](https://forum.cocos.com/t/cocoscreator2-0-6-qqplay-cc-sys-localstorage-getitem/71275?u=337031709)*
>A: 这个可以在 qqplay 适配层中 qqplay/libs/engine/CCLocalStorage.js 中添加代码，或者等下个新版本
https://github.com/cocos-creator-packages/qqplay-adapter/pull/513

#### *[33、请问千万不要放resources 下面到底是有什么坏处,另外一个推荐的项目结构应该是怎么样的?](https://forum.cocos.com/t/resources/72167?u=337031709)*
>A: https://forum.cocos.com/t/resources/72167/3?u=337031709

#### *[34、插件代码无法保存预制，求正确姿势](https://forum.cocos.com/t/topic/71708?u=337031709)*
>A: 不是 asset 的 uuid
<img src="/uploads/default/original/3X/6/f/6ff169f07b00f1344b29a3ca200dff4c36797034.png" width="690" height="144">
完整代码在 https://docs.cocos.com/creator/manual/zh/getting-started/faq.html
#### *[35、creator videoPlayer上怎么叠加UI](https://forum.cocos.com/t/topic/71708?u=337031709)*
>A: UI 可以用 Creator 做，Video 在各个平台都要自己适配，放在引擎 GL View 的下层，引擎中需要开启：
cc.macro.ENABLE_TRANSPARENT_CANVAS = true;
然后设置
cc.Camera.main.backgroundColor = cc.color(0, 0, 0, 0);
如果有多个 Camera，每个都要设置
至于视频怎么适配和呈现，就要自己做了
#### *[36、发现个大问题，iPhone6-iOS12小游戏平台息屏再唤醒后卡死](https://forum.cocos.com/t/iphone6-ios12/66734?u=337031709)*
>A: 引擎源码中找到下面代码，并屏蔽掉，可以解决此崩溃，这个标志是微信小游戏提供的，只对微信小游戏问题生效。
//opts["preserveDrawingBuffer"] = true;
#### *[37、可以定义类似CC_DEV 这样的常量吗](https://forum.cocos.com/t/cc-dev/72554?u=337031709)*
>A: 自定义引擎完成后，打开 engine/gulp/util/utils.js 脚本，在最下面有一个 uglify 函数，可以根据需求自行修改其中的参数。例如，返回的对象里，有一个 global_defs 字典。修改其中的 key value 即可。
#### *[38、速度被限制](https://forum.cocos.com/t/topic/68621?u=337031709)*
>A: 因为box2d中限制了速度变化 可以在engine中的box2d.js下搜索
b2_maxTranslation的定义
手动修改它的值根据文档编译引擎
https://docs.cocos.com/creator/manual/zh/advanced-topics/engine-customization.html#12-%E5%AE%89%E8%A3%85%E7%BC%96%E8%AF%91%E4%BE%9D%E8%B5%9619
<img src="/uploads/default/original/3X/e/f/efcdeeb8ed37574f77ad809d9dd8972bf8bd011f.png" width="517" height="69">
#### *[39、网络图片加载失败怎么解决](https://forum.cocos.com/t/topic/72907?u=337031709)*
>A: 这是请求资源时出现跨域问题，说明目标资源的资源服务器并不允许跨域访问资源。
#### *[40、【creator求助】按钮的width设置为负数问题](https://forum.cocos.com/t/creator-width/72978?u=337031709)*
>A: 目前引擎上是不支持node.width为负数的。
会在编辑器和引擎上加些限制。

#### *[41、Animation有没有方法恢复到当前动画的初始状态](https://forum.cocos.com/t/animation/67351?u=337031709)*
>A: CCAnimation的使用中，用户可以指定动画名称和动画时间，然后传入play(name.time),这样可以让动画在指定时间播放。
如果只是想让动画跳到某一帧但是不想播放，可以这样使用。

```
        var state = this.anima.getAnimationState("test");
        var curves = state.curves;
        var info = state.getWrappedInfo(0.3);
        for (var i = 0, len = curves.length; i < len; i++) {
            var curve = curves[i];
            curve.sample(info.time, info.ratio, this);
        }
```
> 恢复播放就用上面的play方法。
恢复到初始状态的话你传入0.01差不多就够用了。
#### *[42、Switching among scenes with translation Animations](https://forum.cocos.com/t/switching-among-scenes-with-translation-animations/72911?u=337031709)*
>A: https://forum.cocos.com/t/switching-among-scenes-with-translation-animations/72911/6?u=337031709

#### *[43、creator2.0.2绘制子域排行榜黑屏](https://forum.cocos.com/t/creator2-0-2/67943?u=337031709)*
>A: https://forum.cocos.com/t/creator2-0-2/67943/14?u=337031709

#### *[44、Creator2.0.5 当字体文件过大，比如大于10M时，场景或Prefab会加载不出来](https://forum.cocos.com/t/creator2-0-2/67943?u=337031709)*
>A: 修改engine中的font-loader.js中的_timeout为一个较短的时间 例如 10000

#### *[45、AudioSource有没有结束后的回调](https://forum.cocos.com/t/audiosource/73476?u=337031709)*
>A: <img src="/uploads/default/original/3X/a/7/a7e78ec28f6e3c219a8a97eca2563afe81c1ecfb.png" width="389" height="324">
参考这样的方案，由于audio目前没有提供设置播放结束回调的接口，需要开发者手动添加。

#### *[46、this.dragonAtlasAsset.init is not a function](https://forum.cocos.com/t/this-dragonatlasasset-init-is-not-a-function/73417?u=337031709)*
>A: 你好，这个属于cc.loader.loadResDir 的异常，它的加载是异步加载无法保证所加载的item顺序。
切换使用loadRes可以解决问题。
<img src="/uploads/default/original/3X/7/d/7d67ade203d369d03c612ff41873357faec17414.png" width="677" height="395">

#### *[47、有什么办法可以立即删除component的？](https://forum.cocos.com/t/component/73371?u=337031709)*
>A: 可以使用这个api：
node.removeComponent()
更多请阅读：
https://docs.cocos.com/creator/api/zh/classes/Node.html#removecomponent

#### *[48、急~~~求助？？？js脚本中自定义组件数组的序列化](https://forum.cocos.com/t/js/74515?u=337031709)*
>A: 参考写法：
```
var ColorInfo = cc.Class({
    name:"test",
    properties: {

        nameColor: {
            default: "",
            type: cc.String,
        },
        fromValue: {
            default: 0,
            type: cc.Float,
        },
        toValue: {
            default: 0,
            type: cc.Float,
        },
        specialValue: {
            default: 0,
            type: cc.Float,
        },
        setColor: {
            default: cc.Color.WHITE,
            type: cc.Color,
        }
    },
    // update (dt) {},
});

cc.Class({
    extends: cc.Component,
    properties: {
        SetColorArray: {
            default: [],
            type: [ColorInfo],
        }
    }
});
```

#### *[49、loadResArray加载资源断网重连重新加载无法加载](https://forum.cocos.com/t/loadresarray/74430?u=337031709)*
>A: 断网重连，资源没有重新加载的问题是因为目前引擎的load自身并没有实现断网重连资源重载，开发者可以自行实现。

#### *50、TypeError: children[i]._onBatchCreated is not a function*
>A: 因为场景json文件中某个节点出现了_children里有了null导致打不开场景,删除null即可

#### *[51、Video play视频显示黑屏](https://forum.cocos.com/t/video-play/72991?u=337031709)*
>A: 这个问题属于Html只支持H.264编码格式的MP4。
参考文章：
https://blog.csdn.net/keji_123/article/details/77717849
方案：
使用格式工厂输出AVC(H264)编码格式的MP4视频。
<img src="/uploads/default/original/3X/f/e/fe9683d971d9fdaeb49c3c64d0e916e05d253953.png" width="584" height="95">

#### *[52、引擎升级后需要完全删除build目录然后重新构建吗？](https://forum.cocos.com/t/build/70019?u=337031709)*
>A: 原因是引擎两个版本ABI库里面的文件不同，升级过的项目如果出现编译失败的话，参考方案可以项目其它文件夹删除直到只保留assets和packages文件夹，然后重新构建编译。

#### *[53、内存释放问题，依旧是一个头疼问题](https://forum.cocos.com/t/topic/65743/56)*
>A: https://forum.cocos.com/t/topic/65743/54?u=337031709

#### *[54、creator调试断点还是不太精准](https://forum.cocos.com/t/creator/73177?u=337031709)*
>A: https://forum.cocos.com/t/creator/73177/4?u=337031709

#### *[55、求助，怎么加载手机中的图片？](https://forum.cocos.com/t/topic/73695?u=337031709)*
>A: cc.loader.load();可以加载设备内的资源，如下：
cc.loader.load("/dara/data/some/path/to/image.png", function (err, texture) {
});
官方文档也有写
https://docs.cocos.com/creator/manual/zh/scripting/load-assets.html

#### *[56、labelOutline组件可以实现描边 , 但是如何设置描边在X,Y轴上的偏移量呢](https://forum.cocos.com/t/topic/73511?u=337031709)*
https://github.com/cocos-creator/engine/blob/v2.0.8-release/cocos2d/core/renderer/utils/label/ttf.js#L262
>A: 这里的startPosition是描边的位置，可以通过控制这个值来让描边产生偏移。需要自己定制引擎。

#### *[57、在富文本内容中如果有 > 符号，>后面的文本内容总是会显示两次](https://forum.cocos.com/t/richtext/74149?u=337031709)*
>A: > 符号不在当前版本的HTMLTextParser解析范围内，可以在engine文件夹中修改htmlTextParser.js

#### *[58、 定制引擎报 JavaScript heap out of memory 内存不足解决方法](https://forum.cocos.com/t/javascript-heap-out-of-memory/74634/10?u=337031709)*
>A: 原因是：v8在编译的时候,对CPU和内存的需求比较大,当文件数量很多的时候,可能会出现内存不足的情况
目前有一个有效方案是最后build的时候这样输入：

```
gulp build --max-old-space-size=8192
```

>A: 后面这句代码可以修改v8引擎的内存上限，
类似的方案还有：
https://www.cnblogs.com/liugang-vip/p/6857595.html

#### *[59、  求助creator中 Simulator如何自定义机型 ](https://forum.cocos.com/t/creator-simulator/76207?u=337031709)*
>A: 在Cocos Creator设置界面可以设置自定义模拟器分辨率。
<img src="/uploads/default/original/3X/0/7/072e8b1a7b05f1df3520e0031523e319c2a1f040.png" width="534" height="500">

#### *[60、 2.1.1internal文件夹什么作用？  ](https://forum.cocos.com/t/ccc-2-1-1-internal/76886?u=337031709)*

>A: internal 存储的是引擎内置资源