<%@tag description="My input field" pageEncoding="UTF-8"%>

<%@ attribute name="id" required="true" %>
<%@ attribute name="name" required="true" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" %>
<%@ attribute name="autocomplete" %>

<div>
	<label for="${id}">${label}</label>
   	
   	<input
   		type="text"
   		name="${name}"
   		id="${id}"
   		value="${value}"
   		autocomplete="${ autocomplete == null ? 'on' : autocomplete }"
   	>
</div>