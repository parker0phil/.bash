export PATH=${HOME}/.bash/scripts:$PATH

for BINTOOL in `ls ${HOME}/.tools | grep -v "."`
do
   TOOL_LINK=`echo $BINTOOL| tr '[:upper:]' '[:lower:]'`
   TOOL_ALIAS=`echo $BINTOOL| tr '[:lower:]' '[:upper:]'`
   export ${TOOL_ALIAS}_HOME="${HOME}/.tools/${TOOL_LINK}"
   TOOL_HOME="${TOOL_ALIAS}_HOME"
   export PATH=${!TOOL_HOME}/bin:$PATH
done





