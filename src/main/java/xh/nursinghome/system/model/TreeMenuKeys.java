package xh.nursinghome.system.model;

import java.util.List;

public class TreeMenuKeys {
    private int roleId;
    private List<Integer> selectedMenuIds;

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public List<Integer> getSelectedMenuIds() {
        return selectedMenuIds;
    }

    public void setSelectedMenuIds(List<Integer> selectedMenuIds) {
        this.selectedMenuIds = selectedMenuIds;
    }
}
