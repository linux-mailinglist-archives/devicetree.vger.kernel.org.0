Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 770431E9903
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2020 18:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728105AbgEaQmF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 May 2020 12:42:05 -0400
Received: from sonic316-11.consmr.mail.bf2.yahoo.com ([74.6.130.121]:36687
        "EHLO sonic316-11.consmr.mail.bf2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726193AbgEaQmE (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 31 May 2020 12:42:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1590943322; bh=y+XIVS7SKTb+IBkj0L6Z9GQ1n6QzaX6zsFN5MXaDh3M=; h=Date:From:Reply-To:Subject:References:From:Subject; b=Pv8hJTtlEbyVt5J1MzajQucPPIL/403P+OwBQBKFvTOWE8Slv7D68WRBIMCLswvyJ0WRutHOAtpI2pyO+qhU33Ahid72QyD0JRhl3/SNrmsxf2hbuvCCSJq52DqiODNj6Gh/lvEHJvcyBlr/8Gxr56uEModQjWrAmIFnRPaTob/a5WAG/l0tpzCo6S32PFLw+p7Bockb4wnISkj5Kx8LjP1onfbKXIWgmedvwisuUZRI2twYfOPy/8zOnSLr2rl73THe+o/ZYU8kWfNanowom8z8s9w+hbr7kOrytC+hbSJs1JUFzGr41elXXeFK83evyXbK556KulLv3cgG/0kdMw==
X-YMail-OSG: PpmdfaEVM1nz2s2zHjpCchRrCYEozgg3D0aI.cNfQGXhj9FJ4i6hEZsCjU.iPnF
 0CvFXYFIuk6J_eYwDsoaLB98cgzO1jK6wME6XQ3zesm9lVHCVcmF6G5NNVcAMpvArAWhozVR4Pv5
 fdaMeHBvHuGNEVZyEBkGkJjH0z7X.TUyEK_MicDeNpikXNniSM86NEWwKHLGcTnJ_xM9WaGy1Jg2
 C4O4yCXAJp6FlqqyNULJTDIdwsmC4UaBX1FFw4j_eCCebP7W2nVjWfDsU6n2DWK5tyPADSkEhY7W
 3LS6xiQnYGqYYEzHI12zMd0JIKsXUN.eUp8AN.77eBzRz.POr7SQ4bWjiw1w8bENEnw.yU4qhMha
 cp2VcqL_kTEhpk7lKEgR6MCHI1ordtWLSXFvcEswbWhs2Zd4REiw9hMLzUp5eRT.U.oK9.iBDyyZ
 dkXMx8yKn5IRfaatGA1StXKwWV4GfUGm6MDnNPQpS1oVMjc19y10sdMPONLavRcfXlTw7EVEQh1c
 ob4IDIivBCLyUTdJvBOqeWQzqJVj9l5V.Xw_Xdhn3rCGq9K5idS5XiewkMTNyOm8yb721Clku_hj
 ZB0FjSAj8XJhnttf8187uKS41L2a.ChhgPIsvJxfjjtt.tEvCALERkT1Ml9.FIyKW_HRPcuajYSH
 H3csqG9g05WBOOTjYucQ9hfkY6XU3rIS1oFJkV5fh5Mq69flcgZHCO82XaZcCZus46I6lnSlz3gv
 tIqwTMv0T.QqoXo.l1Zq34aM.GDYq6F20q2yc5dpcniCpqarMRJbo4FtWswJNS_Nr_8OikiLTcrt
 YdoIg.LVuPNQWRcHVZTE9bOzZ2enaKbMVyq9JRSmhXX3kXpXZI5fdoIW9RBNxPKf_hjb96QUAyau
 bFj7fsa9sqwwHZjDEWficjgym4T54dPhcwDf.Xx_eKoIjMc6er4SNed8g.wyRY543d4mck27b4Lm
 ymuvvn08HOE2bG6CoHxU1RF0Tku2ZcV5oygmcGJHxhXLvbV4EV8TQYSRBSuE7ZFZhkkSH.yaVSSY
 6oggfIm7zvy9QPrZ6e423tFzvFE3CSW6it4xF_NfjkZ.eJQOyeLKmR92JCmV0PTOwS_rX7Ltji9V
 I9iFOUSgsHFvyc00avD3ghhdWgPLRQodSG7.ErpR0PQvM9YMzY__rbSx9m.3a0LmIr2gvITZKu8e
 H0MzJz5zdcwf7q7yuLc6ommAXKOe9S0fC4uyx9MsBqJ8WGexv8MqZFGg_ZOtfq63a1wSyz0rRSZg
 ymWSrVg7Tq4wV9ePCy1BWtRo_rm50sPOjihixjtEDcmlfUdKUP8rA4M7D3LgD7nX8aWRK0swkT7M
 FQIo3CYol.WVywcPpyJ._utCl6Ig-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic316.consmr.mail.bf2.yahoo.com with HTTP; Sun, 31 May 2020 16:42:02 +0000
Date:   Sun, 31 May 2020 16:41:57 +0000 (UTC)
From:   Ibrahim Tasha <ibrahimtasha08@gmail.com>
Reply-To: IbrahimTasha12@gmail.com
Message-ID: <444320476.317135.1590943317808@mail.yahoo.com>
Subject: Hello
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <444320476.317135.1590943317808.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16037 YMailNodin Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Hello
I'm "Mrs Tasha Ibrahim" married to Mr. Ibrahim( an International
Contractor and Oil Merchant/ jointly in Exposition of Agro Equipment
) who died in Burkina Faso attack, i am 64 years old and diagnosed
of cancer for about 2 years ago and my husband informed me that he
deposited the sum of (6.3Million USD Only) with a Finance house) in
UAGADOUGOU BURKINA FASO.

I want you to help me to use this money for a charity project before
I die, for the Poor, Less-privileged and ORPHANAGES in
your country. Please kindly respond

quickly for further details. contact my email [ ibrahimtasha12@gmail.com ]

Yours fairly friend,
Mrs Tasha Ibrahim
