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

要想使用该模板只需将整个MVPActivity目录复制到studio的对应目录下：
	Windows：studio安装目录\plugins\android\lib\templates\activities
	Mac : /Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities(我没有mac要是不对就自己百度吧)

要是想要修改生成的布局只需要将
MVPActivity\root\res\layout\simple.xml.ftl 里面的布局改成自己的即可