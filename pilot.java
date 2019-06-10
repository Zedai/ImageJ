import ij.*;
import ij.process.*;
import ij.gui.*;
import java.awt.*;
import ij.plugin.*;

public class pilot implements PlugIn {

	public void run(String arg) {
		ImagePlus imp = IJ.getImage();
		IJ.run(imp, "Images to Stack", "name=Stack title=[] use");
		IJ.run("Make Composite", "display=Composite");
		IJ.run(imp, "RGB Color", "");
		IJ.run(imp, "16-bit", "");
		IJ.run(imp, "Measure", "");
	}

}
