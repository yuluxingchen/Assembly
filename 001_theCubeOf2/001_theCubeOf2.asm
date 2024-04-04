assume cs:codesg; 将codesg代码段与cs寄存器关联，以便在访问段内变量时程序可以知道用哪个段寄存器

codesg segment; codesg 代码段
start:
    mov ax, 2; 将2放入ax寄存器中
    add ax, ax; 将ax寄存器中数据自加，即 2+2，并将结果放入ax寄存器中
    add ax, ax; 4+4

    mov ax,4c00h; 调用INT 21H的4CH号中断
    int 21h
codesg ends
end start
