sudo su
echo "fastestmirror=True" | tee -a /etc/dnf/dnf.conf
echo "max_parallel_downloads=10" | tee -a /etc/dnf/dnf.conf
reboot

