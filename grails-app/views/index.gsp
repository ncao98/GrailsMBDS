<%@ page import="tp.mbds.com.SaleAd" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>
<content tag="nav">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
           aria-expanded="false">Application Status <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
            <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
            <li><a href="#">App version:
                <g:meta name="info.app.version"/></a>
            </li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Grails version:
                <g:meta name="info.app.grailsVersion"/></a>
            </li>
            <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
            <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
           aria-expanded="false">Artefacts <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
            <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
            <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
            <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
           aria-expanded="false">Installed Plugins <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
            </g:each>
        </ul>
    </li>
</content>

<div id="content" role="main">
    <section class="row colset-2-its">
        <div id="controllers" role="navigation">
%{--            <g:each in="${tp.mbds.com.SaleAd.list()}" var="saleAd">--}%
%{--                <div class="media">--}%
%{--                    <img class="mr-3" src="${saleAd.illustrations.filename.get(1)}" alt="Illustration">--}%

%{--                    <div class="media-body">--}%
%{--                        <h5 class="mt-0">--}%
%{--                            <g:link controller="saleAd" action="show" id="${saleAd.id}">--}%
%{--                                ${saleAd.title}--}%
%{--                            </g:link>--}%
%{--                        </h5>--}%
%{--                        ${saleAd.price}--}%
%{--                        ---}%
%{--                        ${saleAd.description}--}%
%{--                    </div>--}%
%{--                </div>--}%
%{--            </g:each>--}%
            <table>
                <tbody>
                <g:each in="${tp.mbds.com.SaleAd.list()}" var="saleAd">
                    <tr>
                        <td>
                            <img style="width: 100px; height: 150px;" class="mr-3" src="${saleAd.illustrations.filename.get(1)}" alt="Illustration">
                        </td>
                        <td>
                            <div class="media-body">
                                <h5 class="mt-0">
                                    <g:link controller="saleAd" action="show" id="${saleAd.id}">
                                        ${saleAd.title}
                                    </g:link>
                                </h5>
                                ${saleAd.price}
                                -
                                ${saleAd.description}
                            </div>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </section>
</div>

</body>
</html>
