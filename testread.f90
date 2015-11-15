program testread
! Testread is a program which aims to read in coord.txt
! and then printed out the content of the text file.

   real(kind=4),dimension(20) :: node, x_coor, y_coor 
   integer :: error   
   open(12,file="coord.txt",status="old")
   read(12,*)
   do i=1,20

! The loop goes over from the first line to the
! 20th line which is preset.

      read(12,*) node(i), x_coor(i), y_coor(i)
      write(*,*) node(i), x_coor(i), y_coor(i)
   end do
   close(12)

   stop
end program