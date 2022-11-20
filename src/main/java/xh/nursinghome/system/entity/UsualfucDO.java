package xh.nursinghome.system.entity;

public class UsualfucDO {
    private Integer id;
    private String userName;
    private String menuZh;
    private String path;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMenuZh() {
        return menuZh;
    }

    public void setMenuZh(String menuZh) {
        this.menuZh = menuZh;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
