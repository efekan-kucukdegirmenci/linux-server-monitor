#!/bin/bash
# =================================================================
#  Linux Server Health & Security Monitor
# =================================================================

echo "========================================="
echo "   LINUX SERVER HEALTH & SECURITY REPORT "
echo "========================================="
echo "Rapor Tarihi     : $(date)"
echo "Calisilan Konum  : $(pwd)"
echo "----------------------------------------"
echo "1) DISK KULLANIM DURUMU:"
df -h / | awk 'NR==2 {print "Toplam/Kullanilan: " $2 "/" $3 " (Doluluk: " $5 ")"}'
echo "----------------------------------------"
echo "2) RAM BELLEK DURUMU:"
free -m | awk 'NR==2 {print "Toplam RAM: " $2 "MB | Kullanilan: " $3 "MB"}'
echo "----------------------------------------"
echo "3) GUVENLIK LOG ANALIZI:"
if [ -f server.log ]; then
    cat server.log | grep "TEHLIKE"
else
    echo "server.log dosyasi bulunamadi, analiz atlandi."
fi
echo "========================================="
