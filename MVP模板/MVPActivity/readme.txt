��ģ��ֻ�ṩMVP�����Ĵ������˴�֮���������ϵ�������ظ��Ĵ��룬����Ĺ����߼����������ڵĹ���ʵ����������ȣ�
����ࣨBaseModel��BasePresenter������Ҫ�Լ���ʵ�֣�����������߸�ģ��ĸ����Խ�����ϡ�
ע����ࣺ
1.���л�����ͬһ�����£�Ĭ���� ��Ŀ����.mvp.base��
2.activity��������ΪMVPActivity��fragment����MVPFragment��
	�����ڴ������ɹ�����Ĭ�ϵĻ������ƣ�ģ���л����õ�����ĵط�Ĭ�ϵ�����Щ������
	������Լ��Զ��������Ļ��࣬�ڴ������ɺ�ᱨ��ֻ��Ҫ��Ĭ������������ĳ��Լ��ľͿ����ˡ�
3.ģ����Ĭ�ϵ���ػ��������
	model ����ӿ� IModel
	view ����ӿ�  IView
	presenter �ӿ� IPresenter
	BaseModel implements IModel
	Presenter���ࣺBasePresenter <V extends IView,M extends IModel> implements IPresenter
	Activity���ࣺMVPActivity<P extends IPresenter> extends FragmentActivity implements IView
	fragment���ࣺMVPFragment<P extends IPresenter> extends Fragment implements IView

Ҫ��ʹ�ø�ģ��ֻ�轫����MVPActivityĿ¼���Ƶ�studio�Ķ�ӦĿ¼�£�
	Windows��studio��װĿ¼\plugins\android\lib\templates\activities
	Mac : /Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities(��û��macҪ�ǲ��Ծ��Լ��ٶȰ�)

Ҫ����Ҫ�޸����ɵĲ���ֻ��Ҫ��
MVPActivity\root\res\layout\simple.xml.ftl ����Ĳ��ָĳ��Լ��ļ���