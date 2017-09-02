<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html; charset=GBK" pageEncoding="GBK"%>

<c:choose>
    <c:when test="${fn:length(clientVoMap) == 0}">
        <div class="group">
            <form>
                <fieldset>
                    <legend>�����ͻ���</legend>
                </fieldset>
            </form>
        </div>
    </c:when>
    <c:otherwise>
        <c:forEach items="${clientVoMap}" var="groupInfo">

            <div class="group">
                <form>
                    <fieldset>
                        <legend>ϵͳ�����:${groupInfo.key} totalNode(�ܽڵ���):${fn:length(groupInfo.value)}</legend>

                        <c:forEach items="${groupInfo.value}" var="clientVo">
                            <p>
                                <label>�ͻ���id:${clientVo.id} </label>-->nodeNum(������):${clientVo.nodeNum}
                            </p>
                        </c:forEach>

                    </fieldset>
                </form>
            </div>
        </c:forEach>
    </c:otherwise>
</c:choose>
