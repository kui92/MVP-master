package ${presenterPackageName};
import ${basePackage}.BasePresenter;
import ${contractPackageName}.${pageName}Contract;


class ${pageName}Presenter
constructor(rootView: ${pageName}Contract.View,model: ${pageName}Contract.Model) :
BasePresenter<${pageName}Contract.View,${pageName}Contract.Model>(rootView,model){
}
