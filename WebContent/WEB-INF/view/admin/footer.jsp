
<div class="footer">Footer</div>
<script type='text/javascript'>
function closeWindow(id){
	$("#"+id).remove();
}
function minimizeWindow(obj){
	$("#headerPopupInner").slideToggle();
	$("#headerPopup").height("auto");
	$(obj).toggleClass("fa-minus");
}
function updateValues(e,obj,id){
    console.log(e.keyCode+" "+obj.value+" "+id+" "+obj.getAttribute("id"));
    if(e.keyCode === 38){
    	if(obj.getAttribute("id")=== "lagai"+id+"1"){
    		document.getElementById("lagai"+id+"2").value=parseFloat((parseFloat(document.getElementById("lagai"+id+"2").value)) + (parseFloat("0.02"))).toString().substring(0,4);
        }
    }
    if(e.keyCode === 40){
    	if(obj.getAttribute("id")=== "lagai"+id+"1"){
    		document.getElementById("lagai"+id+"2").value=parseFloat((parseFloat(document.getElementById("lagai"+id+"2").value)) - (parseFloat("0.02"))).toString().substring(0,4);
        }
    }

}
</script>
