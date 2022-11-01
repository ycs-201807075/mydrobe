<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 <HEAD>
  <TITLE>  </TITLE>

  <!-- 1. CDN -->
  <script src="https://cdn.ckeditor.com/ckeditor5/11.0.1/classic/ckeditor.js"></script>
 </HEAD>
 <BODY>
   <table width = "100%">
    <!-- 2. TEXT 편집 툴을 사용할 textarea -->
    <textarea rows="100" cols="300" name="content" id="editor" style="width:1000px; height:1000px; "></textarea>
    <script>
    // 3. CKEditor5를 생성할 textarea 지정
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
    </script>
   </table>
 </BODY>
</HTML>