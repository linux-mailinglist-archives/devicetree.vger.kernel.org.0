Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6421230765
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 12:14:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728602AbgG1KOQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 06:14:16 -0400
Received: from sonic310-23.consmr.mail.ne1.yahoo.com ([66.163.186.204]:43598
        "EHLO sonic310-23.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728445AbgG1KOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Jul 2020 06:14:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1595931254; bh=DPYuw2gUpgtMJzJhlH/AVmRGu2wSKCY1C+f8nOCoxu0=; h=Date:From:Reply-To:Subject:References:From:Subject; b=VUEvdKhhr5fh0lK1FdeVyZ/mnmhLDC/46LIuvRfZ9TUrBPZaG39JvfajnnbM91UP558PPL9tMN95Pa66djtvNGNyj0UcABK89NYyKWVCKSTaoWguckuFBri/wpeYpcC2KRoz7ijT7QrDPXlqyiz4BznNEtQjQnVAPtD+V8qYCWR2Aa5oRWVrVSzZM5ZpZiyjK0DAj5bK+PrLS9zQtBzj7a6FGQUEbLuLA1HRxuK4vJq1XcwPQL27pUYr4R7YJFzW8fAK3J3qxvLsLrlKZfX+lZ/O5NaCJjKsyjdhWD7sp45eASOc4dzZx+Kl7WIL++YeA+ZN/lq8flC41noQnaTi7w==
X-YMail-OSG: baHPUUYVM1lnfQ3GIWX9pHmvuH2.oFDZR75C9Zf44IH0Vqc4yL7qo7b4blx5ln.
 5D1eq6XbYPBp_o01EKK8If1w.ZA.w6eURINubTcNc0r005DrndSSxD.QbNU7ZGTud892mkV9iDd_
 dN9dh3no2MctuOmj3LOYYsb4oP8ilDdu4LoE9jf5Gh9gQKwNJ7kcQOtQf8jlLmNlDb4y3zSA161L
 RKJHnABfpinUhBLKk9LCEs9JQm5iw2gsVb0cZ4UgLkEnJmwM7ffYMHVNpyK4eZriQWcjio6hj0ll
 tSgthcKrPnOpHRul1TMzC4MefzSJjl3vvRNih1oDkI3zgOGCOh2xwFiC2HyOve5D.y3bw61Jz0iQ
 AfeqQAlgOktCdG93Q_j3uHJeRYCsfV3uaQ0pLiLor5fIlRZRKQSWiV0xIiyw8EIbMZKZE_YezVrB
 3Qcnkn.S2lBYg_rv37ULOkDCXjAXCrx58rBdkt7tJytQ0CQiYv1zhgd6ccL8B3b5EoHvjTxPTl.L
 _MsrCzZh4F8mk7fR.CilpeHapfg6Anmxkwhdp4DTFRmrNWuiOYbOO.3on94sej1tEBrdbjNJrt4H
 cKdXECE50iJzOu2ay1H1H9p3MtQHWsr210dotFy_QFvnhuIXpjUXjgjgeX56rbKIvgCOUNeM3fbY
 KJmu_wulhP5Kk00uBTgtHmDbB31hfRbJDAQ2UMIiwRY4SaBZeL7TGkPjZfpIdW4fQGkA29BRwzGG
 yCx0c_Czt_FJ0WBoWIUPvCuYw_9Fq9ok_LB6lgobaPx2ikB5lKKfxO_x2zMEzPltaJMrZ15sf4pM
 N2zyuznpLiylAiQJn5uwZmXQUqTmLBnVk1Tf93Y6PWDjZnkCIWmTMZiYjBsT5N2fea9Ulw7mkH7Z
 I3Lhujq2yZaefx9hAGCOrAHPMP08BsEumU2yup3eT0PmpcIkCRtaPLkXmVcRI.fYrX.ev_.mWmD.
 nxO.J9PPZhQQbQqUVu8eoi9AYNV61IDCzdZdYNXY3hr1s5rBb.M0JG5SYyxRhZveVVmaA4hLKjqc
 NM0UOmO94YEZ_uXecKWNAaC5sjxHRbdg7_qS0NQHmhnUo1Y.6zLp0DDa9d9GlAxCs7oaVvLQZsoG
 y3lMTLvBAbUJ.APIDVOAjU8Rp493d54dZ8W70BW4DEyd2IFf0krTVpq29KzpG.SkZVo0inB8hUym
 cTBLz1XwKbGCokpbah9RsRNceydlHjf7t9G4.ekVXEJIp8SeSc6RiDSxfWh_yVmxrlnEuo8uikiQ
 DPKIhda7nCmzxZlSXoeoT0kA6u.eYs.NLOD885ER2DaJRd444uZbfXnWVU0YrxIdZa2q2srksUg-
 -
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.ne1.yahoo.com with HTTP; Tue, 28 Jul 2020 10:14:14 +0000
Date:   Tue, 28 Jul 2020 10:14:12 +0000 (UTC)
From:   "Mrs. Mina A. Brunel" <brunelminaa@gmail.com>
Reply-To: mrsminaabrunel653@gmail.com
Message-ID: <46316826.8220761.1595931252392@mail.yahoo.com>
Subject: My Dear in the lord
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <46316826.8220761.1595931252392.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16271 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



My Dear in the lord


My name is Mrs. Mina A. Brunel I am a Norway Citizen who is living in Burki=
na Faso, I am married to Mr. Brunel Patrice, a politicians who owns a small=
 gold company in Burkina Faso; He died of Leprosy and Radesyge, in year Feb=
ruary 2010, During his lifetime he deposited the sum of =E2=82=AC 8.5 Milli=
on Euro) Eight million, Five hundred thousand Euros in a bank in Ouagadougo=
u the capital city of of Burkina in West Africa. The money was from the sal=
e of his company and death benefits payment and entitlements of my deceased=
 husband by his company.

I am sending you this message with heavy tears in my eyes and great sorrow =
in my heart, and also praying that it will reach you in good health because=
 I am not in good health, I sleep every night without knowing if I may be a=
live to see the next day. I am suffering from long time cancer and presentl=
y I am partially suffering from Leprosy, which has become difficult for me =
to move around. I was married to my late husband for more than 6 years with=
out having a child and my doctor confided that I have less chance to live, =
having to know when the cup of death will come, I decided to contact you to=
 claim the fund since I don't have any relation I grew up from an orphanage=
 home.

I have decided to donate this money for the support of helping Motherless b=
abies/Less privileged/Widows and churches also to build the house of God be=
cause I am dying and diagnosed with cancer for about 3 years ago. I have de=
cided to donate from what I have inherited from my late husband to you for =
the good work of Almighty God; I will be going in for an operation surgery =
soon.

Now I want you to stand as my next of kin to claim the funds for charity pu=
rposes. Because of this money remains unclaimed after my death, the bank ex=
ecutives or the government will take the money as unclaimed fund and maybe =
use it for selfishness and worthless ventures, I need a very honest person =
who can claim this money and use it for Charity works, for orphanages, wido=
ws and also build schools and churches for less privilege that will be name=
d after my late husband and my name.

I need your urgent answer to know if you will be able to execute this proje=
ct, and I will give you more information on how the fund will be transferre=
d to your bank account or online banking.

Thanks
Mrs. Mina A. Brunel
