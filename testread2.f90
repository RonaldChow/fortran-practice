program testread2
! Testread2 is a variant of testread with the difference
! being the do loop to read each line from the coord.txt
! In testread, the do loop is set to loop over all lines
! in the test file. Therefore, the loop goes from the
! first line to the last line (well-defined).

! In testread2, the do loop will just keep going as
! long as the file is opened.

   real(kind=4),dimension(20) :: node, x_coor, y_coor 
   integer :: error   
   open(12,file="coord.txt",status="old")
   read(12,*)
   do while (.TRUE.)
      read(12,*) node(20), x_coor(20), y_coor(20)
      write(*,*) node(20), x_coor(20), y_coor(20)
   end do
   close(12)

   stop
end program