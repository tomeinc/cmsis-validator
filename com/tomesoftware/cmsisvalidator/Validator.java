package com.tomesoftware.cmsisvalidator;

import com.helmpcb.cmsisconfig;
import java.io.*;

public class Validator {
    public static void main (String[] args) {
        File fileToOpen = null;

        if (args.length == 0) {
            System.err.println("no file given");
            System.exit(1);
        } else {
            fileToOpen = new File(args[0]);
            if (!(fileToOpen.exists() && !fileToOpen.isDirectory())) {
                // This is not a valid file
                System.err.println("Unable to open " + args[0]);
                System.exit(2);
            }
        }

        try {
            CMSISConfigurator configurator = new CMSISConfigurator(fileToOpen);
        } catch(Exception e) {
            //System.err.println("exception " + e);
            System.err.println("bad file");
            System.exit(3);
        }

        //no exception, must be fine
        System.exit(0);
    }
}
