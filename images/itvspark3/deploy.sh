#!/bin/bash -x

sudo service ssh start

if [ ! -e /opt/.initialized ]
then
  sudo touch /opt/.initialized
  tar xzf /softwares/spark-3.1.2-bin-hadoop3.2.tgz -C /softwares
  rm -rf /softwares/spark-3.1.2-bin-hadoop3.2.tgz
  sudo mv -f /softwares/spark-3.1.2-bin-hadoop3.2 /opt
  sudo ln -s /opt/spark-3.1.2-bin-hadoop3.2 /opt/spark3
  cp -rf /configs/opt/spark3/conf/* /opt/spark3/conf/.
  sudo mkdir -p /opt/spark3/jars/ 
  sudo chown `whoami`:`whoami` -R /opt/spark-3.1.2-bin-hadoop3.2
  sudo mkdir -p /var/log/spark3 /var/log/spark3-history
  sudo chown `whoami`:`whoami` -R /var/log/spark3
  sudo chown `whoami`:`whoami` -R /var/log/spark3-history
fi

/opt/spark3/sbin/start-master.sh
/opt/spark3/sbin/start-worker.sh spark://itvspark3:7077
sudo chown -R itversity:itversity /home/itversity/itversity-material
/home/itversity/.local/bin/jupyter lab --ip 0.0.0.0
