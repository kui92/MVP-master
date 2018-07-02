# MVP-master

MVP模式模板

首先感谢MVPArms的作者JessYan
https://www.jianshu.com/p/48e66e879061
本模板就是改自他的模板，但是MVPArms这个模板依赖太强要想使用这个模板就必须引用原作者的框架，而且必须依赖dagger2，还有其他一些框架成本较高。
原则上来说完整引用这个框架并Retrofit＋RxAndroid来进行MVP模式开发是比较好的，但往往现实往往不如意。一个是这些个框架用着不习惯，最重要的是
原项目没有引用过这些框架，而这些框架的编码方式与原项目大不相同。还有就是一个项目是由多人开发，项目框架改动太大，各种成本增加。所以我重新编辑
了一个新的模板，将里面所有的引用的框架去除，MVP的逻辑代码、生命周期、对象的实例化与释放等全由开发者自定定义，开发者只需要实现几个基本的基类搭建
一个大体的框架即可。

本模板只提供MVP相关类的创建、彼此之间的依赖关系及部分重复的代码，具体的功能逻辑（生命周期的管理，实例化，缓存等）
与基类（BaseModel、BasePresenter）等需要自己来实现，这样更能提高该模板的复用性降低耦合。





注意基类：
1.所有基类在同一个包下（默认是 项目包名.mvp.base）

2.activity基类名字为MVPActivity，fragment基类MVPFragment。

	这是在代码生成过程中默认的基类名称，模板中会在用到基类的地方默认导入这些包名。
	如果是自己自定义命名的基类，在代码生成后会报错，只需要将默认引入的类名改成自己的就可以了。
	
	
3.模板中默认的相关基类的名字

	model 顶层接口 IModel
	
	view 顶层接口  IView
	
	presenter 接口 IPresenter
	
	BaseModel implements IModel
	
	Presenter基类：BasePresenter <V extends IView,M extends IModel> implements IPresenter
	
	Activity基类：MVPActivity<P extends IPresenter> extends FragmentActivity implements IView
	
	fragment基类：MVPFragment<P extends IPresenter> extends Fragment implements IView
  
  
要想使用MVPFragment模板只需将整个MVPFragment目录复制到studio的对应目录下：

	Windows：studio安装目录\plugins\android\lib\templates\other
	
	Mac : /Applications/Android Studio.app/Contents/plugins/android/lib/templates/other
	
要想使用MVPActivity模板只需将整个MVPActivity目录复制到studio的对应目录下：

	Windows：studio安装目录\plugins\android\lib\templates\activities
	
	
	Mac : /Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities

要是想要修改生成的布局只需要将
MVPActivity\root\res\layout\simple.xml.ftl 里面的布局改成自己的即可

