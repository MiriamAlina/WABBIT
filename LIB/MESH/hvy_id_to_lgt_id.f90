!> \file
!> \callgraph
! ********************************************************************************************
! WABBIT
! ============================================================================================
!> \name hvy_id_to_lgt_id.f90
!> \version 0.4
!> \author msr
!
!> \brief convert heavy id into light id, requiring both to be on the same processor.
!! That means mpirank=1 has the heavy id hvy_id=17, which is the position of the
!! block in the heavy data array. The lgt_id is the corresponding position in the
!! global list of blocks, the light data.
!
!> \details
!! input:
!!            - heavy id
!!            - proc rank
!!            - number of blocks per proc
!!
!! output:
!!            - ligth data id
!!
!! = log ======================================================================================
!! \n
!! 23/11/16 - create
! ********************************************************************************************

subroutine hvy_id_to_lgt_id( lgt_id, hvy_id, rank, N )
    use module_params

    implicit none

    !> heavy id
    integer(kind=ik), intent(in)        :: hvy_id

    !> light id
    integer(kind=ik), intent(out)       :: lgt_id

    !> rank of proc
    integer(kind=ik), intent(in)        :: rank

    !> number of blocks per proc
    integer(kind=ik), intent(in)        :: N

    lgt_id = rank*N + hvy_id

end subroutine hvy_id_to_lgt_id
