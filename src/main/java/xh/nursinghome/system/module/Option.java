package xh.nursinghome.system.module;

import ch.qos.logback.core.boolex.EvaluationException;

public class Option {
    private int value;
    private String label;

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }
}
