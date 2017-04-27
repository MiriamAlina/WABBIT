!> \file
!> \callgraph
! ********************************************************************************************
! WABBIT
! ============================================================================================
!> \name: init_random_seed.f90
!> \version: 0.5
!> \author: msr
!
!> \brief initialize random seed
!
!> \details
!! input:    -                  \n
!! output:   -
!! \n
!! = log ======================================================================================
!! \n
!! 23/03/17 - create
!
! ********************************************************************************************

subroutine init_random_seed()

!---------------------------------------------------------------------------------------------
! modules

!---------------------------------------------------------------------------------------------
! variables

    INTEGER :: i, n, clock
    INTEGER, DIMENSION(:), ALLOCATABLE :: seed

!---------------------------------------------------------------------------------------------
! variables initialization


!---------------------------------------------------------------------------------------------
! main body

      CALL RANDOM_SEED(size = n)
      ALLOCATE(seed(n))

      CALL SYSTEM_CLOCK(COUNT=clock)

      seed = clock + 37 * (/ (i - 1, i = 1, n) /)
      CALL RANDOM_SEED(PUT = seed)

      DEALLOCATE(seed)

end subroutine init_random_seed
