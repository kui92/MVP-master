package com.linglong.android.mvp.base;

public interface IPresenter {
    /**
     * 进行数据释放操作
     * @param o 扩展的可能的参数，用不到就传null
     */
    public void destory(Object o);

}
