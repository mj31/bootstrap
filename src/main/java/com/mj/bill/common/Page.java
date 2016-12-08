package com.mj.bill.common;

/**
 * Created by homelink on 2016/12/7.
 */
public class Page {


    private Integer  pageSize ;

    private Integer beginRow ;

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getBeginRow() {
        return beginRow;
    }

    public void setBeginRow(Integer beginRow) {
        this.beginRow = beginRow;
    }
}
