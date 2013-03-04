!  Copyright (c) 2012, pplab (shenyu828@gmail.com)
!  All rights reserved.
!  
!  Redistribution and use in source and binary forms, with or without
!  modification, are permitted provided that the following conditions are met:
!      * Redistributions of source code must retain the above copyright
!        notice, this list of conditions and the following disclaimer.
!      * Redistributions in binary form must reproduce the above copyright
!        notice, this list of conditions and the following disclaimer in the
!        documentation and/or other materials provided with the distribution.
!      * Neither the name of the <organization> nor the
!        names of its contributors may be used to endorse or promote products
!        derived from this software without specific prior written permission.
!  
!  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
!  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
!  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
!  DISCLAIMED. IN NO EVENT SHALL pplab BE LIABLE FOR ANY
!  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
!  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
!  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
!  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
!  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
!  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

    integer function lowBound(m1, m2, p)
    ! find the low bound of two adjacent number in a periodic series [1:p]
        implicit none
        integer,intent(in)      ::  m1, m2, p

        if(m1 == m2) then
            lowBound=m1
        else if(m1-m2 == 1) then
            lowBound=m2
        else if(m1-m2 == -1) then
            lowBound=m1
        else if(m1-m2 == p-1) then
            lowBound=m1
        else if(m1-m2 == 1-p) then
            lowBound=m2
        else
            print *, "ERROR! these two numbers are not neighbors:", m1, m2
        end if
        return
    end function lowBound

