program read2ndrow

   real(kind=8),dimension(3) :: a,b,c
   integer :: error   
   open(12,file="2ndrow.txt",status="old")
   read(12,*)
   do i=1,3
      read(12,*) a(i), b(i), c(i)
      write(12,*) a(i), b(i), c(i)
   end do
   close(12)

   stop
end program