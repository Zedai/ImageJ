macro "process [r]"{
	print(nImages());
	run("Images to Stack", "name=Stack title=[] use");
	run("Make Composite", "display=Composite");
	run("RGB Color", "");
	run("16-bit", "");
	run("Measure", "");
}
