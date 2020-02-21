Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1450E1684FF
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 18:31:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726408AbgBURbc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 12:31:32 -0500
Received: from sonic307-2.consmr.mail.bf2.yahoo.com ([74.6.134.41]:32921 "EHLO
        sonic307-2.consmr.mail.bf2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728385AbgBURbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 Feb 2020 12:31:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1582306290; bh=wAc60N6vLjQHYjkwN/FPZ2a336n5fQmyKBZ7D/QmUmw=; h=Date:From:Reply-To:Subject:References:From:Subject; b=EK/a9dkqvMT60OwtmfwmTVdnX+Zxv/ojtBv0dkE4sW8lbR4/RaE3uD7+7e8kK0VLIqVk9MF8aIZlHDOAqCw2vuOGosBCvjrR3S65UR2F44Fg3LWv8jqV5Lh+E2BZTWJeuhfNNVYEr84u0zZgpZ3VYL9S0ywTdKOYnJkJUq91ytj5p35M+pXPuNSkxpYhE/3GKdpZo/df/dlT4XH4VfEnHyGTlZFFNZNKvkwn70edOi+lmyiy4ZYJHsqlUoPft3VpvE1kOiWAM2n8rH96JomAEGb9UCJdE8pCKX/gnzhZuFxpP70IJQ7bW+54sT2BtULw4etV8o39P3Y6Ssw0M1Rfyg==
X-YMail-OSG: pOnzn1AVM1klAjOtZjSHfrzlIFzmj5GRNpxV.pPfMzEJeGmpPWrAl94ePw45yNt
 zV8pTn_dcUZrgVSCd.ikGoWDLRIxLLLT9XebKVcS1CswNOA8LwtAiUMEbz.FThCSAK990w71d5wc
 .AgPT5d9XAXK5MDR8gxYjy2z_GPxaIgH0tHZNDkyMMtKvhfsFIEOjthjcbxTA4My1J75NciGBDWl
 JUDSpvqO.okV4lVhSE8yaBWY_lFzqLddz3srap2wWykXcba3wSWF31_BM0xA9yeQx1Ww73RqS7qq
 xTyoT13_eFEkXO2o35nFGcfWdy.IOKsoPRoXltsuUWVLwvPIDezZ4hyT3e.7xi7w0XJM2c7I3_s0
 .iher6iabkSG2Odl2aKiU_OtcMnAgRekxxevG6dOxRubgwU.qXvPHqOkJlNo6MlLTP7gmFsOi5eJ
 QInhC7X5VT69bX0kLMs.Bh0mlKhVdJZL3TJrrHPBvCclOkpLcedOJrjKkFGtQxPmVVm8ak.ll7GU
 TWQOGENqIZuaXA3jjlcVuL3jiq9Hm..l8j70ECMXWck94.x230JjnwGPO2UxdEPe_4Oy4XlA9iy7
 TthfusW8zylZPfHDZOWtkE88oyNflse3DanKCLsWVpN1RsRkF.vpoGbM_rRAr_Fi3LIFj.fF.IdL
 B6wwgWctjjJ7gJFZz1k5R9PMV9YYVqfZpEK0mHLO7fBusP8s72B8PszajVQ4AlHV.iz4VntB.CW1
 Qy1lqvEsdLl_EylRXMwKD.SXT12XhC4AIwjRFAKv.10w_zXIhetkVRvMcErAvmdphBoyMiDlZvIv
 p_ypQbIWx20tVw97E746MJY0Gq3M6xYpNewl29o0MWmFsVrqEIgZPtaLnYUtus_ND4mO628724N4
 S0LLD3Q_ObbiT9zUs4Gbfm17WqEK8wPidvw7kYC3BYyRk4guj_9Wg7AR4db1f_xU7wzuOX6g6UfP
 SFJSdge4JLdaqm_.dRu2mPeRF6E8b9hCSoi6hIIegcCK3nzimRZFwCfi3dJbt8e5KEMiOm6fPpMm
 H37MQivxcCKsISZU5X9Dg_5fzjJe256_ic9g8umLBXCSYNpSdL8Kh0VFNxnBWTCnO3bDrUMLW0M_
 OYjsEaJRmeooJShwFtm917SfkefX5diRYB744TtebXlNpIVOJGZsOd3iJOcSSQaVehQ2FPma3Wj0
 bExFtMlsGB0J9Lj9DLZNa7xMCMBfOEt8X0j44mqFW41RyM0.CeN51GvUHjoCF6mQopa5ZaqS9gbW
 HXs5vJ5F9JhOYil_MNk_79iarOF4cbL1I3suaQ80Psg40AKYdUGJuljRYpedV6m8HVF.eCqeB.Vp
 9HUnl
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.bf2.yahoo.com with HTTP; Fri, 21 Feb 2020 17:31:30 +0000
Date:   Fri, 21 Feb 2020 17:31:25 +0000 (UTC)
From:   Mrs Elodie Antoine <mrselodieantoine@gmail.com>
Reply-To: antoinm93@yahoo.com
Message-ID: <564026741.4606749.1582306285944@mail.yahoo.com>
Subject: Greeting from Mrs Elodie Antoine,
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
References: <564026741.4606749.1582306285944.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.15199 YMailNodin Mozilla/5.0 (Windows NT 6.1; rv:73.0) Gecko/20100101 Firefox/73.0
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Greeting from Mrs Elodie Antoine,

Calvary Greetings in the name of the LORD Almighty and Our LORD JESUS CHRIST the giver of every good thing. Good day,i know this letter will definitely come to you as a huge surprise, but I implore you to take the time to go through it carefully as the decision you make will go off a long way to determine my future and continued existence. I am Mrs Elodie Antoine
aging widow of 59 years old suffering from long time illness. I have some funds I inherited from my late husband,

The sum of (US$4.5 Million Dollars) and I needed a very honest and God fearing who can withdraw this money then use the funds for Charity works. I WISH TO GIVE THIS FUNDS TO YOU FOR CHARITY WORKS. I found your email address from the internet after honest prayers to the LORD to bring me a helper and i decided to contact you if you may be willing and interested to handle these trust funds in good faith before anything happens to me.
I accept this decision because I do not have any child who will inherit this money after I die. I want your urgent reply to me so that I will give you the deposit receipt which the COMPANY issued to me as next of kin for immediate transfer of the money to your account in your country, to start the good work of God, I want you to use the 15/percent of the total amount to help yourself in doing the project.


I am desperately in keen need of assistance and I have summoned up courage to contact you for this task, you must not fail me and the millions of the poor people in our todays WORLD. This is no stolen money and there are no dangers involved,100% RISK FREE with full legal proof. Please if you would be able to use the funds for the Charity works kindly let me know immediately.I will appreciate your utmost confidentiality and trust in this matter to accomplish my heart desire, as I don't want anything that will jeopardize my last wish. I want you to take 15 percent of the total money for your personal use while 85% of the money will go to charity.I will appreciate your utmost confidentiality and trust in this matter to accomplish my heart desire, as I don't want anything that will jeopardize my last wish.


kindly respond for further details.

Thanks and God bless you,

Mrs Elodie Antoine
