<html>
<body>
<form method="post" action="">
Enter text here:<br />
<input type="text" class="alphaonly" name="txtExample" id="number" value="0" /><br /><br />
<input type="submit" name="btnMyButton" onclick="incrementValue()" value="Increment Value"/>
</form>
<script type="text/javascript">
$('.alphaonly').bind('keyup blur',function(){ 
    var node = $(this);
    node.val(node.val().replace(/[^a-z]/g,'') ); }
);
</script>
<script>
    function incrementValue()
{
    var value = parseInt(document.getElementById('number').value, 10);
    value = isNaN(value) ? 0 : value;
    value++;
    document.getElementById('number').value = value;
}
</script>
</body>
</html>