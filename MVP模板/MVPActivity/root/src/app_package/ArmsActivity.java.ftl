package ${ativityPackageName};
import android.os.Bundle;
import ${basePackage}.MVPActivity;
import ${packageName}.R;
import android.support.annotation.Nullable;
import ${presenterPackageName}.${pageName}Presenter;
import ${contractPackageName}.${pageName}Contract;



public class ${pageName}Activity extends MVPActivity<${pageName}Presenter> implements ${pageName}Contract.View {
	
	 @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
		<#if generateActivityLayout>
			setContentView(R.layout.${activityLayoutName});
		</#if>
		//下面实例化mPresenter自己实现，模板里就不写了
    }
	

}
