subroutine format_params(param_indices, code)
   integer, allocatable :: param_indices(:)
   character(len=:), allocatable :: code
   integer :: i
   if (allocated(param_indices) .and. size(param_indices) > 0) then
      code = code//"("
      do i = 1, size(param_indices)
         if (i > 1) code = code//", "
         if (param_indices(i) > 0) then
            code = code//"value"
         end if
      end do
      code = code//")"
   end if
end subroutine format_params
