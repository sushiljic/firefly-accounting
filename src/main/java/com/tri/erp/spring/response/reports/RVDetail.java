package com.tri.erp.spring.response.reports;

import java.math.BigDecimal;

/**
 * Created by Personal on 5/20/2015.
 */
public class RVDetail {
    private String description;
    private Integer id;
    private String unitCode;
    private BigDecimal quantity;

    public  RVDetail() {}

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUnitCode() {
        return unitCode;
    }

    public void setUnitCode(String unitCode) {
        this.unitCode = unitCode;
    }

    public BigDecimal getQuantity() {
        return quantity;
    }

    public void setQuantity(BigDecimal quantity) {
        this.quantity = quantity;
    }
}
