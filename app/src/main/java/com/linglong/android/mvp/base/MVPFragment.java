package com.linglong.android.mvp.base;

import android.app.Activity;
import android.support.v4.app.Fragment;

public class MVPFragment<P extends IPresenter> extends Fragment implements IView{

    protected P mPresenter;



    @Override
    public Activity getActivityInstance() {
        return getActivity();
    }

    @Override
    public void onDestroy() {
        if (mPresenter!=null){
            mPresenter.destory(this);
            mPresenter = null;
        }
        super.onDestroy();
    }
}
