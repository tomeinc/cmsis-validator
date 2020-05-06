

.DEFAULT_GOAL := cmsisvalidator.jar

cmsisvalidator.jar: com/tomesoftware/cmsisvalidator/Validator.class
	jar cmvf META-INF/MANIFEST.MF cmsisvalidator.jar com/tomesoftware/cmsisvalidator/Validator.class

com/tomesoftware/cmsisvalidator/Validator.class: third_party/CMSIS_Configuration_Wizard.jar
	javac -verbose -classpath './third_party/CMSIS_Configuration_Wizard.jar' com/tomesoftware/cmsisvalidator/Validator.java

third_party/CMSIS_Configuration_Wizard.jar:
	mkdir -p third_party
	wget -O third_party/cmsis_v0.0.7.zip https://versaweb.dl.sourceforge.net/project/cmsisconfig/CMSIS%20Configuration%20Wizard%20v0.0.7/CMSIS_Configuration_Wizard_v0.0.7.zip
	unzip -d third_party third_party/cmsis_v0.0.7.zip
