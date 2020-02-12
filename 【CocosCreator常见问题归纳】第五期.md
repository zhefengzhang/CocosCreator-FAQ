# 【CococsCreator 常见问题归纳】第五期

往期记录：

[【CocosCreator 常见问题归纳】第一期](https://forum.cocos.com/t/cocoscreator/74555)

[【CocosCreator 常见问题归纳】第二期](https://forum.cocos.com/t/cocoscreator/77714)

[【CocosCreator 常见问题归纳】第三期](https://forum.cocos.com/t/cocos-creator/80350)

[【CocosCreator 常见问题归纳】第四期](https://forum.cocos.com/t/cocos-creator/81800)

---

部分PR周知：

[1、(2.1.2) labeloutline 的一个 bug](https://forum.cocos.com/t/2-1-2-labeloutline-bug/79357)

> PR: https://github.com/cocos-creator/engine/pull/5145

[2、(2.1.2 p1) RichText 限制宽度自动换行后 color 标签前的空格消失](https://forum.cocos.com/t/2-1-2-p1-bug-richtext-color/81718)

> PR: https://github.com/cocos-creator/engine/pull/5116

[3、(2.1.2) 资源释放，错误释放材质依赖问题](https://forum.cocos.com/t/ccc2-1-2/80789)

> PR: https://github.com/cocos-creator/engine/pull/4915

[4、(2.2.0) mask 组件 IOS 平台真机失效](https://forum.cocos.com/t/v-2-2-0-bug-mask-ios/84886)

> PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/1899

[5、 (2.2.0) 2.1.3 升级 2.2 渲染报错(原因已找到 bug，请引擎组认领) ](https://forum.cocos.com/t/2-1-3-2-2-bug/84751)

> PR: https://github.com/cocos-creator/engine/pull/5541

[6、(2.0.8) Cocos Creator Editbox 在 ios 13上卡死](https://forum.cocos.com/t/cocoscreator-editbox-ios13-95/84826)

> A: https://github.com/cocos-creator/engine/pull/4578

---

常见问题：

[1、为什么位图字体合并渲染](https://forum.cocos.com/t/60-rmb-2-1-2/82293)

> A:**1.示例的批次为3是正常的**
>
> 这里的三次绘制分别是：**1.**头像底框 **2.**BMFont文本 **3.**Profile信息。因为文本绘制的时候BlendFunc是用的SRC_ALPHA, 头像框用的是ONE，两次绘制的Blend State不一致。如果想要合批，你需要修改一下文本使用的材质里effect记录的BlendFunc为ONE，或者修改图片的Blend为SRC_ALPHA。文本的BlendFunc修改代码参考如下：
>
> ```
>     let material = this.label.sharedMaterials[0]
>     let passes = material._effect.getDefaultTechnique().passes;
>     for (let j = 0; j < passes.length; j++) {
>         let pass = passes[j];
>         pass.setBlend(
>             true,
>             cc.gfx.BLEND_FUNC_ADD,
>             cc.gfx.BLEND_ONE, cc.gfx.BLEND_ONE_MINUS_SRC_ALPHA,
>             cc.gfx.BLEND_FUNC_ADD,
>             cc.gfx.BLEND_ONE, cc.gfx.BLEND_ONE_MINUS_SRC_ALPHA
>         );
>     }
> 
>     material.setDirty(true);
> ```
>
> **2. 动态合图的说明**
>
> 这里你的图集尺寸是1921*1734，BMFont尺寸是258*464，如果不使用AutoAtlas合图，引擎的动态图集尺寸最大是2048*2048，可合并的碎图限制的最大尺寸是512。并且需要保证图片的预乘，Wrap, Filter等信息与动态图集一致才能够动态合批。
>
> **3. 引擎层面的修改**
>
> 目前引擎层面的BMFont在满足动态合图需求时没有再次进行动态合图，比如你示例中，如果不使用AutoAtlas, 文本节点“1234”，后面再添加一个使用BITMAP模式的系统文本节点，drawcall还会是4，这种情况引擎层面做了修改，可以参考：
>
> https://github.com/cocos-creator/engine/pull/5196
>
>  修改之后，BMFont可以跟使用BITMAP模式的系统文本及其他满足需求的碎图进行动态合图。（注意：示例中的BMFont图片需要取消预乘选项的勾选，保证Texture的参数一致） 
>
>  ![img](https://forum.cocos.com/uploads/default/original/3X/b/a/ba841f00df7c1fd4f224a45109b3e3cd35da02c9.png) 

[2、微信小游戏工具cpu100%](https://forum.cocos.com/t/v2-1-2-cpu100/82510) 

> A: 通用设置里，勾选 使用GPU加速模式

[3、 cocos creator2.0.9对接广告有重大问题](https://forum.cocos.com/t/cocos-creator2-0-9/78311)

> A:  屏蔽掉 android:taskAffinity 能缓解问题。 
>
>  在引擎提交历史中，加入 `android:taskAffinity` 是为了解决 activity 跳转引起的崩溃问题： [https://github.com/cocos-creator/cocos2d-x-lite/issues/142912](https://github.com/cocos-creator/cocos2d-x-lite/issues/1429) 。所以此问题暂时没法从根本上解决。 

[4、 微信小游戏子域能否执行cc.moveTo等引擎的动作？ ](https://forum.cocos.com/t/cc-moveto/82777)

> A：  可以，也支持动画系统。 

[5、Error: ENOENT: no such file or directory 错误！升级到2.0.10报错](https://forum.cocos.com/t/error-enoent-no-such-file-or-directory-2-0-10/82154)

> A: 报错查找方式
>
> 这里报的是资源json引用失败。首先找到该json对应是哪个资源。资源打包后会生成uuid-to-mtime.json，它记录着资源对应的json。之后就是根据报错描述的异常json已经它对应的异常资源。
>
>  ![img](https://forum.cocos.com/uploads/default/original/3X/4/c/4cf6cb2fdc462848d4c05dc6c6e5da0abefe71ad.png) 
>
> error：10e289e6-5301-466e-a427-d299b70ec129.json  对应的资源是78.json
>
>  ![img](https://forum.cocos.com/uploads/default/original/3X/9/7/979fbee54e9b78a9401b51a606af4e14c7a8ebb4.png) 
>
>  ![img](https://forum.cocos.com/uploads/default/original/3X/d/f/df5eba0ebf8f5c8180d1919131554c1d1f76c18a.png) 
>
> 该json多了一个不符合规则的字符a。
>
> error：4aeabca6-bb7c-4833-92cf-880efdbb0a23.json 对应GameView.prefab
>
>  ![img](https://forum.cocos.com/uploads/default/original/3X/a/d/ad9e46c4c1380173c41d9e174076e74ef1db6e92.png) 
>
>  ![img](https://forum.cocos.com/uploads/default/original/3X/c/7/c7d3a6ec25f24a294a72b63857c06d1fd26e9b17.png) 
>
> 资源有大量冲突未解决，所以导致问题。

[6、2.1.2 打开项目一直停在“正在导入资源，请稍候](https://forum.cocos.com/t/2-1-2/80931)

> A: 把VC运行库升级到最新版就可以了，我升级到2017版就可以了。
> 附上一个下载地址：
> 这个是64位的
> [https://go.microsoft.com/fwlink/?LinkId=746572102](https://go.microsoft.com/fwlink/?LinkId=746572)

[7、2.2.0 命令行发布微信小游戏](https://forum.cocos.com/t/2-2-0/84947)

> A:  我们之前的文档有误，目前命令行不支持设置 REMOTE_SERVER_ROOT，默认用的编辑器构建的配置
> 我们已经在最新分支的文档里去除了这个 option。 临时的办法，可以试下执行命令之前。修改 项目目录下 setting/builder.json 下的配置。
>
>  ![img](https://forum.cocos.com/uploads/default/original/3X/9/a/9a0738a4621207f423c26d927a329c42843a49b3.png) 

[8、RenderTexture 渲染场景带透明度物体到图片上明显变淡了](https://forum.cocos.com/t/rendertexture/84588)

> A:  这是正常的，render texture 本身如果要用到透明度的话，需要使用预乘（把 render texture 本身设置为预乘模式进行渲染） 

 [9、2.1.3版本如何更新最新的spine运行库](https://forum.cocos.com/t/2-1-3-spine/84612)

> A: 原生的话 替换cpp，若有新加的文件，添加至xcode工程 或 win32工程 或 cocos/editor-support/Android.mk文件,
> 下面的2.2.0版本升级spine到3.8的PR，你可以参考一下：
> https://github.com/cocos-creator/engine/pull/5550
> https://github.com/cocos-creator-packages/jsb-adapter/pull/185
> https://github.com/cocos-creator/cocos2d-x-lite/pull/1885

