<div class="footer">
    <ul>
        <c:forEach var="atc" items="${top3article}">
            <li><a href="Home?id=${atc.getId()}">${atc.getTitle()}</a><i> Posted on ${atc.getDate()}</i></li>
        </c:forEach>
    </ul>
</div>