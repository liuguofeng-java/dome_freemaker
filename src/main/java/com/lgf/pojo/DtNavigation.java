package com.lgf.pojo;

import java.util.List;

public class DtNavigation {
    private Integer id;

    private Integer parentId;

    private Integer channelId;

    private String navType;

    private String name;

    private String title;

    private String subTitle;

    private String iconUrl;

    private String linkUrl;

    private Integer sortId;

    private Integer isLock;

    private String remark;

    private String actionType;

    private Integer isSys;

    private List<DtNavigation> children;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<DtNavigation> getChildren() {
        return children;
    }

    public void setChildren(List<DtNavigation> children) {
        this.children = children;
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getChannelId() {
        return channelId;
    }

    public void setChannelId(Integer channelId) {
        this.channelId = channelId;
    }

    public String getNavType() {
        return navType;
    }

    public void setNavType(String navType) {
        this.navType = navType == null ? null : navType.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle == null ? null : subTitle.trim();
    }

    public String getIconUrl() {
        return iconUrl;
    }

    public void setIconUrl(String iconUrl) {
        this.iconUrl = iconUrl == null ? null : iconUrl.trim();
    }

    public String getLinkUrl() {
        return linkUrl;
    }

    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl == null ? null : linkUrl.trim();
    }

    public Integer getSortId() {
        return sortId;
    }

    public void setSortId(Integer sortId) {
        this.sortId = sortId;
    }

    public Integer getIsLock() {
        return isLock;
    }

    public void setIsLock(Integer isLock) {
        this.isLock = isLock;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getActionType() {
        return actionType;
    }

    public void setActionType(String actionType) {
        this.actionType = actionType == null ? null : actionType.trim();
    }

    public Integer getIsSys() {
        return isSys;
    }

    public void setIsSys(Integer isSys) {
        this.isSys = isSys;
    }

    @Override
    public String toString() {
        return "DtNavigation{" +
                "id=" + id +
                ", parentId=" + parentId +
                ", channelId=" + channelId +
                ", navType='" + navType + '\'' +
                ", name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", subTitle='" + subTitle + '\'' +
                ", iconUrl='" + iconUrl + '\'' +
                ", linkUrl='" + linkUrl + '\'' +
                ", sortId=" + sortId +
                ", isLock=" + isLock +
                ", remark='" + remark + '\'' +
                ", actionType='" + actionType + '\'' +
                ", isSys=" + isSys +
                '}';
    }
}