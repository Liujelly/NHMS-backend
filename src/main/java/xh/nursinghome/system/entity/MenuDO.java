package xh.nursinghome.system.entity;

import xh.nursinghome.system.module.Menu;

public class MenuDO {
    private int id;
    private String path;
    private String name;
    private String nameZh;
    private String iconCls;
    private String component;
    private int parentId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNameZh() {
        return nameZh;
    }

    public void setNameZh(String nameZh) {
        this.nameZh = nameZh;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    public String getComponent() {
        return component;
    }

    public void setComponent(String component) {
        this.component = component;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public Menu toMenu(){
        Menu menu=new Menu();
        menu.setId(getId());
        menu.setPath(getPath());
        menu.setName(getName());
        menu.setNameZh(getNameZh());
        menu.setIconCls(getIconCls());
        menu.setComponent(getComponent());
        menu.setParentId(getParentId());
        return menu;

    }
}
