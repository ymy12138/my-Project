package com.ymy.pojo;

import java.util.List;

public class Page {
    private int totalDate;
    private int pageSize;
    private int totalPage;
    private int currentPage;
    private List<Schedule> currentList;
    private int type;

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getTotalDate() {
        return totalDate;
    }

    public void setTotalDate(int totalDate) {
        this.totalDate = totalDate;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public List<Schedule> getCurrentList() {
        return currentList;
    }

    public void setCurrentList(List<Schedule> currentList) {
        this.currentList = currentList;
    }
}
