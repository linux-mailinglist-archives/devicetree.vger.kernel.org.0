Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 74B8BCDC91
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2019 09:51:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727032AbfJGHvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 03:51:39 -0400
Received: from sonic301-30.consmr.mail.ne1.yahoo.com ([66.163.184.199]:39869
        "EHLO sonic301-30.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727028AbfJGHvj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 03:51:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1570434697; bh=tPdyM4f7Tq8kspt5syr9wxbiHLUxanV8lkCr2Pkkkas=; h=Date:From:Reply-To:Subject:From:Subject; b=DbL/UFCbRIjNXJw/p2NlV4jPdKCkjMvJTZWNwF/a+a9YDRskmhi3PWLCJamdoPsgJffz+rRTmnnB5AxL7EhXvxzZRoy2w1SZgk6h/z/O8mknXNxOB3nenG+6KUdYoiU6BozrAdQrJkFbcG+1A5fgUnjnEV9ArbjRsFZgraN+75TE+vcDiWmysyg7BL3zevkINsMOMwjlvygsmzjyZjD/ClljMSRZ2QYW/nEXAj5FacAYuuhe30fVH6JFYQMOBrYt2NjD+N07S9dVFPNHv5eaZ9z0Cat2Ri3SRk3x8+VNn+dJzcuY7VCeYjGiznUxemsesHzO6SMdafCRI+5GAm9uEw==
X-YMail-OSG: 8XIwmMUVM1kpfVfaCkLZkNqybGItW44t2nfcqd.7RL1Cg_v2sM958Q2OWE7tNVJ
 AO96q4s95KDrNFQ9_pw4LN2J2WFRMEv73IM4Ked63tXBH4ByFVvOqe5pQlRkPYO8jFaOLKEsVAKT
 5kyGb6aIskwRpeyI.0AHi0OHlMwvsvxvnt94UrFrktzhSjs2hsSWgvcsrUc1lqqokoa_D94lfFjz
 1r9vZ3JKEoJ8bMLSnoZnmbn_ul0sw9DCvWfPMU.U6sRGKkxy1D6p6yixc.QnWzcQ8HEEdCsR27vu
 GgsjAVd._SZdG0zAcyes1eWJV.vDaTMRQtc1reNZAMApu73Ohx.1FoQNVf9bSM2q3uo0CM52CnmW
 aE0S9yK0Ej4KUge3iYO_Sqn5PRjTOFeVd5zPRXMWNkbWgSicfeUe1718CosPnCfkGsA9CPlLJZ2v
 uHLpg3L5fbdLpiwpPaG7TUePGXbfSFrTHeF5D3pXzAQYNFdTmN2lt1PlakEZRZSGiAlmj4DoGn.S
 9aFqES2g8mqH2TJcsxCB_FqnyycCljqfB2zTeQJS5yFadJoDj9AW28FJhPGCG7p06PoJt1nNO4_K
 Tfe5gvQKfdm.PTu6wTJLqOq4DmBaV0PjHa4OAmCOvcgyzGiol.Ya9dgQDYwJ5.USEQM1g30Gq5Yb
 JGS2XUATTjUqsrc4QnRKTMa0xi96Qle2baMG.AU8wVG7W.Qqh8fTKdH49n7Cqlo09.6depD8KRKU
 LXRfM2pmQKA__48lnj6X8JGdZ.BEXTy2zN79zivwijjyXv8dL6J_BVeH3btHP_mMux4aTXCVzT84
 qn1hmjnbYrQvWHMwjWc22K.g5iBvhBxMKS0jzWcai2sTRTt_rjQXYEtaGnyufL0yp19V.tEh7z9Z
 AJBChfkDDrb85icIC2cbjO9WapWRV2OPCpmIvwBVjqM18FQgKOmlMgPbGBDIPL61YS5mXFkfzC.5
 nVUeswUPm.W6DSUTwCaUefHwNeZKmOmmYAYH2ijCD4mKA9QkvIiqYa2DJeuIOrdCmj9dRhHT6ORc
 91IFKztO2sCbLAkPEYN0p704iQFNgXfWWKCqotK0Y0u_wxd7CJIkmllwXCs1PEfIl1PEmwrKZrgm
 l3wIhV.cqntqMhu7CPm_wFSi4_hbD.aRINZ1PrhkkNZejLpmLzMsaN.MPvPoD7wxOQg8.zioNJ1y
 .P1r6aXxYYV1mv6ePlsvP4QtTInS93iq4DbtGtNgjAOkNFPMQAZq92TTeLOLQ1JppwndMryQTHj5
 N0g6yPsZQXxH5QgwXiQWMSLnEU3CXBrEqA7lw3CNOPPNDFUddxhR46RCBOPZSq0I-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.ne1.yahoo.com with HTTP; Mon, 7 Oct 2019 07:51:37 +0000
Date:   Mon, 7 Oct 2019 07:51:36 +0000 (UTC)
From:   Aisha Gaddafi <aishag044444@gmail.com>
Reply-To: gaisha983@gmail.com
Message-ID: <565038438.4576837.1570434696678@mail.yahoo.com>
Subject: Dear Friend,
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear Friend,

I came across your e-mail contact prior a private search while in need of 
your assistance. My name is Aisha  Gaddafi a single Mother and a Widow with 
three Children. I am the only biological Daughter of late Libyan President 
(Late Colonel Muammar Gaddafi).

I have investment funds worth Twenty Seven Million Five Hundred Thousand 
United State Dollar ($27.500.000.00 ) and i need a trusted investment 
Manager/Partner because of my current refugee status, however, I am 
interested in you for investment project assistance in your country, may be 
from there, we can build business relationship in the nearest future.

I am willing to negotiate investment/business profit sharing ratio with you 
base on the future investment earning profits.

If you are willing to handle this project on my behalf kindly reply urgent 
to enable me provide you more information about the investment funds.

Your Urgent Reply Will Be Appreciated.

Best Regards
Mrs Aisha Gaddafi
(gaisha983@gmail.com)
