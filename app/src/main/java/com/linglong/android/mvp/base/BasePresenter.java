package com.linglong.android.mvp.base;

public  abstract class BasePresenter <V extends IView,M extends IModel> implements IPresenter{
    protected V mIView;
    protected M mMoudel;
    public BasePresenter(V view,M moudel){
        mIView = view;
        mMoudel = moudel;
    }


    @Override
    public void destory(Object o) {
        mIView = null;
        mMoudel = null;
    }
}
