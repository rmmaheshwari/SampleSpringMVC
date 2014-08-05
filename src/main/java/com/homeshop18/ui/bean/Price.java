package com.homeshop18.ui.bean;

import java.io.Serializable;
import java.math.BigDecimal;

public class Price implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BigDecimal price;

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

}
