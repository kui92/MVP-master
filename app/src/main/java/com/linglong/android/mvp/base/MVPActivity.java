package com.linglong.android.mvp.base;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;

public class MVPActivity<P extends IPresenter> extends FragmentActivity implements IView{
    protected P mPresenter = null;


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }


    @Override
    public Activity getActivityInstance() {
        return this;
    }

    @Override
    protected void onDestroy() {
        if (mPresenter!=null){
            mPresenter.destory(this);
            mPresenter = null;
        }
        super.onDestroy();
    }
}
