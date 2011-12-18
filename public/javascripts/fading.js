r = 7;      //26
g = 182;    //26
b = 254;    //26

function fadetext(){
if(r<26) {
r+=1;
g -= 8;
b -= 12;
document.getElementById("notices").style.color="rgb("+r+","+g+","+b+")";
document.getElementById("alert").style.color="rgb("+r+","+g+","+b+")";
setTimeout("fadetext()",175);
}
else
{
document.getElementById("notices").style.visibility="hidden";
document.getElementById("alert").style.visibility="hidden";
}
}
