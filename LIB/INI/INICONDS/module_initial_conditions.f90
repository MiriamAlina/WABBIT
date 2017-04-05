! ********************************************************************************************
! WABBIT
! ============================================================================================
! name: module_initialization.f90
! version: 0.4
! author: engels
!
! module for all init subroutines
!
! = log ======================================================================================
!
! 03 Apr 2017 - create
! ********************************************************************************************

module module_initial_conditions

!---------------------------------------------------------------------------------------------
! modules

    use mpi
    ! global parameters
    use module_params
!---------------------------------------------------------------------------------------------
! variables

    implicit none

!---------------------------------------------------------------------------------------------
! variables initialization

!---------------------------------------------------------------------------------------------
! main body

contains

  include "initial_condition_on_block_wrapper.f90"
  include "inicond_gauss_blob.f90"
  include "inicond_sinus_2D.f90"
end module module_initial_conditions
