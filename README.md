# LocalizableFileDownloader
A script that replaces your Localizable.string file in iOS with a custom one from a link


## Usage

Save the script somewhere in the project (I used '${PROJECT_DIR}/${PROJECT_NAME}/Scripts/')

Replace the STRINGS_FILE_URL='https://www.cs.indiana.edu/l/www/classes/infosys/Lect/testplan.text' value with the link to your online strings file.
Replace the DOWNLOADED_FILE_URL="${PROJECT_DIR}/${PROJECT_NAME}/Scripts/" with a path to the folder where you want to download the .strings file
Replace the LOCALIZABLE_FILE_PATH="${PROJECT_DIR}/${PROJECT_NAME}/Resources/Localizable.strings" with the path to your Localizable.strings file

Add the script to the build phases: select the project > Build Phases > Click the "+" > New Run Script Phase > enter the location of your script for me that "${PROJECT_DIR}/${PROJECT_NAME}/Scripts/ReplaceStringsFile.sh"
Drag the newly created build phase at the top of the list before "Compile sources"

Run 🍺
