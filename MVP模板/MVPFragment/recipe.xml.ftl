<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<@kt.addAllKotlinDependencies />


<#if needActivity>
    <instantiate from="root/src/app_package/ArmsActivity.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}.${ktOrJavaExt}" />
</#if>


<#if needContract>
    <instantiate from="root/src/app_package/ArmsContract.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(contractPackageName)}/${pageName}Contract.${ktOrJavaExt}" />
</#if>

<#if needPresenter>
    <instantiate from="root/src/app_package/ArmsPresenter.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}Presenter.${ktOrJavaExt}" />
</#if>
<#if needModel>
    <instantiate from="root/src/app_package/ArmsModel.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(modelPackageName)}/${pageName}Model.${ktOrJavaExt}" />
</#if>

</recipe>
