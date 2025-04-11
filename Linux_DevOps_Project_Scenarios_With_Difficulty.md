# 🛠️ Linux DevOps Project Scenarios

## 1. Web Server Auto-Deployment Script  
**Difficulty:** `Easy`

- Install Apache or Nginx.
- Deploy a static website from a GitHub repo.
- Restart service on failure using a loop or systemctl.

## 2. Service Uptime Logger  
**Difficulty:** `Easy`

- Ping a list of IPs/domains and log their availability every 2 minutes.
- Skills: ping, date, cron, echo, >>.

## 3. System Resource Notifier  
**Difficulty:** `Easy`

- Monitor CPU or memory usage using top, free, uptime.
- Send email or terminal alert if above threshold.
- Skills: mail, awk, uptime, cron.

## 4. Daily Cron-Driven File Backup System  
**Difficulty:** `Medium`

- Archive /home/<user> into a timestamped .tar.gz file.
- Push the backup to an S3 bucket (if AWS CLI is configured).
- Skills: tar, aws s3 cp, date, cron.

## 5. Git Auto-Commit Logger  
**Difficulty:** `Easy`

- Track changes in a project folder.
- Automatically commit and push changes every hour.
- Skills: git add ., git commit -m, git push, cron.

## 6. Log Rotation Simulator (Custom Tool)  
**Difficulty:** `Medium`

- Write custom log rotation for a dummy app that logs every minute.
- Archive logs > 1MB into a /backup folder with timestamps.
- Skills: find, mv, gzip, basename.

## 7. Package Audit Script  
**Difficulty:** `Easy`

- List all installed packages.
- Check versions and output a summary to a file.
- Skills: apt list, rpm -qa, sort, tee.

## 8. EC2 Post-Launch Configurator (Cloud-Ready)  
**Difficulty:** `Medium`

- Configure hostname, add user, install common tools (Docker, Git).
- Set time zone, locale, and create a motd banner.
- Skills: hostnamectl, timedatectl, adduser, apt, yum.

## 9. Local Docker Cleanup Agent  
**Difficulty:** `Easy`

- List stopped containers and unused images.
- Ask for confirmation before deleting them.
- Skills: docker ps -a, docker rmi, docker system prune.

## 10. SSH Fail2Ban Style Intrusion Logger  
**Difficulty:** `Medium`

- Track failed login attempts from /var/log/auth.log.
- Blacklist IPs after 5 failed attempts (logging only, no firewall rules).
- Skills: grep, awk, sort, uniq, iptables (optional).

## 11. Log Directory Cleanup + Rotate  
**Difficulty:** `Medium`

- Detect if /var/log exceeds 500MB and rotate/zip old logs.
- Skills: du, find, logrotate, gzip, date.

## 12. Mount Validator Script  
**Difficulty:** `Medium`

- Check /etc/fstab entries and ensure all are mountable.
- Log errors if mount -a fails.
- Skills: grep, mount -a, blkid, UUID.

## 13. Inode Usage Analyzer  
**Difficulty:** `Medium`

- Scan directories for high inode usage.
- List top inode consumers.
- Skills: df -i, find, stat, sort.

## 14. EBS Expansion Script (Cloud-Aware)  
**Difficulty:** `Advanced`

- Resize EC2 volume and expand file system.
- Skills: lsblk, growpart, resize2fs, cloud-init.

## 15. Disk I/O Monitoring Reporter  
**Difficulty:** `Advanced`

- Log I/O wait time and top disk-intensive processes.
- Skills: iostat, iotop, pidstat, tee, cron.