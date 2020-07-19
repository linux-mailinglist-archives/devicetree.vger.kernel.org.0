Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E180A225311
	for <lists+devicetree@lfdr.de>; Sun, 19 Jul 2020 19:30:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726009AbgGSRa1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jul 2020 13:30:27 -0400
Received: from sonic304-22.consmr.mail.ir2.yahoo.com ([77.238.179.147]:33250
        "EHLO sonic304-22.consmr.mail.ir2.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725783AbgGSRa1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 19 Jul 2020 13:30:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1595179825; bh=DPYuw2gUpgtMJzJhlH/AVmRGu2wSKCY1C+f8nOCoxu0=; h=Date:From:Reply-To:Subject:References:From:Subject; b=aS1iMT1iuDx7I1ekhiJMwOCfoy2lC9WTWmqzfTUawG3RLMpBpRwDtytYfgLYbGvAIneLToKfk9KZlEeJ4JrixmI0eBussAB6zPZUXl4zLona6+lM89+mMQxf8Rlmpt6mO3xGEsG8+islnVH0ni8+pjnOBk+dwPjWL/s/KMk5y28tRR18uDrkh1rXyp2Z9xK2N8M3KG34GG37uwv2QdjwJIUHdMjI8KCgaTVYai/rbzUDo3PJEg2Jk9jlA+dZ+ypUDFPmZDtmBeVp2e0Yek5cMvefYGSomteNqVpyHLtPYG75fADTHLY02siXYd5ot5zsIPyHesT2ehDqBlx+2gCtRg==
X-YMail-OSG: tJwUNrQVM1mb.3Ro9BrSz1BZTWImXhWT8AgygQL1y8WMNvBGorhn3cw7WlsEwHE
 D2i1kBx7.MGbJzg6WfaW6rMnaZypGNlJkigfQHuoeek5DySQJ6YWzf6.mefcGkpfUUycOB9gKfM4
 TVJYT4dH9KAYsNvaW2DYlXteBxBNj9Ndh0bGz0.KyAdQbor020XkQyj5ee6GlGgWT4DuH1sy4ob1
 Zh06BHr3xD54aWRJ72VqmTrhORQKPLZiF7xC8AzWVCqAQOxD_2cPzWSq1X6_LHQMnM2KH9eKq8qI
 gfZSJxZkEFZVc7487XPS4KwQk8O.75lHdUmrH0NChNcvXNRG2D1hzy6HspTlN0eyOvuKfD3ce0gj
 DGk7tEGO4kIvRv155rETvS6wY0N4KJm3loAA0AC4yjBJAoOX23Ygat3gyLr.sHtKw1j8uccz.Zbt
 rNQJ4qfoybFCFAwMYQCKFjyhayQJnGaC36nGENMITF0mkfyAgQ246fU5P0o787CT1.YoKMPTCHmd
 vsdehUVSrdHAqxicFmVsD5bDXk_Q3VOZ0Gg7qh_19Yb83I5y6SnJF0OpTwTmPUdCgHblUj21..5f
 sNl7Nq1_K5W5TAZxFRYzYn6U0ygFGx5x8495xXInxYkwHR5wuaQObvRxQtQq.wBhDkx1NDoe8otp
 OiI2GOuTjEeaeel3fB0BYkrHkqwhajfnPBaM1A7LVD9lhHCFM21ipG.D4bhsArYmVPXv5df1hZql
 DlRTdQZfDVWcgKY4wukfs5w7v2bCibSOp6RvLkBbi5u1Tosc0wzXnCKsoUMp7e61O7LRz9v_x7fy
 hKu5o8oI22rgDsQe.YqyBKeLmOHVvQr8CFVpeLYDpiMHM_JrfLKDmMMnD_Lcxb3lLDWibiTNq9Fy
 .G0RPDvjsCZPUIMBgsuaVQ1Vl7.BnKaG52335Eed9za_CiUPGGvzrTID0O7pUcT9HepIu5S4B8t_
 R56lcJXi5RuhF28X9NX3GJtBSajtKtgT7e18dI76RHmNtNB5oUBPIgMum7UJtnLFtql_J2NIJyHQ
 l6CcMPoGXmQYr6FXwIj5CrWjVQidahY.BLKn7aLsVCgbY0NtvQpvLgO9F5bYZFn5a5Glf9wb5jAk
 KBfcC6AoBGBV1yTNmF1TJ5I248fc2h85rKxQ7LDikRW2LvdCItjV7PwH2z0v.Z3_SCaEJPVk_Ii1
 XWhQRShZxsO8BfEX5fPYBicJmDfw0.1injtOKf9ICmornRF1t_zbNFWfwZbdIVsywFAbdkFveZUN
 4m63ArUNL8yjtsVaICo_ebAoaLp6rRQDqLUdBiEctJW8bosCzcvWdhLcjTzLZQUKw_rI6pgVv
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.ir2.yahoo.com with HTTP; Sun, 19 Jul 2020 17:30:25 +0000
Date:   Sun, 19 Jul 2020 17:30:21 +0000 (UTC)
From:   " Mrs. Mina A. Brunel" <mrsminaabrunel2334@gmail.com>
Reply-To: mrsminaabrunel57044@gmail.com
Message-ID: <334738359.5908280.1595179821418@mail.yahoo.com>
Subject: My Dear in the lord
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <334738359.5908280.1595179821418.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16271 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36
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
