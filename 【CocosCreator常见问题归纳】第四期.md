
往期记录：

[【CocosCreator 常见问题归纳】第一期](https://forum.cocos.com/t/cocoscreator/74555)
[【CocosCreator 常见问题归纳】第二期](https://forum.cocos.com/t/cocoscreator/77714)
[【CocosCreator 常见问题归纳】第三期](https://forum.cocos.com/t/cocos-creator/80350)

---

[部分PR周知：](https://github.com/cocos-creator/engine/pulls)

[1、2.0.10 微信小游戏在 IOS 设备上 audio 组件有 bug ](https://forum.cocos.com/t/2-0-10-ios-audio-bug/80774)

> PR: https://github.com/cocos-creator-packages/weapp-adapter/pull/102

[2、Cocos Creator 2.1.2 UC 浏览器电脑版上无法正常运行 ](https://forum.cocos.com/t/cocos-creator-2-1-2-uc-bug/81168)

> PR: https://github.com/cocos-creator/engine/pull/5048

[3、Windows 平台，label 问题太严重了，内存不释放 ](https://forum.cocos.com/t/windows-label/81195)

> PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/1783%EF%BC%8C

[4、打包成 vivo 小游戏后 cc.audioEngine.AudioState 属性丢失 ](https://forum.cocos.com/t/vivo-cc-audioengine-audiostate/81379)

> A：替换下 builtin\vivo-runtime\res\jsb-adapter\engine\jsb-audio.js 文件[jsb-audio.zip](https://forum.cocos.com/uploads/default/original/3X/5/c/5c6efda07b20af49c2fd51eeb58e78dac9dfa933.zip)

[5、EditBox 的string 属性赋值为数值型数据后出现异常 ](https://forum.cocos.com/t/editbox-bug/81203)

> PR: https://github.com/cocos-creator/engine/pull/5088/commits/4c7670faf249c380dff8a17a8d6b46107907841e

[6、label 的 string 为 null 或 undefined 时报错 ](https://forum.cocos.com/t/creator-2-0-10-label/78900/6?u=337031709)

> PR: https://github.com/cocos-creator/engine/pull/4644

---

常见问题：

[1、2.0 版本 scrollView 事件类型求助 ](https://forum.cocos.com/t/2-0-scrollview/80384)

> A: 由于2.0对事件系统进行了修改，事件系统现在只会对于用户输入的touch、mouse等事件抛出event对象。
> scrollView节点监听的scrollview滚动事件则会抛出事件target，
> 所以在新版本你的方式需要做一下改变。
> https://docs.cocos.com/creator/manual/zh/release-notes/upgrade-guide-v2.0.html#34-%E4%BA%8B%E4%BB%B6%E7%B3%BB%E7%BB%9F%E5%8D%87%E7%BA%A7
> 这个文档解释了，为什么会这样。

[2、2.1.1 3d 模式的一个严重 bug](https://forum.cocos.com/t/2-1-1-3d-bug/80393)

> Q: 当多个平面（包括精灵转3d，plane，还有box的z轴scale0.1）叠在一起而y旋转角度不同时，
> 平面间的绘图顺序会出现问题，类似于ps的图层一样，最后放置的物体会显示在最前，
> 无视空间前后关系
> ![Image Text](https://forum.cocos.org/uploads/default/original/3X/7/e/7ebf91f15bd63f8b1f67fdacbcf8731eece9b59a.png)
> ![Image Text](https://forum.cocos.org/uploads/default/original/3X/9/f/9f72ec11ea284e48d6b1d018c36a8b9237f35117.png)
> 
> A: 你的 tree 用的是 sprite + 2d 的材质，没有打开深度测试，改为 plane + unlit 材质 并且 打开 alpha test 试下

[3、Cocos 2.0.7 版本 开启的时候报错](https://forum.cocos.com/t/cocos-2-0-7/80410)

> A: 电脑有没有其它creator？
> 试着把电脑上所有的creator卸载，再装你需要的版本

[4、 editor 输入框无法限制输入 E 或 e 字符](https://forum.cocos.com/t/editor/80550)

> A: 原因是e在数学中同样是具有数值的，所以判断他为number没有问题。
> 所以这不是引擎的问题。
> 这应该是Html5开发过程中都会遇到的问题。
> 在Html5中，我们可以修改input标签为如下
```
<input type="text" name="" oninput="this.value=this.value.replace(/[^0-9.]+/,'');" />
```
> Cocos Creator 中我们需要自己修改引擎代码。
> 找到WebEditBoxImpl.js  如下图所示位置，加入红框代码。
> 之后编译引擎即可。
![Image Text](https://forum.cocos.org/uploads/default/original/3X/0/9/099ce4c74e11fac4a46ac1447fc4097e1dfaab56.png)

[5、插件怎么监听键盘事件？](https://forum.cocos.com/t/topic/80582)

> A: 可以参考electron相关文档
https://github.com/amhoho/electron-cn-docs/blob/master/tutorial/keyboard-shortcuts.md#browserwindow%E4%B8%AD%E7%9A%84%E5%BF%AB%E6%8D%B7%E9%94%AE

[6、IOS上依然无法正确显示TTF字体](https://forum.cocos.com/t/creator-2-1-0-ios-fontcreator-ttf/73236/6?u=337031709)

> Q: TTF字体：https://forum.cocos.com/uploads/default/original/3X/7/f/7fea8265c9d36849d0d1e99b0f0d085521a63026.zip
> A：ArialRoundedMTBold这个字体本身就是系统字体，直接使用就行。
> 系统字体本身就已经注册过，如果使用ttf的话，注册字体的时候就会不成功，这样就直接走失败的回调，会使用默认字体替代。
> 解决方案：
> 修改Label组件为如下所示
![Image Text](https://forum.cocos.org/uploads/default/original/3X/3/1/31ae52c13e82a6b6705b5afe80009ce6ae04bd71.png)

[7、使用Scheduler定时器报错](https://forum.cocos.com/t/cc-scheduler-illegal-target-which-doesnt-have-uuid-or-instanceid/81689)

> Q: error：cc.Scheduler: Illegal target which doesn’t have uuid or instanceId
![Image Text](https://forum.cocos.org/uploads/default/original/3X/9/c/9c822c5010d0ff2484db4906a1da98ac79d3cbe0.png)

> A: 方案：
> cc.director.getScheduler().enableForTarget(this);
> cc.director.getScheduler().schedule(this.heartBeat,this,1,false);
> 参考：在对象没有 instanceId 的情况下, 使用这个enableForTarget来保证给对象提供一个唯一的instanceId。
> 这个可以参考API文档：
> https://docs.cocos.com/creator/api/zh/classes/Scheduler.html#enablefortarget
> 或者查阅引擎源码
> ![Image Text](https://forum.cocos.org/uploads/default/original/3X/6/7/6717975308a03cda59c322df8cc23f81da67445b.png)
