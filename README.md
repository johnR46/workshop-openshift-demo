# workshop-openshift-demo

#path Setup
https://www.youtube.com/watch?v=9A05yTSjiFI&t=25s
ก่อนทำ check version windows 10 (pro)
enable feature hyper-v ไว้ด้วย
1. เข้าเว็บ https://www.openshift.com/try
2. กดเลือก on your computer
3. เลือกให้ตรงกับ os 
4. downloads  พวกไฟล์ crc แตกไฟล์ออกมาไว้ และไฟล์ pull-secret
5. set path 
6. ไปเพิ่ม  network deviceมาอันนึง   device manager 
ึ7 . crc setup
7. ไปสร้าง external network มา 1 อัน ชื่อ crc (ทำใน  hyper-v switch manage) สร้างเสร็จไปแชร์เน็ตเข้าอันนี้ (ที่เพิ่งสร้างมา)
8. เปิด powershell 
9. ไปหาที่เก็บ ull-secret.txt แล้ว cd ไปอยู่ตรงนั้น
10. crc start -p  pull-secret.txt --log-level debug 
11 เปิด hyper v ดูแท็บล่างสุด Network แล้วดูตรง ip ก้อบออกมา (ipv4)
(ถ้าไม่เจอ ) crc stop   crc cleanup แล้วไปลบ network crc , อันที่เพิ่งสร้าง ยกเลิกแชร์เน็ต ลบ .crc ใน user ทิ้ง รีเครื่องแล้วเริ่ม 6 ขึ้นมา
11 ถ้าเจอ ก้อบ ip ออกมา แล้วเปิด powershell แบบ admin ขึ้นมาอีกอัน  แล้ว cd ไปที่ 
 C:\Windows\System32\drivers\etc แล้วพิมพ์ notepad hosts.ics
แล้วเติมล่างสุด  ( ip ใครมัน ไม่เหมือนกันนะ)
172.17.18.118 api.crc.testing
172.17.18.118 console-openshift-console.apps-crc.testing
172.17.18.118 foo.apps-crc.testing
กดเซฟ แล้วออก 
12 crc console แล้วlogin แบบ kube admin แล้วไป สร้างโปรเจ็ค เสร็จละเปลี่ยนเป็น dev ข้างบน ละไป add project แล้ว create sample node ดู ละ create ถ้าเจอ imagepullbackoff ไม่ต้องตกใจ
13. สลับไป admin เสร็จแล้วไป dropdown home แล้วกดเลือก overview แล้วดูล่างสุดจะมี 1 node กดเข้าไป
14. กดเข้าอีกรอบอันเดิมแหละ แล้ว กดเข้าไปตรง terminal  แล้ว ping google.com แล้ว ctrl+c แล้ว ไปดูอันที่รอ Deploy


# Hyper-V related videos: 
Hyper-V : 1-Introduction to hyper v on windows 10 | Introduction to hyper-v on windows 10 
 https://youtu.be/aMYsjaPVswg
Hyper-V : 2-Install hyperv on windows 10 - how to install hyper-v on windows 10 
 https://youtu.be/KooTCqf07wk
Hyper-V : 3-Create a virtual machine with hyper-v manager on windows 10 
 https://youtu.be/pw_ETlpqqQk
Hyper-V : 4-Create virtual switch in hyper v - creating virtual switch and virtual networks in hyper v 



Demo for Deploy (อันนี้เอาแอปชาวบ้าน)
https://github.com/shameed1910/angular8-crud-demo
https://github.com/shameed1910/springboot-crud-api


lab จะแบ่งออกเป็น
# Openshift
1. Setup & Sample Deploy app เพื่อทดสอบว่า Openshift ใช้ได้ 
2. เอา หน้าบ้านขึ้นไป Deploy (web app) 
3. สร้าง db ไว้ ทำตารางไว้ แล้วเปิด port รอ   ตามนี้ แล้ว config https://www.youtube.com/watch?v=XJBzRlOImLk
 <!-- - MYSQL_ROOT_PASSWORD=johnworkshop
      - MYSQL_DATABASE=johnworkshop
      - MYSQL_USER=johnworkshop
      - MYSQL_PASSWORD=johnworkshop -->
ใช้คำสั่ง oc describe svc/mysql ดู Detail 
  - ดู ip เช่น 172.25.91.168


4. เอาหลังบ้าน ( Spring no docker file ขึ้นไป Deploy)
แล้วตอนมัน route path ออกมา เอาไปใช้  เช่น
http://springboot-crud-api-v3-workshop-john.apps-crc.testing/api/employees;

6. ทำให้หน้าบ้านกับหลังบ้านเจอกัน


# Jenkins 
1. ผูก git Repo หน้าบ้าน,หลังบ้าน กับ jenkins (เมื่่อแก้ให้มีการ ทำงานเป็น pipeline) แล้วต้องเซ็ต  Jenkins   แผนพังเพราะ Deploy ไม่ผ่าน ไว้ก่อน
https://www.youtube.com/watch?v=976MEDGiPPQ Deploy Jenkins ก่อน
https://www.youtube.com/watch?v=54_UtSDz4SE Deploy app 


# JMeter
1. ทำ Load Test Sample ยิงหน้าบ้านที่เตรียมมา 


