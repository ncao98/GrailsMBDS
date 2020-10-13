<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-saleAd" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Titre</th>
            <th>Description</th>
            <th>Long Description</th>
            <th>Prix</th>
            <th>Auteur</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${saleAdList}" var="saleAd">
            <tr>
                <td>
                    <g:link controller="saleAd" action="show" id="${saleAd.id}">
                        ${saleAd.title}
                    </g:link>
                </td>
                <td>${saleAd.description}</td>
                <td>${saleAd.longDescription}</td>
                <td>${saleAd.price}</td>
                <td>${saleAd.author}</td>
            </tr>
        </g:each>
        </tbody>
    </thead>
    </table>

    <div class="pagination">
        <g:paginate total="${saleAdCount ?: 0}"/>
    </div>
</div>
</body>
</html>