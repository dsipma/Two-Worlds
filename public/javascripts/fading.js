r = 7;      //26
g = 182;    //26
b = 254;    //26

function fadetext(){
if(r<26) {
r+=1;
g -= 8;
b -= 12;
document.getElementById("notices").style.color="rgb("+r+","+g+","+b+")";
setTimeout("fadetext()",175);
}
else
document.getElementById("notices").style.visibility="hidden";
}
/**
 * Created by JetBrains RubyMine.
 * User: daniel
 * Date: 12/17/11
 * Time: 9:40 PM
 * To change this template use File | Settings | File Templates.
 */
