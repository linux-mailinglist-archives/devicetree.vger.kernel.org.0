Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41688400029
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 15:08:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235183AbhICNJC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 09:09:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229645AbhICNI7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 09:08:59 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 798C7C061575
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 06:07:59 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id l6so7908706edb.7
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 06:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=WYzSrI9zSNaecML1pdaUth8apEamlGgUMFyc+HnKzhk=;
        b=RwWwSQ1/k674F5XUGsuC9cgeLCls9obE8vx05N6tui1WHyKCAT8GkGFbkyuiwASIdp
         5+ROJ6HaWtQepPXlhimH84+zU2ZqHV7Uk/Q8qi+KK+o83Dik6fpiQP3G/4R0R2fvgUjD
         7PvT8Y7DnI1mlDJYtH2sJpGdD/V6emdRC0QSO6mlWArdX1t3BpgmVKiuOdBF1TbWVRzM
         ShV5N/pUGAkSjScUspl9Y056SMtL7gO/n+uh+HEQZFvuS2sBwHU35VpOUCLdBqMifU1N
         Dy3dcx60vEGdXvVwMYbnYmeL/B8/l/XP1G/VVsi6zQVQZ23odbUQtLhCbu5BVOA3UBiB
         SwBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=WYzSrI9zSNaecML1pdaUth8apEamlGgUMFyc+HnKzhk=;
        b=Wrs/jmJ6Lnv8knDb8hT/xQb9TAWrzrv7+2Ute4NutaAG5fyJmsJzruSN9u+UBjPZbi
         VH7KVrT2MEFOd4QmcWGkVMgkvribXiVf+rNZ8J64XGAsVdwZdH6QasQ57LzuOGSGd4oC
         jB7WbaLC9TOHfW96e/+iEqRunSvg3aka9xCqrXZBoHj3X8cRLNX+9ojsf2ES6Wt6WZMi
         bKlc7WaudS7sj7Z8xSObvuoZ16HH3TqYWJ6crlhHF/+g+kJFF3a6p8z9Pu7CyT9U2lqI
         5WwAvDnyQ72QPVpmdgzfhDYo9BBH4GkzhKK8L8G+tEidsttpvuvr+mfGQdnmLUFMfXyY
         diLA==
X-Gm-Message-State: AOAM533sfSGdHP1ept1z9Ovl9S260fMN1I9Z8HTlpRE41+O1dZnuNq2a
        +mM3lkhZWpFiDxF5XoghRqREi/FryvTkl8DA+6k=
X-Google-Smtp-Source: ABdhPJy3Q/KvYplN25lJ18enpF2DrrWIga3iNtxnI8gKIt88wEJZnPXM20a7Im9ot+XwpIlhIigBYerJLYZdK+0Y6BQ=
X-Received: by 2002:a05:6402:26c6:: with SMTP id x6mr3995084edd.10.1630674469642;
 Fri, 03 Sep 2021 06:07:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:c288:0:0:0:0 with HTTP; Fri, 3 Sep 2021 06:07:48
 -0700 (PDT)
Reply-To: michaelrachid7@gmail.com
From:   Michael Rachid <sammyhamidou93@gmail.com>
Date:   Fri, 3 Sep 2021 14:07:48 +0100
Message-ID: <CAOO_Zf9b511msEr7-xXvdByE031RUD+OJEMpJJx2XUEEPRKxBg@mail.gmail.com>
Subject: =?UTF-8?B?UHJvcG9zYWwv4Kaq4KeN4Kaw4Ka44KeN4Kak4Ka+4KasIFByYXN0xIFiYQ==?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

