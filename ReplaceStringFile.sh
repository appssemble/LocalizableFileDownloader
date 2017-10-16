#Constants

STRINGS_FILE_URL='https://www.cs.indiana.edu/l/www/classes/infosys/Lect/testplan.text'
DOWNLOAD_FILE_NAME='DOWNLOADED'

DOWNLOADED_FILE_URL="${PROJECT_DIR}/${PROJECT_NAME}/Scripts/"
LOCALIZABLE_FILE_PATH="${PROJECT_DIR}/${PROJECT_NAME}/Resources/Localizable.strings"

DOWNLOAD_FILE_PATH=$DOWNLOADED_FILE_URL$DOWNLOAD_FILE_NAME

DOWNLOADED=0

# Download the file from the internet
if curl -o $DOWNLOAD_FILE_PATH $STRINGS_FILE_URL 
	then echo "Downloaded string file to: $DOWNLOAD_FILE_PATH"
		DOWNLOADED=1
	else echo "ERROR: There was an error with downloading the file!"
fi

# Early exit if the downloading has failed
if [ $DOWNLOADED -eq 0 ];
	then
		# An error occured we couldn't download the file
		exit 1
fi

# Move the contents of the downloaded file to the Localizable.strings
echo 'Moving downloaded file to the strings file...'
cat $DOWNLOAD_FILE_PATH > $LOCALIZABLE_FILE_PATH

echo 'Remove downloaded file...'
rm -rf $DOWNLOAD_FILE_PATH

echo "Done.🍺"





