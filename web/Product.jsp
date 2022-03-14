<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="col">
        <div class="row">
            <img src="<%product.getImageURL();%>"/>
        </div>
        <div class="row">
            <div class="column">
                <%product.getName%>
            </div>
            <div class="column">
                <%product.getPrice;%>€
            </div>
        </div>
    </div>
</html>
