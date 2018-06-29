package ${presenterPackageName};
import ${basePackage}.BasePresenter;
import ${contractPackageName}.${pageName}Contract;


public class ${pageName}Presenter extends BasePresenter<${pageName}Contract.View,${pageName}Contract.Model> {
   
  
    public ${pageName}Presenter (${pageName}Contract.View rootView,${pageName}Contract.Model model) {
        super(rootView,model);
    }

}
