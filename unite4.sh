#Fetching the aosp code path
echo "Enter AOSP code path:-"
read path
#sync from the git repo

git clone https://github.com/raviksk/dialer_erpo_manifest.git
curl https://storage.googleapis.com/git-repo-downloads/repo > repo
chmod 777 repo
./repo init -u https://github.com/raviksk/dialer_erpo_manifest
./repo sync
./repo start riba --all


cd $path

if [ -d $path"/packages/apps/Dialer" ]; then
	pwd
	cd $path"/packages/apps/Dialer"
	find -name "*.mk" -exec mv {} {}.bak \;
fi
if [ -d $path"/packages/apps/InCallUI" ]; then
	pwd
	cd $path"/packages/apps/InCallUI"
	find -name "*.mk" -exec mv {} {}.bak \;
fi
if [ -d $path"/packages/apps/Contacts" ]; then
	pwd
	cd $path"/packages/apps/Contacts"
	find -name "*.mk" -exec mv {} {}.bak \;
fi
if [ -d $path"/packages/apps/ContactsCommon" ]; then
	pwd
	cd $path"/packages/apps/ContactsCommon"
	find -name "*.mk" -exec mv {} {}.bak \;
fi
if [ -d $path"/frameworks/opt/net/ims" ]; then
	pwd
	cd $path"/frameworks/opt/net/ims"
	find -name "*.mk" -exec mv {} {}.bak \;
fi
if [ -d $path"/frameworks/opt/telephony" ]; then
	pwd
	cd $path"/frameworks/opt/telephony"
	find -name "*.mk" -exec mv {} {}.bak \;
fi
