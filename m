Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D526428E0B3
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 14:45:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388076AbgJNMpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 08:45:04 -0400
Received: from sonic310-19.consmr.mail.sg3.yahoo.com ([106.10.244.139]:42896
        "EHLO sonic310-19.consmr.mail.sg3.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2388057AbgJNMpD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 14 Oct 2020 08:45:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1602679498; bh=CRaw5qjvdysj6ofHa5UvHJLyMakkOzmjIJezo9NIE0s=; h=Date:From:Reply-To:Subject:References:From:Subject; b=kG8Zrt331elKGmnvE65jABkPWqZ7crKk9uMqu0PQPipmID503S5E4vsypmcyLlHURvdyg9TSJgPx/Idle3LqtZ60mnkLpzFoEQLr6HZ4VUIPycOJfG9WfUW/68uJGq7srzemId70o+PIgPMib6Q/sdIsPpzWYcWgM6gn5WukLO3ht1I1hXWyzTRnmRqZEnCA1um5yVcTAIxs/H6zvNTTcryo43eahINrAAmHP1KU896U4c8afSIKGY8zwaxGrFa2oYSLJDU6MU+EZjF03+6CmPU59EqNYx8P0HsQeQ/j5LkFgEfNcEpTFh8tGvoCv3Sr7mZeZkikxr0pXDFKKQLRPw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1602679498; bh=djHNMEDevT27dpi+O/jx25BETQaL2j+SixLkCr4RCmM=; h=Date:From:Subject; b=sEMgfYq7jZQ5xZHUU3Ptg8/Vso3H+DnS+dpbN91gOXOf46DmSfWq1oTEFMArS3pXn1b6qtVadh/PLst9rSUw9FiWQlbSV4jtwWWG8Dj/WH1LLCPWshpkjKscm85h+fHlqZELdOdHDIeJxMMsVeYpPchjpYmiJYfsGiuSWbv2RVG5R0sZlNbKOeH/0yUI4eWxSl5DMGKvFwbzQHbGspo7xeb6xavUwisKafX+l/kKv6DOWPG8FfPBZ+A90hGI7foQD46yBwPywH4wWzoyLfHl520jEIdsTVQ/25PJXaY7leVbEmxa6jfbE3RhIKy/8xIDdX3Usv0JiTxU9pN3N+0Abg==
X-YMail-OSG: AemPIhcVM1nvAk3x5mP68urmpnmLXzZ7TEfsR2nnDaHva66CEeqr1GbTinhVLeU
 o5d8IqVuO1vHaXtISbcUb1wyaLis5Lm75_s_CGXd3Y2g_rekB2tpcD.RIAuWfT2SHOiR45iQrGU5
 qIBHjRwFnMf.xkPfgdlHSD0sx.WMELlFC_hVHu12Szh0AmcWLGWX0ukoW2iKRqQTTPjAu26MRKmz
 WKcEz8EXP2Lbha1Xb5KEwg8qoFjwSKcu7CQ9grqlmrxLsPmEYe_3qakZhUzUDU5ltNxeLBkdWZvJ
 kyJQL_AGuYw62Tj65U7b1seDqNIOUb0tyDgcXI40MvfpMEy14mZrfJFOvJC74AtFr8r5F0H1gSAU
 emAXlsRApQlipS3Cdeiw8OUiYo.k.79s7tniBfMg4C231JoLcP0e0OTDwp1SsVssYIj3zUCDkoZL
 HghKA5zUrmCHQjBUMfr1adRalLmuoigD5b.UMPBPILlSSY68MbhvSDz3KslNMv8Im0T49iLMdTx.
 erCKFLGtRdbLuVolDAyfKgTs98UPVGKpvdlQ.dBlFapYeLrqbcdE1Zc8v3qn21UCMHV45Ad1bQHE
 UUQulXTiCrD8n4YVkIt_lvYUyx5E4s9yEzSgPtS4NEpdKLWbajVRSnoLSOm56LzaPy1I2gTn0E6S
 krvIZ5DwXrj.epDxnf31aNPkpyVDnJJtmkkQNsr32v_ENA.1v6U3wQw3OenFK88SHwzatXxEoPAI
 38RfW3iRMwmNolTJqNwnVCUldem8.eINX7HYOWF84AcWMP6Si3APfJr8JXjwHwSNEs0AHtQIDOah
 6zC_pcsYwomKr5okiRWhr0bYgWimC7BXaO3DYrz9Cj8dG7RB0gB2hLJJqIva9yEGn1_yl_DYR2r0
 qxnsi2tklhN_p3En3kcowumSTkrAirZ3rzCHfESJ7U5rgOwrOZ7UwZRzJWfgFaoHUXrQuURRQcm5
 bpJu0GNO.jN9sSMrMU2xYycOEtg.x2Jr_txcM9LNBIn9eOo3u2RaGCxFUHHGpuCqfbogwpTxE6xj
 p.u5TxHpy3AVgU88j5OKsEz3llVdEm3Pe8CmEJwv.czrvhleuTg2SbsHJ1sQXsx2Xf51MP7dNQsA
 Dmylyj9LiIIpNoDXaFpwWhcRWRmjgKLA7_0ditr.VaXYrZE7V5wu_ExaMgQzJaQ_TOV9MHFh.nIs
 SNGakMECplh4mZJUuqOlREgbqB44B.lPltx1I9VqUeJtIg4CpCca9GLWEUytONnwF65ze8sK2ruN
 cA8ulY_vbVNtwFf3cxnONsBO_KWd6t5TYE6l_T1cY05swhkKRzhBTRB6mORF3hBGYcljQdJ85JUw
 .BSlQL41lmc_iZ6BOsCvmBlpK_dY1V10Re6DrayaRV2nJLYet45J6QqEI3L.GJMhSIcE_LKgN6yp
 D.vYO1ByRX367uVGAOlNvAJnLL00.w01Tklh7Dh7TQ2u6g_HE
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Wed, 14 Oct 2020 12:44:58 +0000
Date:   Wed, 14 Oct 2020 12:44:55 +0000 (UTC)
From:   Mrs sarah <benjaminsarah195@gmail.com>
Reply-To: benjaminsarah195@gmail.com
Message-ID: <2041818829.558152.1602679495420@mail.yahoo.com>
Subject: My beloved,
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <2041818829.558152.1602679495420.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16845 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org






My beloved, this is Mrs sarah benjamin, a citizen of France currently resid=
ing in Ivory Coast. Please treat it as urgent and important as you read. I =
write from the hospital where I was diagnosed with liver failure following =
an intake of a poisonous substance maliciously given to me by my step mothe=
r and her children since they want me dead. The reason why I contacted you =
today is because I know that my step Mother wants me out of the way so they=
 can expressly inherit my late father=E2=80=99s fortune which was passed to=
 me before his demise.

I have a little adopted child named Andrew whom I adopted in this Country w=
hen my late Father was still alive. The total sum I inherited was $4 000.00=
0 which is deposited in one of the banks here in C=C3=B4te d =E2=80=98Ivoir=
e. My step mother and her children are after Andrew right now because they =
found out that Andrew is now the beneficiary of the said fund.

Dear beloved, please I want you to help him out of this country alongside t=
he money for safety purposes. He is the only one I have and I don=E2=80=99t=
 want to lose him for any reason.

Please see below the disbursement of the said fund upon retrieval.

1) My son Andrew gets 50% of the total sum upon graduation from high school=
 with proven integrity and utmost sense of responsibility.
(2) Give 20% of the money to handicap and charity organizations. The remain=
ing 30% should be yours for the help of my son Andrew.

Finally, I want to remind you that I need your urgent help as Andrew is 14 =
years of age now, therefore guide him with every sense of humility that he =
come of age and be a good citizen, as this is urgent if I don't hear from y=
ou, I might be left with no other options than to seek for help elsewhere.

May Almighty God bless you and use you to accomplish my wish. Pray for me a=
lways.
Mrs sarah benjamin,
