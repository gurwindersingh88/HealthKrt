# Use the official Katalon Docker image
FROM katalonstudio/katalon:latest

# Set the working directory to the Katalon project source
WORKDIR /katalon/katalon/source

# Copy the Katalon project into the container
COPY . /katalon/katalon/source

# Specify the default command to run Katalon Studio in console mode
CMD ["katalonc.sh", "-noSplash", "-runMode=console", "-projectPath=/katalon/katalon/source/test.prj", "-retry=0", "-testSuiteCollectionPath=Test Suites/healthcare-tests - TS_RegressionTestCollection", "-apiKey=ab719a43-915d-4b93-afbb-97f480736f26"]