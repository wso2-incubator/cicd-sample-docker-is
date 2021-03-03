${WSO2_SERVER_HOME}/bin/wso2update_linux current-state --username $1 --password $2
for hotfix in `ls hotfixes | grep .zip | sort --version-sort -f`;
do 
    ${WSO2_SERVER_HOME}/bin/wso2update_linux apply-hotfix hotfixes/$hotfix
done;
