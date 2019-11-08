# 【CococsCreator 常见问题归纳】第六期

往期记录：

[【CocosCreator 常见问题归纳】第一期](https://forum.cocos.com/t/cocoscreator/74555)

[【CocosCreator 常见问题归纳】第二期](https://forum.cocos.com/t/cocoscreator/77714)

[【CocosCreator 常见问题归纳】第三期](https://forum.cocos.com/t/cocos-creator/80350)

[【CocosCreator 常见问题归纳】第四期](https://forum.cocos.com/t/cocos-creator/81800)

[【CocosCreator 常见问题归纳】第五期]( https://forum.cocos.org/t/cococscreator/85032 )

---

部分PR周知：

[1、(2.2.0) Mask涂抹功能，涂抹过程中会自动还原？](https://forum.cocos.org/t/v2-20-mask/85523)

>  会在2.2.1版本更新，有需要可以直接替换安装包内Resources目录下builtin里面对应jsb-adapter的文件重新启动编辑器即可。 
>
> PR: https://github.com/cocos-creator-packages/jsb-adapter/pull/200

[2、(2.2.0) mac platform 被检测为 iOS platform](https://forum.cocos.org/t/cocos-creator-v2-2-1/85555/127?u=337031709)

> PR:  https://github.com/cocos-creator/engine/pull/5687 

3、(new) VideoPlayer 在 show all 布局下竖屏下显示有问题

> PR:  https://github.com/cocos-creator/engine/pull/5680 

[4、(2.2.0) CCSprite 组件 type 选择 filled，filledType 选择 radial，修改 filled range 值时表现异常]( https://forum.cocos.org/t/2-2-progressbar-bug/84885 )

> PR:  https://github.com/cocos-creator/engine/pull/5609 

[5、 (2.1.1) ScrollView 惯性回弹可能出现不计算滚动卡住的BUG)](https://forum.cocos.com/t/pageview-demo-bug/79414/6)

> PR:  https://github.com/cocos-creator/engine/pull/5641

6、(new)  修复更新ios13.1.1+版本后iPad设备的UA信息的识别

> PR:  https://github.com/cocos-creator/engine/pull/5542 

7、(new) 优化粒子组件在游戏加载之后的瞬间出现表现异常

> PR:  https://github.com/cocos-creator/engine/pull/5625/commits/cdcf0de475c8b4aa61ff7b7932900f743af303e9 
>
>  https://github.com/cocos-creator/cocos2d-x-lite/pull/1915 

8、[(2.2.0) 2.0.10 升级2.2.0 延迟加载会报错]( https://forum.cocos.org/t/2-0-10-2-2-0/85416 )

> PR: https://github.com/cocos-creator/engine/pull/5612

9、[(2.2.0) Label的cache mode选char Vertical Align属性失效](https://forum.cocos.org/t/2-2-0-label-cache-mode-char-vertical-align/85052)

> PR:  https://github.com/cocos-creator/engine/pull/5614

10、(new)  修复粒子系统勾选 autoRemoveOnFinish 后，没有勾选 playOnLoad 时的展示错误问题 

> PR:  https://github.com/cocos-creator/engine/pull/5618

11、(2.2.0)  修复节点 skew 无效的问题 

> PR:   https://github.com/cocos-creator/engine/pull/5629 

12、[(2.2.0) once事件回调中off该事件，报错](https://forum.cocos.org/t/bug-2-2-0-once-off/85030)

> PR:  https://github.com/cocos-creator/engine/pull/5626 

[13、(2.2.0) 移动平台上粒子会忽隐忽现](https://forum.cocos.org/t/topic/84899)

> PR: https://github.com/cocos-creator/cocos2d-x-lite/pull/1910

---

常见问题：

[1、EditBox的输入框国际化有问题](https://forum.cocos.org/t/editbox/85703)

> A:  ![img](https://forum.cocos.org/uploads/default/original/3X/c/8/c8d551ccd630f00708299722b9e0c405b3a1f96f.png)  
>

2、自动图集配置打包出来的贴图纹理无法进行动态合并图集

> A: 勾选自动图集面板中的 packable 选项之后重新打包即可。
>
>  ![img](https://forum.cocos.org/uploads/default/original/3X/a/3/a38dca2c55c659db126658ea621a5c3c6d24f61d.png) 

[3、Label使用系统字体在iPhone上显示得特别小的BUG](https://forum.cocos.org/t/label-iphone-bug/85418)

> A:  label 的属性检查器设置修改为如下：
>
> ![img](https://forum.cocos.org/uploads/default/original/3X/9/a/9a4c6d55d4e28f0b53dd133176fbc4a1056e38e5.png) 
>
>  ios 平台没有那个系统字体。反而在 android 平台那样使用正常。存在平台差异。 

[4、creator v2.2.0 打包 Target Api Level 列表不全](https://forum.cocos.org/t/creator-v2-2-0-target-api-level/85082)

> A：  2.2.0目前不支持23之前的 api level 了，可以在 android studio 中手动修改配置
>
>  ![img](https://forum.cocos.org/uploads/default/original/3X/9/c/9c352ddfb1fa93f2bc28f406661d7606ff410e40.png) 
>
> ![img](https://forum.cocos.org/uploads/default/original/3X/1/a/1aa80182534227c2046eb039bd3a20bd601c8bab.png) 

5、使用 javascript-obfuscator 混淆 project.js 导致项目运行报错。

> Q: 使用引擎是Creator2.1.2版本，因项目需求，我们需要做代码混淆，先尝试在构建完成后，用第三方的javascript-obfuscator直接混淆构建后生成的project.js，发现跑不起来，请问下，js混淆应该在构建哪个阶段做比较好？
>
> 想尝试插入在Uglify合并js之前做，不知在Creator哪里能修改这个构建过程？
>
> A:  你好，我刚刚在本地测试了一下 javascript-obfuscator 混淆 project.js，并没有出现报错。
>
> 混淆的阶段一般都是放在项目构建结束后，其它阶段不合适。构建流程现在不支持定制，只支持通过创建构建模板在构建节点生成指定的文件。
>
> 建议排查一下报错，或者拿 helloworld 项目测试一下。
>
> 可以试试其它混淆工具是否可以正常使用。

6、CocosCreator 目前最新版本是否适配 QQ小游戏 平台？

> A: 目前 CocosCretor 最新版本并没有对 QQ小游戏 平台进行适配。

7、 cocos creator2.1.3 发布vivo快应用报错 提示npm下载失败，挂了vpn和关了vpn都不行 

> A: 你好，命令行输入 npm config get registry ，输出 npm 源地址是否为 https://registry.npmjs.org/，如果不是，输入 npm config set registry https://registry.npmjs.org/ 重新设置。
>
> 输入 mg -v 输出 vivo-minigame/cli 的版本看看，判断 vivo-minigame/cli 是否安装完成。如果没有安装应该是 node 版本低于 8.9.0 版本导致的，升级 nodejs 版本再重新安装即可。
>
> 如果不是node版本过低导致的问题，建议依然重新下载 nodejs 安装一次，http://nodejs.cn/download/，然后再打包。