program extract
! Extract the value of the first
! row and print it on screen
 
   character(len=6) :: s5
   character(len=10) :: e5
   open(20,file="extract.txt")
   read(20,*) 
   do
        read(20,*) s5,e5
        if (index(s5, 'title') .EQ. 1) then
           write(*,*) e5
        end if
   end do
end program
