Linux Server Health & Security Monitor
A lightweight, automated Shell Script designed for system administrators and DevOps engineers to quickly assess server health, monitor hardware resource allocation, and perform basic security log audits.

Features
Live Hardware Telemetry: Dynamic extraction of disk space usage and RAM utilization using native tools.

Security Log Auditing: Automated detection of critical alerts inside log files via high-performance string filtering.

Time-Stamped Reports: Every run produces a fresh report with a standard UTC time-stamp.

Usage
Clone the repository or download the script file.

Grant execution permission:
chmod +x server_monitor.sh

Run the monitor:
./server_monitor.sh

Sample Output
=========================================
LINUX SERVER HEALTH & SECURITY REPORT
Rapor Tarihi     : Sat Jul 4 16:14:14 UTC 2026
Calisilan Konum  : /root/devops
DISK KULLANIM DURUMU:
Toplam/Kullanilan: 5.0G/1.5G (Doluluk: 31%)

RAM BELLEK DURUMU:
Toplam RAM: 235MB | Kullanilan: 9MB

GUVENLIK LOG ANALIZI:
TEHLIKE: Sunucuya yetkisiz erisim istegi engellendi!
=========================================
