# obenchekroun.github.io
####Cydia Repository

Thanks to Decimation & Tyler Crawford for their guide on how to make a Github Cydia repo !

####Cydia repo address : http://obenchekroun.github.io

##Cloning :
- via application :

		Hit '+' then "Clone"

- via website

		Button "Clone to desktop"

- via ssh :
```bash
		$ cd ~/Desktop/
		$ git clone git@github.com:obenchekroun/obenchekroun.github.io.git
```
Start Playing !

##How To update the repo :
- Create a new project in projects/
- Add DEBIAN/ and any structure of files to be installed
- In DEBIAN, add a 'control' file with this structure :

		Package: com.bo.FBIcon
		Name: FBIcon
		Depends: winterboard
		Version: 1.0
		Architecture: iphoneos-arm
		Description: A simple purple icon for Facebook app 
		Maintainer: Manof
		Author: Manof
		Section: Themes (Springboard)
		Depiction: http://obenchekroun.github.io/depictions/index.html?p=com.bo.FBIcon

Note that depictions/ should be adapted accordingly with a depiction for the package 

- Modify 'packages.sh', adding the command to create the deb
```bash
		dpkg-deb -bZgzip projects/<packagename> debs
```
- execute './update.sh'


It will :
- remove the previous .deb
- create a new deb for all the folders in projects/
- dpkg-scanpackages in .deb et update 'Packages' :
			  
			  Package: com.bo.FBIcon
			  Version: 1.0
			  Architecture: iphoneos-arm
			  Maintainer: Manof
			  Depends: winterboard
			  Filename: ./debs//com.bo.fbicon_1.0_iphoneos-arm.deb
			  Size: 28148
			  MD5sum: 83037dc237d739cf80d4d4efbfe46647
			  SHA1: 3198526dc99c04f2e3202337fc6334a58824e9b2
			  SHA256: c7d3264a71121db5a08b60f1f5f2e7335e0662a6d112e4ff61daed247706efad
			  Section: Themes (Springboard)
			  Description: A simple purple icon for Facebook app
			  Author: Manof
			  Name: FBIcon

- compress 'Packages' to 'Packages.bz2'

Done!

## You might want to regenerate the README.md in pdf if modified

```bash
	$ pandoc README.md -o README.pdf
```

or to convert all markdown files :

```bash
	$ ./md2pdf.sh
```
##Now, you want to commit the changes on git-hub :
```bash
	$ cd obenchekroun.github.io
	$ git add --all
	$ git commit -m "<any suitable description of the changes>"
	$ git push
```
NB : the commit can be done via Github app or by executing the script :
```bash
	$ ./gpush <description of the commited changes>
```

#### The scripts used are using the following tools. Make sure to install them beforehand

*NB : scripts are using terminal-notifier to notify the completion of pushing.
See https://github.com/julienXX/terminal-notifier and install by using :*
```bash
	$ brew install terminal-notifier
```

*NB : The conversion from .md to .pdf needs pandoc, which depends on a Latex distribution. To install pandoc :*
```bash
	$ brew install pandoc
```
