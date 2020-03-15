Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9478E185C0C
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2020 11:47:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728278AbgCOKry (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Mar 2020 06:47:54 -0400
Received: from sonic316-22.consmr.mail.ne1.yahoo.com ([66.163.187.148]:35098
        "EHLO sonic316-22.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728234AbgCOKry (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 15 Mar 2020 06:47:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1584269272; bh=7bAj2aTmdt2qZuhBQReQcDKGCSJd8LlC9EcZcjUJr8M=; h=Date:From:Reply-To:Subject:References:From:Subject; b=EcyK20Yws9RMUO23L/qYSwnYY/uEfAmjzpLNZ6wAGYaBCq8pjep8d6TSXqXp0b9yA4tPLOG0jkBi8+e3j3ZP7pxbcEF89/8j7PCVZ1OOSdSoazwHWEUqghffm5DoMISNVv2MUYSiuo/Th2YEx4aSvX93pAmBWqONWQQyKIWdMmwikB7NXPfXEr25ekESjKk2Y96xEE/+orrkKTX7XMbV7AI0oo0KRjK41SKZ+vskNoHHKShCVUMVNtR+bCcFoiYw6itkFd4yD/7q0bz9rkIqCz9SdtOIVebTE0lbEedp2X7k/YF46mF2Xdp9y6crfMMmpetLotWXOOLb4C+oE2Y7zQ==
X-YMail-OSG: dtHFHawVM1n.B2McmTcgtIDwNFWEJPN.tI7PklDTDk8MqNreZjx2dUMHDpRiNG7
 Mb3lHg_O04z0RTcyGzr6qrqNu4fHm3BXr.HhRVog4VG1neiKcZHYeiwqwaCAuLprF3mxIGwHe.aY
 0AMuhya8ouCWDj2XZo1ST0V_9vGdgO991dV24up50dhEMUEFPz78XSSP_YAbkqlNuOO4CH6Jnd0Z
 vvBpa7oH8HKGj8I54Kqc_xqhG8gZ4cpH6hvruvR.H9zkxJFStgx36ZdWniQsPNvlnSfxgbTueZW8
 _ibKaDARJYGXtWyUqfu51qrZRBkh39OBAxEBLFaomdby1rFYOP85v8j4IH3MkkNOsQt.Fo0bRQGk
 EwGlEj1gaIO5h7HxBUzvE0VAh375L1p11Ol0sxVzUII6z4_f487wqYsWz8boaU3C373f3ayO6t1b
 d0M23UziSOavtIYZKr5HPkNKE85ayC.IO45SR9qVOmJf4EZQgLVymCl0gz_NmY0RcODg3rrfIZXW
 9BQKXggXzZAL67hxEsfoDAfp4K_L_hoJe0ZxcISnZwIoUcDwpaSV2OtwpYyv5dGjK.IrDGhcW6O8
 3e.psUHx12u6_5VuGhnBJ3tDechp31wOhZpu_lVayQD.jEaJjEawKSanI1wfjCllqSM7Ys4VHMmF
 x5UnchTCazEDekdcVf6nI.eLoePYwv6rczjuQMdyNc09kd3E7EPWCV3e5VqU.RcNAz_sqbEdCWer
 dv5iGlrnoCnm8.i6XezI9RVNHdmYo5ewi5NygxQfZC0SI43Ghu8siqVPZLzZDi0hCI.XIp0.1UiW
 Ljp22jbr9EptnE4zPtA_BG0TNCZkmCbM4n07m86vFPIn8a42kdxP8nT4WhgPc6F_NCeOh.UtNTdM
 3rOKkM1VE7EJmuRJHxFDWcWWiwT37Z11vkYyxeTSbjto.2Z4nxGyjolF8wFRPxmm2d8JYhGYb0y6
 9uqzE1FKHBkj_AbRoPi5g38fwHeG4S8IokxGY_zKxwsieO_eB7scee.3EEUZl08qC3GJvpuM2hZw
 LJOYdtNtuGLx3fWRfQEZJUWIYq6KklmoDedDspokJKGISMH03LIOppOYYR2oIgJEbBJd35124YGy
 sMqzxvKt61ag6Ef3EijIWrsDLDEJ2m8Zg9PKaOXbOq.nnWp8Ww301EF.oshKSM7z_D3MIOz2MjFo
 gGGC7sgiy827jTOEPeynO2PoKKZg5U_3JbmqGILU8dIO30rwkjWzTealwD_Qal39qemPCWo87ET1
 YUCoItni1KzmHG8lqL6iq4GzwtrH6ssxfUQyE0eGx4DWIefEYW543ZbkYjAeq3Io.jbxc.5.cN4Z
 dDg--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.ne1.yahoo.com with HTTP; Sun, 15 Mar 2020 10:47:52 +0000
Date:   Sun, 15 Mar 2020 10:47:51 +0000 (UTC)
From:   Suleiman Abubaker <suleimanabubaker84612@gmail.com>
Reply-To: suleimanabubaker@mail.com
Message-ID: <870126041.844918.1584269271550@mail.yahoo.com>
Subject: Helo
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <870126041.844918.1584269271550.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15342 YMailNodin Mozilla/5.0 (Windows NT 6.1; rv:74.0) Gecko/20100101 Firefox/74.0
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org







Dear Friend,

I am. Mr. Suleiman Abubaker, Manager Auditing and Accountancy Department,Bank of Africa in (B.O.A) Burkina Faso

i am writing to seek for your highly esteemed consent/assistance in a lasting business relationship of mutual benefit involving $18. Million Usd for investment in your country, under a joint venture partnership.

Thank you for accommodating my inquiry, as i look forward to hear from you on this business collaboration and meeting with you soon.


(1)Your Full name:..........................
(2)Your Age.................................
(3)Occupation:.................................
(4)Mobile phone number:.....................
(5)Your Country..........................

Waiting to hear from you.

Your's truly,

Mr. Suleiman Abubaker,
