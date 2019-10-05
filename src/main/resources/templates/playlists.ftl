<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<@c.page>
    <br>
    <br>
    <form method="post" action="/playlists/${currentUserId}" >
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="form-group row">
            <input type="text" name="playlistName" placeholder="Enter name of playlist">
            <button type="submit" class="btn btn-success ml-1">Create</button>
        </div>
    </form>
    <br>
    <br>
    <h3>List of your playlists</h3>
    <br>
    <br>
    <#list playlists as playlist>
        <div>
            <b><a class="nav-link" href="/playlists/${currentUserId}/${playlist.id}">${playlist.name}</a></b>
            <form method="post" action="/playlists/${currentUserId}/${playlist.id}/delete" >
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button type="submit" class="btn btn-danger ml-1">Delete</button>
            </form>
        </div>
        <br>
    <#else>
        <h5> You have no playlists</h5>
    </#list>

    </@c.page>