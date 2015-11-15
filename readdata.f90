program readdata
! Readdata is a program which reads in the 
! datafromemuch.txt. One of the column in the text file
! is temperature. The program will only print out the 
! data which is obtained at 300 K (Temperature).

! Double precision is used in the program in this case
! by using real(kind=8) 8 bytes for double precision.

   real(kind=8),dimension(51) :: ef, t, n, dos, s, st
   integer :: error   
   open(12,file="datafromemuch.txt",status="old")
   read(12,*)
   do i=1,51
      read(12,*) ef(i), t(i), n(i), dos(i), s(i), st(i)
      if (t(i) .EQ. 300.0000) write(*,*) ef(i), n(i), dos(i), s(i), st(i)
   end do
   close(12)

   stop
end program