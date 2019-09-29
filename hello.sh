1.#!/bin/bash
echo "Hello World"
echo "hello Beijing"
echo "ni hao "
echo "haha"
2.#!/bin/bash 
ss -l | grep httpd &> /dev/null
if [ $? -eq 0 ] ;then
  echo "httpd软件已安装"
  exit
else
  yum -y install httpd 
  systemctl start httpd
  systemctl enable httpd
fi 
3. #!/bin/bash
for i in  {1..10}
 do 
 ping -n 4 -c 0.2 -t 1 192.168.4.$i &> /dev/null  
  if [ $? -eq 0 ] && echo "192.168.4.$i is up "
  else 
  echo echo "192.168.4.$i is down"
  fi
 done 
