package com.homeshop18.utility;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public final class TagLibClass {

	private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

	private TagLibClass() {
	}

	public static String convertToJson(final Object object) throws JsonProcessingException {

		return OBJECT_MAPPER.writeValueAsString(object);
	}

}