4Kaq4KeN4Kaw4Ka/4Kav4Ka8IOCmrOCmqOCnjeCmp+CngSwNCg0K4KaG4Kau4Ka/IOCmj+CmleCm
n+CmvyDgpqzgp43gpq/gpqzgprjgpr7gpq/gprzgpr/gppUg4Kaq4KeN4Kaw4Ka44KeN4Kak4Ka+
4KasIOCmuOCmruCnjeCmquCmsOCnjeCmleCnhyDgpobgpqrgpqjgpr7gppXgp4cg4KaF4Kas4Ka5
4Ka/4KakIOCmleCmsOCmvuCmsCDgppzgpqjgp43gpq8g4Kay4Ka/4KaW4Kab4Ka/IOCmr+Cmvg0K
4KaG4Kau4Ka/IOCmhuCmquCmqOCmvuCmsCDgprjgpr7gpqXgp4cg4Kaq4Kaw4Ka/4Kaa4Ka+4Kay
4Kao4Ka+IOCmleCmsOCmpOCnhyDgpprgpr7gpofgpaQNCuCmquCmnuCnjeCmmuCmvuCmtiDgpq7g
pr/gprLgpr/gpq/gprzgpqgg4Kah4Kay4Ka+4KawIOCmnOCmoeCmvOCmv+CmpOClpCDgpqjgpr/g
prbgp43gpprgpr/gpqjgp43gpqQg4Kal4Ka+4KaV4KeB4KaoIOCmr+CnhyDgprjgpqzgppXgpr/g
ppvgp4Eg4KaG4KaH4Kao4Ka/IOCmj+CmrOCmgiDgpp3gp4HgpoHgppXgpr/gpq7gp4HgppXgp43g
pqTgpaQNCuCmpuCmr+CmvOCmviDgppXgprDgp4cg4KaG4Kaq4Kao4Ka+4KawIOCmhuCml+CnjeCm
sOCmuSDgpqjgpr/gprDgp43gpqbgp4fgprYg4KaV4Kaw4KeB4Kao4KWkDQoNCuCmruCmvuCmh+Cm
leCnh+CmsiDgprDgpr7gpprgpr/gpqHgpaQNClByaeG6j2EgYmFuZGh1LA0KDQrEgW1pIMSTa2Hh
ua1pIGJ5YWJhc8SB4bqPaWthIHByYXN0xIFiYSBzYW1wYXJrxJMgxIFwYW7EgWvEkyBhYmFoaXRh
IGthcsSBcmEgamFuJ3lhDQpsaWtoYWNoaSB5xIEgxIFtaSDEgXBhbsSBcmEgc8SBdGjEkyBwYXJp
Y8SBbGFuxIEga2FyYXTEkyBjxIEnaS4NClBhw7FjxIHFm2EgbWlsaeG6j2FuYSDhuI1hbMSBcmEg
amHhuZtpdGEuIE5pxZtjaW50YSB0aMSBa3VuYSB5xJMgc2FiYWtpY2h1IMSBJ2luaQ0KxJNiYeG5
gSBqaHVtzJBraW11a3RhLg0KRGHhuo/EgSBrYXLEkyDEgXBhbsSBcmEgxIFncmFoYSBuaXJkxJPF
m2Ega2FydW5hLg0KDQpNxIEnaWvEk2xhIHLEgWNp4biNYS4NCg0KDQpEZWFyIGZyaWVuZCwNCg0K
SSB3cml0ZSB0byBpbmZvcm0geW91IGFib3V0IGEgYnVzaW5lc3MgcHJvcG9zYWwgSSBoYXZlIHdo
aWNoIEkgd291bGQNCmxpa2UgdG8gaGFuZGxlIHdpdGggeW91Lg0KRmlmdHkgbWlsbGlvbiBkb2xs
YXJzIGlzIGludm9sdmVkLiBCZSByZXN0IGFzc3VyZWQgdGhhdCBldmVyeXRoaW5nIGlzDQpsZWdh
bCBhbmQgcmlzayBmcmVlLg0KS2luZGx5IGluZGljYXRlIHlvdXIgaW50ZXJlc3QuDQoNCk1pY2hh
ZWwgUmFjaGlkLg0K
