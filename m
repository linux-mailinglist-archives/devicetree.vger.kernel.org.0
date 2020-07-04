Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 132BC2147D7
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2020 19:53:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726682AbgGDRxd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Jul 2020 13:53:33 -0400
Received: from sonic302-21.consmr.mail.ir2.yahoo.com ([87.248.110.84]:33576
        "EHLO sonic302-21.consmr.mail.ir2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726669AbgGDRxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Jul 2020 13:53:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1593885210; bh=ZWeDLwf4cGlLDzTwCuOen1zTINlp5j+f2ywobrqBR9o=; h=Date:From:Reply-To:Subject:References:From:Subject; b=OqbUDyjWz4mbLHRBZ3NvJMwS66/pKgdivhYezMop8vN9OVqJeo7UKcQoIU9RJMXzvy2n+iW+7DPmqf/3DYkLDAkcbke2liyNG9ehquzsEdqAB6BkT+RZtLPA8yJkMFV/yjz/WOE9EPq8KrJXcUDS41fGV5OmkqrnBOpMIfptmXnxjZXuH/bsa/xcgRxOgG6AbbU2+8tb4pXzExyiOJ0IqCXL9Y/Rb2YiXl1XKpZhYwiPeGrZVmFPtRBGHMXgGgOV7SpkaBieePO0ttATXQh+fEoAxxHxOcWVXUEqIIJs9qj5VTUF30BjrHsA4XzPFM4wb8/SAjm5IuaZFzWKscAJqA==
X-YMail-OSG: jS7EHDMVM1k55FTGzr5qI9makb9UYU1llwOmoiFNBtEVwTM8Ma8tV7b3znkB0HW
 yBbZHxfjXQZBCzLr3IcF75d.GWkndcNvJEtEUe9.lq7_8TlyZ4t123Hc8X65QyWTI1T4eZM1WaVv
 RTk.BZ975akwRvB6eMOFppQL4ZWSEP7aSIZb_n_5uZxIaBggTO5me16.NCsXc4RuD39PiYVsVBEW
 bW3JeWrP_z96cyfdUji5dqVJ7gi_6z5RAt0igtKlN_TNBdQC2D8MtRi1ISez6gNUd_3S.m8D0SHj
 _H.zIBOqwYJsSCboIvvy905DvkQVQCfUO3z9nI5VKHnicbpxg_a0sFF7FF9CaV2NRdwez560pHsW
 6mG7j5LPfZA_gWLM89M4RKxNK323Os5VDEYZDwpeAY65ewwn8ZN_Q1AywNLkynLfjAWgQOQAmYQQ
 mjHcF9z_jdQYpib319Aryng21NIr472U4ht3_AxeHz9D2QIOlv30g5G16DhmFJu5GMNTiyBEcfnJ
 XNg8W3uA9A9e2Pxi3G7cQCOJDktuVx0OSZ6Ts93AtbvtqqtQd18CwghA7SrWLqQcrXTVLOO4YUAM
 BGjXQb36k30wrj7cIhClSDZu48XyHXB0aSXlEwbSg4iVMuIFex4idaBRDpJMxo4_c4UzEjMhDmDO
 arUKOq6Rae8sALIeRCT4Pl.1tg6.FUCljka19TPg0V9agxDrhAjX4OFeULBTp2gAGju5c3novHl0
 qcCcR4np7WTzH1XZtbzisAe6jBnkzUQNZbfXqEwgYBls74ga_hlwNdEZlPgkebq3YD6BS4uG9v9G
 3wQ92DpB8zlV1VIaK_r2CntjgirIF6WOt4KL70wVMcxBx39Ifrh4DQu00vD5Q0UANQfTHRRK0sZU
 SVhGi11rLJAgQ4fyYneL5CUh5D4hY48WVKU9jfm_GHPmNUKdnEk6.cvbFacxQFKe.F5enQHjqYMI
 yqQiuZg8BufVsinaJYMV_qA2rEFYri3dlDwEr3eRupAOoi3nSKSrmDmD6t_7ksVJrHF2YhB7Sl4C
 42pFfjpuEfnfaQss8xJtDvEXQdNnzF30XKRhrqVIqCVUN776uJ3I6jj0b26fmnI5EYeChO33ruzK
 .vrp_dAi9sFHnrfjyfuGPz5.Xj9z7JSwOkdozCbUHtsq8Ea66Wrh6XBCwUOKIKTupg.WIEAyKee1
 QxqCQepz7g6uNZ_elg_EBff0.2s3YWbC8g6LpYQQac2U_2cULOZPSuVmT2HEO.vcYi8mxJ2uR0Yt
 MWxSyd7yiKwyHFUUBN1muPn_3YkuLKl2UQRkezkJIui3W.8PlW_y3oW5tsEO6smAMPkI-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic302.consmr.mail.ir2.yahoo.com with HTTP; Sat, 4 Jul 2020 17:53:30 +0000
Date:   Sat, 4 Jul 2020 17:53:27 +0000 (UTC)
From:   Theresa Han <serena@lantermo.it>
Reply-To: han.theresa2017@gmail.com
Message-ID: <802138759.4451384.1593885207291@mail.yahoo.com>
Subject: =?UTF-8?Q?Ich_gr=C3=BC=C3=9Fe_dich_im_Namen_des_Herrn?=
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <802138759.4451384.1593885207291.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16197 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ich gr=C3=BC=C3=9Fe dich im Namen des Herrn

Ich kann mir nicht vorstellen wie du dich f=C3=BChlen wirst Sie einen pl=C3=
=B6tzlichen Brief aus einem abgelegenen Land in der fernen Elfenbeink=C3=BC=
ste erhalten werden und wahrscheinlich von jemandem, mit dem Sie nicht gut =
verwandt sind. Ich appelliere an Sie, etwas Geduld zu =C3=BCben und meinen =
Brief zu lesen Umgang mit Ihnen in dieser wichtigen Transaktion
=20
Ich bin Frau Theresa Han, 65 Jahre alt, in der Elfenbeink=C3=BCste, an Kreb=
sleiden leidend. Ich war mit Herrn Johnson Han verheiratet, der bei der Reg=
ierung von Elfenbeink=C3=BCste als Auftragnehmer t=C3=A4tig war, bevor er n=
ach einigen Tagen im Krankenhaus starb
=20
Mein verstorbener Ehemann hat die Summe von US$2,5 Millionen (zwei Millione=
n f=C3=BCnfhunderttausend USD) bei einer Bank in der Elfenbeink=C3=BCste hi=
nterlegt. Ich habe an Krebs gelitten. K=C3=BCrzlich sagte mir mein Arzt, da=
ss ich aufgrund der Krebserkrankungen, an denen ich leide, nur noch begrenz=
te Lebenstage habe. Ich m=C3=B6chte wissen, ob ich Ihnen vertrauen kann, di=
ese Mittel f=C3=BCr Wohlt=C3=A4tigkeit / Waisenhaus zu verwenden, und 20 Pr=
ozent werden f=C3=BCr Sie als Entsch=C3=A4digung sein
=20
Ich habe diese Entscheidung getroffen, weil ich kein Kind habe, das dieses =
Geld erben w=C3=BCrde, und mein Ehemann Verwandte sind b=C3=BCrgerliche und=
 sehr wohlhabende Personen und ich m=C3=B6chte nicht, dass mein Ehemann har=
t verdientes Geld missbraucht wird
=20
Bitte nehmen Sie Kontakt mit mir auf, damit ich Ihnen weitere Einzelheiten =
mitteilen kann und jede Verz=C3=B6gerung Ihrer Antwort mir Raum geben wird,=
 eine weitere gute Person f=C3=BCr diesen Zweck zu gewinnen
=20
Warten auf Ihre dringende Antwort Mit Gott sind alle Dinge m=C3=B6glich
=20
Deine Schwester in Christus
=20
Frau Theresa Han
