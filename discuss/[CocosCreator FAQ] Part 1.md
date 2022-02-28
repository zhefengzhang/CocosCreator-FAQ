### This post will be updated consistently, no surprises if the frequency once a week. I hope it can help you to learn and develop.
	This post is intended to continue to shine as a platform for "problems and problem solving". This includes making people like it.
	If you need help, you can find some references through the forum search. If not, please make a new post.
	If the situation is urgent @us. (@slackmoehrle, @linrm, @Koei, @muxiandong, @huanxinyin)
	If there are some programs that we haven't put together yet, please leave a comment at the bottom of the post.
---

This series of documents has been synchronized and uploaded to [github.](https://github.com/zhefengzhang/CocosCreator-FAQ/tree/master/discuss)

---
[CocosCreator Document](https://docs.cocos.com/creator/manual/en/)

[CocosCreatorAPI](https://docs.cocos.com/creator/api/en/#/)

[CocosCreator Release](https://www.cocos.com/creator)

[CocosCreator Downloader](https://www.cocos.com/download)

[CocosCreator Engine](https://github.com/cocos-creator/engine)

[CocosCreator Engine Native](https://github.com/cocos-creator/engine-native)

[Third-party tools and resources](https://docs.cocos.com/creator/manual/en/getting-started/support.html)

[Feedback to the development team](https://github.com/cocos-creator/engine/issues)

#### **CocosCreator component-based development and editor extensions**
> * [Property Attributes](https://docs.cocos.com/creator/manual/en/scripting/reference/attributes.html)
> * [Scripting](https://docs.cocos.com/creator/manual/en/scripting/)
> * [Decorator](https://docs.cocos.com/creator/manual/en/scripting/decorator.html)
> * [Contributions](https://docs.cocos.com/creator/manual/zh/editor/extension/contributions.html)
> * [Message system](https://docs.cocos.com/creator/manual/en/editor/extension/messages.html)
#### **Demo for design reference**
> * [Demonstrations and project examples](https://docs.cocos.com/creator/manual/en/getting-started/support.html#demo-and-example-projects)
> * [Example Collection](https://github.com/cocos-creator/example-3d)
> * [WeChat mini-game open data domain example](https://github.com/cocos-creator/OpenDataContext_TestCase)
> * [Physical System Examples](https://github.com/cocos-creator/physics-samples)
> * [Game feature development solutions](https://github.com/cocos-creator/CococsCreator-public-technology-solutions/tree/3.4.0-release/demo)
> * [Rendering effect development solution](https://github.com/cocos-creator/CococsCreator-public-technology-solutions/tree/3.4.0-release/shader)

---

*FAQ*

<details>
 <summary>How to use howler？</summary>
 > You need to import howler like this:

 [55555_demo.zip](https://discuss.cocos2d-x.org/uploads/short-url/5wNjrk3yM9ZlGI2xn0eia9jxdRE.zip)
 
 ![image|641x500](https://discuss.cocos2d-x.org/uploads/default/optimized/3X/c/c/ccad05caa0760658ef3849bc9c27e3e820db31da_2_1282x1000.png)

 [View original article](https://discuss.cocos2d-x.org/t/cant-get-node-js-package-working-with-cocos-creator/55555)
</details>

<details>
 <summary>How to use @rlx/feim？</summary>
 > You can use rlxfeim like this:
 
 [55555_demo2.zip](https://discuss.cocos2d-x.org/uploads/short-url/cHRGLqEZTCfNG4VLOdHvHgrou8y.zip)
 
 ![image|641x500](https://discuss.cocos2d-x.org/uploads/default/optimized/3X/e/b/eb1856655c1e5b49164fb70f0d2ae252655cfb74_2_1380x484.png)

 [View original article](https://discuss.cocos2d-x.org/t/cant-get-node-js-package-working-with-cocos-creator/55555/7)
</details>

<details>
 <summary>How to use Colyseus Schema？</summary>
 > you can use Schema like this:
 
 ![image|641x500](https://discuss.cocos2d-x.org/uploads/default/optimized/3X/8/1/81a8b1b875e46368e50337a7cdc34143ffae0061_2_1324x1000.png)
 
 in this way,you need to add “allowSyntheticDefaultImports”: true to tsconfig.json.
 
 ![image|641x500](https://discuss.cocos2d-x.org/uploads/default/original/3X/c/a/ca999a86f9bf96ede865a0f07472f41addcc2fda.png)

 [View original article](https://discuss.cocos2d-x.org/t/colyseus-schema-in-cocos/55351)
</details>

<details>
 <summary>How to use inversifyjs？</summary>
 > Sorry, we don’t support inversify because we don’t support emitDecoratorMetadata.

 [View original article](https://discuss.cocos2d-x.org/t/need-help-on-using-inversifyjs-constructor-injection-syntaxerror/55391)
</details>

<details>
 <summary>Need help with creating an animation clip in script</summary>
 > If you want to create a clip with 2 frames of the property x you need to customize engine. Here is my customize code :

 ![image|641x500](https://discuss.cocos2d-x.org/uploads/default/original/3X/3/b/3b1688c9c6b556a915e7f2fa7fbda8462a26b1b9.png)
 and use code:

 ![image|641x500](https://discuss.cocos2d-x.org/uploads/default/original/3X/5/f/5f6c117c56b2768bc2b2c655e7eadf114768f482.png)

 [View original article](https://discuss.cocos2d-x.org/t/need-help-with-creating-an-animation-clip-in-script/55601/)
</details>

<details>
 <summary>Error when custom template build in cocos creator v2.4.6</summary>
 > The build-templates folder will copy all index.html to build, you can custom build folder for fb-instant-games in engine build-templates :

 ![image|641x500](https://discuss.cocos2d-x.org/uploads/default/original/3X/d/7/d7c596c3175a97f76c1f03e5f00b685e93ddd126.png)
 
 [View original article](https://discuss.cocos2d-x.org/t/error-when-custom-template-build-in-cocos-creator-v2-4-6/55620/)
</details>

<details>
 <summary>Should I use any cache mode for Label if I use BITMAP font file?</summary>
 > If you use BMFont , you should select none.BMFont does not require this optimization.

 [View original article](https://discuss.cocos2d-x.org/t/should-i-use-any-cache-mode-for-label-if-i-use-bitmap-font-file/55315)
</details>

<details>
 <summary>Render the camera immediately</summary>
 > You can refer to :https://github.com/cocos-creator/CococsCreator-public-technology-solutions/blob/3.4.0-release/demo/Creator3.4.0_PartialScreenshot/assets/script/Screenshot2D.ts

 ![image|641x500](https://discuss.cocos2d-x.org/uploads/default/original/3X/2/7/2747f2f9d87f2c81f0b208663496d9bf4a5352d7.png)

 [View original article](https://discuss.cocos2d-x.org/t/render-the-camera-immediately/55322)
</details>

<details>
 <summary>Hello world project CC 3.4, Native build (Mac OS) - Failed</summary>
 > It may cause by XCode 11.3, you need to update XCode to at least 11.5.

 ![image|641x500](https://discuss.cocos2d-x.org/uploads/default/original/3X/b/f/bfd95e87f8104ee2e21bd2fcc856435fc3808433.png)

 refer to :https://github.com/cocos-creator/engine-native

 [View original article](https://discuss.cocos2d-x.org/t/hello-world-project-cc-3-4-native-build-mac-os-failed/55360/)
</details>