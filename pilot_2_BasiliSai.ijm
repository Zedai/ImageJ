//Dialog.create("Choose Images ");
//Dialog.addString("File suffix: ", "yes.tif", 5);
//Dialog.show();
//suffix = Dialog.getString();

resultIndex = 0;
run("Clear Results");

output = getDirectory("Choose an output Directory ");

//exit = false;
while(true){
dir = getDirectory("Choose a Directory ");
list = getFileList(dir);

for(i =0; i<list.length  ; i++){
	if(endsWith(list[i], ".TIF")){
		print(list[i]);
		open(dir+list[i]);
	}
}

run("doTheThing [r]");

setResult("Label", resultIndex, dir + "_STACK");
updateResults;
resultIndex++;

while (nImages>0) { 
      selectImage(nImages); 
      close(); 
 } 

}
