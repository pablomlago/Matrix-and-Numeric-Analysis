program sistu_ppal

use datasissim_interface
use lu_interface
use sistu_interface
use sistl_interface

implicit none

real, dimension(:,:), allocatable :: a
real, dimension(:), allocatable :: b
real, dimension(:), allocatable :: u
real, dimension(:), allocatable :: w

real :: deter

integer :: n, i, j

print*
print*, 'Introduce o orde do sistema: '
read*, n
print*

print*
print*, 'O orde introduce e: ', n
print*

allocate(a(n,n), b(n), u(n), w(n))

call datasissim(a, b)

call lu(a, deter)

do i=1,n
  print*, a(i,:)
end do

call sistl(a,b,w)
call sistu(a,w,u)

print*,
print*, 'Vector u (Solucion): '
print*,

print*,
print*, u
print*,

if (allocated(a)) deallocate(a)

if (allocated(b)) deallocate(b)

if (allocated(u)) deallocate(u)

end program