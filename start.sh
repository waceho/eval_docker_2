echo ""
echo "###############################"
echo " BASE EVALUATION M2 DEV "
echo "###############################"
echo ""
read -p "Press any key to continue... " -n1 -s
echo ""
echo "###########"
echo " version 1 "
echo "###########"
echo ""
read -p "Press any key to continue... " -n1 -s

docker rm -f nginx
docker volume rm eval_web eval_log

