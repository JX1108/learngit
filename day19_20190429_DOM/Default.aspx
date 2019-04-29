﻿<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">    
    <title>IFE ECMAScript</title>
</head>
<body>        
    <div id="wrapper">
        <div id="news-top" class="section">
            <h3>Some title</h3>
            <div class="content">
                <ul>
                    <li><span>HTML</span><a href="">Some Link1</a></li>
                    <li><span>JS</span><a class="active" href="">Some Link2</a></li>
                    <li><span>CSS</span><a href="">Some Link3</a></li>
                    <li><span>JS</span><a href="">Some Link4</a></li>
                </ul>
            </div>
            <img src="">
            <p class="">Some Text</p>
        </div>
        <div id="news-normal" class="section">
            <h3>Some title</h3>
            <div class="content">
                <ul>
                    <li><span>HTML</span><a href="">Some Link1</a></li>
                    <li><span>HTML</span><a href="">Some Link2</a></li>
                    <li><span>JS</span><a class="active" href="#">Some Link3</a></li>
                    <li><span>CSS</span><a href="">Some Link4</a></li>
                </ul>
            </div>
            <img src="">
            <p class="">Some Text</p>
        </div>      
    </div>
    <script>

    function getAllListItem() {
        // 返回页面中所有li标签
        var l = document.querySelectorAll('li');
        return l;
    }
 
    function findAllHtmlSpanInOneSection(sectionId) {
        // 返回某个section下所有span中内容为HTML的span标签
        var sect = document.getElementById(sectionId);
        var span = sect.querySelectorAll('span');
        for(var i = 0; i < span.length; i++){
            if(span[i].innerHTML == "HTML"){
                console.log(span[i]);
            }
        }
    }
    function findListItem(sectionId, spanCont) {
        // 返回某个section下，所有所包含span内容为spanCont的LI标签
        var sect = document.getElementById(sectionId);
        var span = sect.querySelectorAll('span');
        for(var i = 0; i < span.length;i++){
            if(span[i].innerHTML == spanCont){
                console.log(span[i].parentNode);
            }
        }
    }

    function getActiveLinkContent(sectionId) {
        // 返回某个section下，class为active的链接中包含的文字内容
        var sect = document.getElementById(sectionId);
        var content = sect.querySelectorAll(".active");
        for(var i = 0; i < content.length; i++){
           console.log(content[i].innerHTML); 
        }
        
    }
 
    
  //  console.log(getAllListItem());
  //  findAllHtmlSpanInOneSection('news-normal');
  //  findListItem("news-normal", "JS");
      getActiveLinkContent("news-normal");

    </script>
</body>
</html>