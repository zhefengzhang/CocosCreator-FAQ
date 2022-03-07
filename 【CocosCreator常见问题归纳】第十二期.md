# 【CococsCreator 常见问题归纳】第十二期
本系列文档已经同步上传到 [github](https://github.com/Jno1995/CocosCreator-FAQ)

---
*常见问题*
<details>
 <summary>CocosCreator 3.x 截图之后隐藏图片再显示 图片会翻转</summary>
 > 要创建一个新的材质，使用 builtin-sprite 作为 effect，设置到 Sprite 组件的 CustomMaterial 槽位中，然后在材质中，勾选上 SAMPLE_FROM_RT。

 [查看原文](https://forum.cocos.org/t/topic/131612)
</details>

<details>
 <summary>mac 无法打开 Cocos dashBoard</summary>
 > 原因：App 已被修改，而且其代码与原始签名代码不匹配。App 已损坏，或者已被篡改。
 官方说明：https://support.apple.com/zh-cn/guide/mac-help/mh40619/11.0/mac/11.0

 解决方案：
 1、打开终端，执行：
 sudo xattr -rd com.apple.quarantine 应用路径
 2、输入密码并回车

 [查看原文](https://forum.cocos.org/t/topic/131599)
</details>

<details>
 <summary>3.4.1 win版本编辑器离线无法跳过登录</summary>
 > 你试下输错账号密码，点击登录，看跳过按钮会不会出来。

 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/b/b/bb00c8ae119a6d688aee12a7588201d36b2e44fd.png)

 [查看原文](https://forum.cocos.org/t/topic/131529)
</details>

<details>
 <summary>导入fbx 报错“具有多个材质层级”</summary>
 > 经测试，cocos支持单个物体多材质，但不能准确支持multi/SubObject类型的套嵌，针对单个物体多材质，在导出FBX需要保证材质的套嵌层仅为一层套嵌。以max为例：
 支持以下材质模式：

 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/c/f/cfe1f1bb35e1c52c34e0cff3b4f0a8f6750f3b97.png)

 不支持以下材质嵌套模式：
 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/5/a/5aac310a8cbd0a48e5b8d77650756b83ea325e32.png)

 关于附件的模型：[fire_car_issue.fbx.zip]模型是有在c4d中制作的，因此，只有c4d打开该fbx能准确读取所有信息，其它软件打开具有不同程度的材质丢失或者错误。
 通过在C4D修改场景层次结构，目前结论如下：C4D在同一层存在多个材质，多组UV的状态下，只能导出一层材质，C4D中有多种处理手段，本次处理方式如下，1. 在C4D的大纲视图中删除submesh自动生成的uv集，只保留一套uv， 重新导出fbx；2.在引擎导入fbx文件时，勾选Compatible with V1. , 可以正常导入到引擎中。
 修改后层次结构如下（修改内容：删除了层中的uv集，只保留一组uv）:

 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/c/7/c7f369bb1c13d0c880029a4ff6601281058e4ae6.png)
 修改前：
 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/b/2/b29f69202cd6b94317622580b38d1d94b3791e52.png)
 引擎导入时勾选Compatible with V1. ：
 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/1/f/1fd074c8d5a39089b07c42a7a21c0b3940f246bf.png)
 修改后导入结果：
 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/7/d/7d9dcbd64e4fac08d0eab9e87a9223889f41ea96.png)

 [查看原文](https://forum.cocos.org/t/topic/119749)
</details>

<details>
 <summary>Component 组件字段删减后 Prefab 载入出现问题</summary>
 >Q: Prefab上相关组件字段修改后，仍显示找不到旧字段名称，但是Prefab文件中未查找到对应变量名称，缓存也清理过，temp 和 library 目录清理均无效。
 
 [Scene] The fnt config is not exists!
 
 [Scene] Node “BattleField” has no path “SpriteNormalAbility”.
 
 [Scene] Cannot read property ‘kerningDict’ of null
 
 [Scene] Cannot read property ‘vb’ of null
 
 请问这大概是哪里的问题呢？

 A:第一个报错是 BMFont 配置丢失。第三第四个报错都是第一个引起的。
 第二个是因为字段被删掉后，动画找不到路径导致的。所以你可以检查一下动画文件。

 [查看原文](https://forum.cocos.org/t/topic/131566)
</details>

<details>
 <summary>请问3.4.1的前向渲染管线怎么开启 FXAA 抗锯齿？</summary>
 >目前前向管线无法开启 FXAA，我们正在开发非常自由的可定制渲染管线，之后才会提供通用的 AA 方案

 [查看原文](https://forum.cocos.org/t/topic/131600)
</details>

<details>
 <summary>error9100 texture size exceeds current device limits %d/%d</summary>
 >减小图片尺寸, 正常是推荐 2048*2048 以内。

 [查看原文](https://forum.cocos.org/t/topic/131453)
</details>

<details>
 <summary>为啥3.4.1不能读取二进制文件了</summary>
 >用 bufferasset 然后文件用.bin 文件就可以了

 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/f/f/ff707272958ba08eefc78139df31bd7eee86f0e2.png)

 [查看原文](https://forum.cocos.org/t/topic/131453)
</details>

<details>
 <summary>JSZIP 使用问题</summary>
 >npm i jszip-utils

 npm install --save jszip

 [test.zip](https://forum.cocos.org/uploads/short-url/g5JlW2Log9qKvPfBAYrewF5TTN8.zip)

 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/f/f/ff707272958ba08eefc78139df31bd7eee86f0e2.png)

 [查看原文](https://forum.cocos.org/t/topic/131457)
</details>

<details>
 <summary>base64 图片解析模糊</summary>
 >图片做下预乘处理，修改 sprite 的混合模式。

 ![image|641x500](https://forum.cocos.org/uploads/default/original/3X/5/2/528459e91a3925f95b0d55f608d75e047352ce30.png)

 https://docs.cocos.com/creator/2.4/manual/zh/getting-started/faq.html?q=

 [查看原文](https://forum.cocos.org/t/topic/131589/)
</details>

---
*论坛精华*

[3D 渲染技术分享：基于 PBR 的车漆 Shader](https://forum.cocos.org/t/topic/131573)

[Cocos Shader入门基础六：平面、双面材质与自定义裁剪面 来自虚空的龙](https://forum.cocos.org/t/topic/131572)

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