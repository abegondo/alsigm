<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/taglibs/displaydepositotags.tld" prefix="archivo"%>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>

<tr>
	<td class="<c:out value="${classTdTituloCampo}"/>" width="<c:out value="${sizeCampo}"/>"><bean:message key="archigest.archivo.busqueda.form.numeroExpediente"/>:&nbsp;</td>
	<td class="<c:out value="${classTdCampo}"/>">
		<c:if test="${elemento.mostrarCalificadores != null && elemento.mostrarCalificadores == 'S'}">
			<html:select property="numeroExpediente_like">
				<html:option key="archigest.archivo.igual" value="igual"/>
					<html:option key="archigest.archivo.empiezaPor" value="empieza"/>
					<html:option key="archigest.archivo.terminaPor" value="termina"/>
					<html:option key="archigest.archivo.contiene" value="contiene"/>
				</html:select>
		</c:if>
		<html:text styleId="numeroExpediente" property="numeroExpediente" size="50" maxlength="256"/>&nbsp;</td>
</tr>
