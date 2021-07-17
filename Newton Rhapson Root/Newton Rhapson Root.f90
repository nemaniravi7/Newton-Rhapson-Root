!  NewtonRaphsonRoot.f90 
!
!  FUNCTIONS:
!  NewtonRhapsonRoot - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: NewtonRhapsonRoot
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program NewtonRaphsonRoot

    implicit none

    ! Variables
    integer :: i
    real :: x, f, df
    
    !Enter and read the value of x
    print *, "Enter the initial value of x: "
    read *, x           
    
    !Confirm the value of x
    print *,"Initial value: x0:", x

    do i=1,10
     f= x**3 - 2*x - 5
     df = 3*x**2 - 2
     
     print *, i,x,f,df
     
     x = x - (f/df)
    end do


    print *, "The obtained root is: ",x

    end program NewtonRaphsonRoot

