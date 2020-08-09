Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B192423FEC7
	for <lists+devicetree@lfdr.de>; Sun,  9 Aug 2020 16:31:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726207AbgHIObJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Aug 2020 10:31:09 -0400
Received: from sonic315-20.consmr.mail.ne1.yahoo.com ([66.163.190.146]:34902
        "EHLO sonic315-20.consmr.mail.ne1.yahoo.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726070AbgHIObJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Aug 2020 10:31:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1596983467; bh=DPYuw2gUpgtMJzJhlH/AVmRGu2wSKCY1C+f8nOCoxu0=; h=Date:From:Reply-To:Subject:References:From:Subject; b=pl/faMOiTYqZsIOwdyAlvoieB/tfXcQA/jdGG7LHwSESys7UMEJh1cCEMqo6tF9LClsejBdb7lOSSJJZd7ZmkNGhj0N58pTPKoiklsbOOAj/Y3B1P4cvpHprRhdMcj/yz5oPb+jTUnTccZIMcVw4C7kMeFbJWoM26RbDTFvNEBbaBJ/oU9AEArm+OJYF7ui2C+S7gHjZuN8N3C6pWzs6LTavnowiuHRAATju93GZkGqySIr/vFfRUCbJwjAIUUu4YmItBqYdqZ3lasikBEbHi6C6r6tKecfATGVPC2rBDAmXeaY/djl3SRqEfO205Q4stcwOqsgTIW5Rt3EoeF8onQ==
X-YMail-OSG: EzM3xJMVM1lrIPBTkaYzrh.8nG5mbsJvPuAsTuDzQKk.m9D40LLde5WpNxA26HS
 rm3sVWv.y0WaOSmpL_DhnraSqoVpsKzoAhjrXbfu44vj3N_eWBqtbWQqguxTS5QZQHkVMQX0b4lj
 qll_GsrzSBr2iXPADNiFLasmtxyPLim1kGZa9SdfdMbIlmhzX1zDI4nQ6mWhMDShdpgh3aG_Uvf8
 ob1oMBpvQ78Uw1BZGDGZi8xvQom0ezUcVqFnh1DcDuPRzV91Llv7MU7_IYghAuOaX1bgm.96_5t1
 p.Hf1u9PPgpRVOOcxZL0vFB6p2UBZVswosvPtPXdPyi.5GsigIr2l6bIvqPfjfy87NQ40c.HdgSw
 fDI6PXGmXxfQ9x1hFCV0hCV.n2nBeXHxfq2BPmlrR1bUHfQZBPCxY407GE3sL08Ej7m2oB3X7g7Q
 1_LwLCv5qU9cAJd8aSkAbfOxsxUVdZRsuUUkewCf22F5kxb8IBM4Doc6SFwXqGAN3Nc1zwv0oAE6
 sFuSEYSwCImtXwJkLEas89YKHip2o6Rx083XFgSO7xs54xuKwb6LwVCXP7a49R7dqkXAYoUzHaeJ
 s1TBWw2yCZnAMY40h7vjqkYLQQ38T228V6CGzuXBCafGQsvpXBjO1s0mSyZ_lkl4ehtzXCcIGA8N
 WcDu_nQWSU9fnbLaxqyqU.JN.NKz8cqzc9FLVlat_KtPxxrsLqMz_eWi9Efb697LuC9dZLJGYIXO
 BRPhvHwkjYJ6fN4hwcgicU2vttVf7hsSkh_kSUIh7ZqgHVF1ClUR23NDUShB6FLOmmewOuhcWfWv
 16osjcgZv_cUwUWBpnzjmPghZE2dtofS.smEuNwAftqPm86Vcsn0OfMuZLcPZDgDbR027_3oVvjm
 SHsyLJmWvvzXwuR9YtATUyu3uRChk8y4N4f0xe8g8S9ZDCMPHiczHxGIJwe0MaE41ie5.9LgdSBc
 NPsrSF78bBwAqi_GC.cS2WO8GwCvvWJIIUqzimYtqTffj2yc55xj2TyGE3Lwyyy8nTbm4_OiNgrG
 8SI7.naydOXjAHCcD7uBxpu5sj3EA0Jgm0fZXsCq_.XjOd5E06H8jdio4gRYAfu5saxtD.csWDFf
 wcHVeLCuWgpubPtt9tarnUbn06pUUcQ1HnBauhnZaZjBUSrvayIvqOth_15qbOQvoM0p.pWf14Q6
 rXoPPOGDSXCh6m_wYPG8WoqntK0QEdCwjhBtDl4.L.0Y5Z20FjCR.RMWSVuvRzsdx_w1.hNhvAqF
 U21qIYEwPnyy6uowLGOgg3B4BkIALjK4ZKYBtEsxoC2xf7SMl3wCdpmAIfn.Mquf22NujhW65enK
 Cy6mA9JtPTSt8oGOdzacqUMmnLj3zC7PgnLIji_BuBe386JC3HS7xvw--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.ne1.yahoo.com with HTTP; Sun, 9 Aug 2020 14:31:07 +0000
Date:   Sun, 9 Aug 2020 14:31:06 +0000 (UTC)
From:   "Mrs. Mina A. Brunel" <brunelminaa2@gmail.com>
Reply-To: mrsminaabrunel653@gmail.com
Message-ID: <1973287813.2142192.1596983466477@mail.yahoo.com>
Subject: My Dear in the lord
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
References: <1973287813.2142192.1596983466477.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16436 YMailNodin Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36
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
