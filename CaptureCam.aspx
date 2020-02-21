<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CaptureCam.aspx.cs" Inherits="CaptureCam" %>


<!doctype html> 
<html>
<head>
    <title>Dynamically add Image to a DIV Element using jQuery</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
</head>

<body>
    <div id="show_images" style="width:auto;"></div>
</body>

<script>
    var pageUrl = '<%=ResolveUrl("~/CS.aspx") %>';
    $(document).ready(function () {

        $.ajax({
            type: 'GET',
              url: pageUrl + "/Captures",
            dataType: 'png',
            success: function (png) {

                $(xml).find('ref').each(function () {

                    img = $(this).find('image').text();
                    title = $(this).find('title').text();
                    alt = $(this).find('alt').text();

                    $('<img />')
                        .attr('src', "" + img + "")         // ADD IMAGE PROPERTIES.
                            .attr('title', title)
                            .attr('alt', alt)
                            .width('113px').height('113px')

                        .appendTo($('#show_images'));       // ADD THE IMAGE TO DIV.
                });
            }
        });
    });
</script>
</html>