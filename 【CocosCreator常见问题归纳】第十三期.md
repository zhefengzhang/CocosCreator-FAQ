# 【CococsCreator 常见问题归纳】第十三期
本系列文档已经同步上传到 [github](https://github.com/Jno1995/CocosCreator-FAQ)

---
*常见问题*
<details>
 <summary>3.4.1 BUG 拖尾组件和Button</summary>
 解决方案：<br>
 1. button 问题可参考 pr: https://github.com/cocos-creator/engine/pull/10084 <br>
 2. 拖尾报错（this._assembler.updateColor is not a function）：https://github.com/cocos-creator/engine/pull/10055 <br>
 ps：3.4.2 已修复。<br>
 [查看原文](https://forum.cocos.org/t/topic/131882)
</details>

<details>
 <summary>场景自动释放无效问题</summary>
 > 原因：  

 释放有延时性，延迟打印信息可看到有正常释放。

 [查看原文](https://forum.cocos.org/t/topic/131764)
</details>

<details>
 <summary>3.4.1 Android跳转相册、相机后回来黑屏</summary>
 解决方案：<br>
 合并修复 pr: https://github.com/cocos-creator/engine-native/pull/4268

 [查看原文](https://forum.cocos.org/t/topic/131577)
</details>

<details>
 <summary>构建iOS报错</summary>
 报错：<br>
 run cmake with -S /Users/Cocos Creater/MyProject/native/engine/ios -GXcode -B/Users/Cocos Creater/MyProject/build/ios/proj -DCMAKE_SYSTEM_NAME=iOS -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang -DRES_DIR="/Users/Cocos Creater/LShapes/build/iOS"
 error: [cmake-err] CMake Error: The source directory “/Creater/MyProject/build/ios/proj” does not exist.<br><br>
 解决方案：<br>
 将路径中的空格去掉(Cocos Creater -> CocosCreater)

 [查看原文](https://forum.cocos.org/t/topic/131880)
</details>

<details>
 <summary>mask组件失效</summary>
 问题：node节点上添加了mask组件后，然后动态添加sp.Skeleton组件，播放spine动画时mask组件就失效了<br><br>

 解决方案：<br>
 3.4.2 已修复。

 [查看原文](https://forum.cocos.org/t/topic/130994)
</details>

<details>
 <summary>cocos卸载后下载编辑器就出现权限问题</summary>
 解决方案：
 使用管理员权限打开 dashboard。

 [查看原文](https://forum.cocos.org/t/topic/131951)
</details>

<details>
 <summary>3.4.1 ParticleSysteam2D粒子闪烁问题</summary>
 解决方案：<br>
 3.4.2 已修复。<br>修复 pr: https://github.com/cocos-creator/engine/pull/10038

 [查看原文](https://forum.cocos.org/t/topic/132014)
</details>
---
*论坛精华*

### [3D渲染技术分享：用实时反射Shader增强画面颜值](https://forum.cocos.org/t/topic/132051)

### [graphics2D3D带纹理绘制的引擎魔改思路详解](https://forum.cocos.org/t/topic/131608)

### [动态导航线分享（开箱即用）](https://forum.cocos.org/t/topic/132097)

### [【原生功能接入】扫描二维码功能](https://forum.cocos.org/t/topic/131485)

### [vscode 中使用 eslint 检测、自动格式化 TS 代码](https://forum.cocos.org/t/topic/131873)

### [3.x websocket 安卓占用2倍cpu，高耗电解决方案](https://forum.cocos.org/t/topic/132026)

### [CocosCreator3.X构建iOS工程重置的临时方案](https://forum.cocos.org/t/topic/132107)
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