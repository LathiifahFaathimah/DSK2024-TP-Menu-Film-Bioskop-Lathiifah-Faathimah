.model small
.code
org 100h   

    start:
    jmp mulai
                  db 13,10, ''     
    film          db 13,10, 'Pilih Film : $'     
    
    
daftar            db 13,10, 'Film Tersedia: '
                  db 13,10, '1.KKN Di Desa Penari (Genre:Horor) (Durasi:130 Menit)'
                  db 13,10, '2.Modal Nekat (Genre:Komedi) (Durasi:118 Menit)'
                  db 13,10, '3.Laskar Pelangi (Genre:Roman) (Durasi:125 Menit)'
                  db 13,10, '4.Insidious (Genre:Horor) (Durasi:103 Menit)'
                  db 13,10, '5.Avatar (Genre:Pertualangan) (Durasi:192 Menit)'
                  db 13,10, '6.Venom (Genre:Extreme Metal) (Durasi:109 Menit)$'  
mulai:
    mov ah, 09h
    mov dx, offset daftar
    int 21h
    jmp proses
    jmp error_msg
error_msg:
    mov ah, 09h
    mov ax,offset error_msg
    int 21h
    int 20h   
    
proses:
    mov ah,09h
    mov dx,offset film
    int 21h
    mov ah,01
    int 21h
    mov bh,al
    
    
    cmp al,'1'
    je hasil1
    
    cmp al,'2'
    je hasil2
    
    cmp al,'3'
    je hasil3 
    
    cmp al,'4'
    je hasil4
    
    cmp al,'5'
    je hasil5
    
    cmp al,'6'
    je hasil6  

hasil1:
    mov ah,09h
    lea dx,teks1
    int 21h
    int 20h
hasil2:
    mov ah,09h
    lea dx,teks2
    int 21h
    int 20h
hasil3:
    mov ah,09h
    lea dx,teks3
    int 21h
    int 20h
hasil4:
    mov ah,09h
    lea dx,teks4
    int 21h
    int 20h
hasil5:
    mov ah,09h
    lea dx,teks5
    int 21h
    int 20h
hasil6:
    mov ah,09h
    lea dx,teks6
    int 21h
    int 20h
    

teks1    db 13,10,' '
         db 13,10,'Anda memilih Film KKN di desa penari'
         db 13,10,'Selamat Menonton!!!$'
         db 13,10,'______________________________________'
teks2    db 13,10,' '
         db 13,10,'Anda memilih Film Modal Nekat'
         db 13,10,'Selamat Menonton!!!$'
         db 13,10,'______________________________________'
teks3    db 13,10,' '
         db 13,10,'Anda memilih Film Laskar Pelangi'
         db 13,10,'Selamat Menonton!!!$'
         db 13,10,'______________________________________' 
teks4    db 13,10,' '
         db 13,10,'Anda memilih Film Bila Insidious'
         db 13,10,'Selamat Menonton!!!$'
         db 13,10,'______________________________________'
teks5    db 13,10,' '
         db 13,10,'Anda memilih Film Avatar'
         db 13,10,'Selamat Menonton!!!$'
         db 13,10,'______________________________________'
teks6    db 13,10,' '
         db 13,10,'Anda memilih Film Venom'
         db 13,10,'Selamat Menonton!!!$'
         db 13,10,'______________________________________'
ret      
