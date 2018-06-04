
import argparse
import logging
import requests
import os

_components = [
	"activeqt",
	"global",
	"qdoc",
	"qmake",
	"qt3d",
	"qtandroidextras",
	"qtassistant",
	"qtbluetooth",
	"qtcanvas3d",
	"qtconcurrent",
	"qtcore",
	"qtdbus",
	"qtdesigner",
	"qtdoc",
	"qtgamepad",
	"qtgraphicaleffects",
	"qtgui",
	"qthelp",
	"qtimageformats",
	"qtlabscalendar",
	"qtlabsplatform",
	"qtlinguist",
	"qtlocation",
	"qtmacextras",
	"qtmultimedia",
	"qtnetwork",
	"qtnfc",
	"qtopengl",
	"qtplatformheaders",
	"qtpositioning",
	"qtprintsupport",
	"qtqml",
	"qtquick",
	"qtquickcontrols",
	"qtquickcontrols2",
	"qtquickdialogs",
	"qtquickextras",
	"qtscxml",
	"qtsensors",
	"qtserialbus",
	"qtserialport",
	"qtsql",
	"qtsvg",
	"qttestlib",
	"qtuitools",
	"qtwaylandcompositor",
	"qtwebchannel",
	"qtwebengine",
	"qtwebsockets",
	"qtwebview",
	"qtwidgets",
	"qtwinextras",
	"qtx11extras",
	"qtxml",
	"qtxmlpatterns",
]
_args = None

def main():
	global _args
	_args = parseArguments()
	downloadTagFiles()


def parseArguments():
	argParser = argparse.ArgumentParser(description='Downloads the .tags files of Qt5 components.')
	addArgumentsToParser(argParser)
	args = argParser.parse_args()
	return args

def addArgumentsToParser(parser):
	parser.add_argument('qtVersion', metavar='QT_VERSION',
	                    help='Defines the version of Qt for which the .tags files should be downloaded.')
	parser.add_argument('targetDir', metavar='TARGET_DIRECTORY', nargs='?', default='',
	                    help='The directory where the .tags files will be downloaded to.')

def downloadTagFiles():
	for component in _components:
		downloadTagFile(component)

def downloadTagFile(component):
	tagFileContent = fetchTagFileContent(component)
	if tagFileContent:
		storeTagFileContent(component, tagFileContent)

def fetchTagFileContent(component):
	response = requests.get('http://doc.qt.io/qt-{0}/{1}.tags'.format(_args.qtVersion, component))
	if response.status_code == requests.status_codes.codes.OK:
		return response.content
	else:
		logging.warn('Could not download .tags file for component {0}'.format(component))
	return None

def storeTagFileContent(component, tagFileContent):
	tagFilePath = os.path.join(_args.targetDir, '{0}.tags'.format(component))
	tagFile = open(tagFilePath, 'wb')
	tagFile.write(tagFileContent)

if __name__ == "__main__":
	main()