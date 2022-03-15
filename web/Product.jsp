<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="col-2">
        <div class="row">
            <img src="<%= product.getImageURL() %>"/>
        </div>
        <div class="row">
            <div class="col">
                <%=product.getName()%>
            </div>
            <div class="col" style="text-align: center">
                <%=product.getPrice()%>€
            </div>
        </div>
    </div>
</html>