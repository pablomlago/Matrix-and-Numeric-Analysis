module chol_interface
  interface
    subroutine chol(a, deter)
      implicit none
      real(8), dimension(:,:), intent(inout) :: a
      real(8), intent(out) :: deter
    end subroutine
  end interface
end module
