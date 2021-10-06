# CMSIS Annotation Validator

The code doesn't work, but a jar was somehow produced that kinda works.
I don't remember how I did it.


The Nordic [nRF5 SDK](https://www.nordicsemi.com/Software-and-tools/Software/nRF5-SDK)
uses a global [config file](https://infocenter.nordicsemi.com/topic/sdk_nrf5_v16.0.0/sdk_config.html)
that has [CMSIS annotations](https://www.keil.com/pack/doc/CMSIS/Pack/html/configWizard.html).

Nordic suggests using The [CMSIS Configuration Wizard](https://sourceforge.net/projects/cmsisconfig/)
as a GUI for editing the file.

We wanted to be able to test if the file was valid before committing it, but it
doesn't do that.

So this repo provides a simple tool to check if a file has valid CMSIS
annotations.

## Usage
```
java -jar cmsisvalidator.jar sdk_config.h
```

There might be some output on stderr, but the return codes are the main thing.

### Return codes
* 0 for valid file
* 1 for no file given
* 2 for file not found
* 3 for invalid file
