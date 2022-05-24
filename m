Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBB89532FB6
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 19:37:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236003AbiEXRhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 13:37:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231848AbiEXRhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 13:37:45 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A715A1A051
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 10:37:43 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id v9so17563498oie.5
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 10:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=y+so8jn/A+1psHeTytrcnto/0ApO1CXp9P5bUkEghcw=;
        b=CAYluIse/8jmEookS70e2aRrS1ErAB0r5lTojQ+4MMzIsFuCoOohltVLvXWa51R8Mr
         rHiNfaqfOwi3iQ2U33+ZA2INbBKz2IqZ3PKhLZl9ApwiGLi3rl6H9vYJmhwVYPbREhaY
         1tPBi40Jtqp6gHIqIfJddprxNySsAPA6ShZQxnBxjFuuIzFXiwXdNkg0vZonoKClnB6j
         4/8/2k0ZXmOMLtyKoc+OWnAwxgT5ZyzlPzrh6b8ZjOQPaOK6gRpDSdXqXattt+tLXD8v
         1xh8NAELCw39sfej9ndCLr5160BWkuMkZgp537lEjByBUO5uwWGPnyIPtoP2q+eyb6Oh
         N2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=y+so8jn/A+1psHeTytrcnto/0ApO1CXp9P5bUkEghcw=;
        b=kjLUzCZFPuC9jDHwigJg+3ZPE5XeOVFkhs+phgJMtqbez/XtKJOr8NsckmJ1vFLnCk
         benkvEIz4rBKRPRxOevp9tIRxhUARe5wyHwRjH8xwOk/IQu2vg+VYtSsFdYqUvyIPT7a
         eYlmHK+pEEmCPI/wU/ly897PYPphuoqyXFufrNYKDC5FpczJ9evnO5BgUxpmm8aLEdPm
         Iqex9Dk+JjylyIlwkJ3t/o+UOKXLo+500YBO0wCS17wGURyKIx9nVP1284sL6fmbI5cQ
         pHHwjfSO1uRCU3R1gyHJvNdHF6YswSSU1ilTufT+E7J9Y1ACsoaau9LsqiDMFVVl7tM7
         WujA==
X-Gm-Message-State: AOAM5337sRbWUHJES8PcGZoLw1ATLJPLr/ZcxYvJv/Il+LCpsHs0ozIw
        sSliOBauW3XiFEY7vXgltwLVbXSWntMD2ODxcJM=
X-Google-Smtp-Source: ABdhPJxgDYRoPdxZmMEldGpg0WNUJWh6Bub16M9KXsOBzqtadKlGpTH0qBOtR2kL1ARdjk5oQ/pISi3Fn5T/YHwrhnk=
X-Received: by 2002:a05:6808:3009:b0:2f9:6119:d676 with SMTP id
 ay9-20020a056808300900b002f96119d676mr2958935oib.205.1653413862546; Tue, 24
 May 2022 10:37:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:144:0:0:0:0:0 with HTTP; Tue, 24 May 2022 10:37:42 -0700 (PDT)
Reply-To: unitedbankforafricalometogo1@gmail.com
From:   Amid Noora <amidnoora@gmail.com>
Date:   Tue, 24 May 2022 17:37:42 +0000
Message-ID: <CAJc4OnU8xpS_ccmdp756Nn9v0xYSTBN+es+x6QyiK_OM6kNTcg@mail.gmail.com>
Subject: NUJNO
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:22e listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [unitedbankforafricalometogo1[at]gmail.com]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [amidnoora[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.3 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pozor, upravi=C4=8Denec,

To e-po=C5=A1tno obvestilo prihaja neposredno iz skupine odbora za boj
proti goljufijam Afri=C5=A1ke unije (AU) Republike Togo v sodelovanju z
delovno postajo Zdru=C5=BEenih narodov (ZN) Lome-Togo, razred P-4 Po=C5=A1t=
na
=C5=A1tevilka-AF /RP/RDBCPN/SHS/0001.v zvezi z obse=C5=BEno racijo (Aretaci=
je)
na internetne prevarante. Zaradi visoke stopnje prito=C5=BEb, ki jih
prejemamo od Zdru=C5=BEenih narodov (ZN) na ravni prevarantov/goljufov z
afri=C5=A1kimi narodnostmi. Vsi ponudniki internetnih storitev so opazili
pove=C4=8Dan e-po=C5=A1tni promet, ki izvira iz Afrike na druge celine.

V tem napadu je bilo do zdaj aretiranih tristo =C5=A1est (306) prevarantov
in ta racija =C5=A1e traja. Od njih smo izterjali skupno vsoto 857
milijonov ameri=C5=A1kih dolarjev, tako denar kot sredstva, za katere je
bilo potrjeno, da so pri=C5=A1li od njihovih =C5=BErtev. Kot smo na=C5=A1li=
 na
stotine tiso=C4=8De e-po=C5=A1tnih naslovov =C5=BErtev iz njihovih imenikov=
. V tem
trenutku vas kontaktiramo.

Ve=C4=8Dkrat smo brez uspeha posku=C5=A1ali stopiti v stik z vami, zato vam=
 =C5=A1e
zadnji=C4=8D po=C5=A1iljamo ta opomnik, po katerem od=C5=A1kodninski komisi=
ji
Zdru=C5=BEenih narodov ne bo preostalo drugega, kot da prekli=C4=8De va=C5=
=A1
od=C5=A1kodninski denar v vi=C5=A1ini 750.000,00 $ in ga ozna=C4=8Di kot ne=
zahtevano,
zato nemudoma odgovorite na to pismo, da pojasnite svoje stali=C5=A1=C4=8De=
 v
tej zadevi, preden bo prepozno, ukrepajte hitro in upo=C5=A1tevajte
navodila v svoje dobro. Podrobnosti o nadaljnjih na=C4=8Dinih boste dobili,
ko boste stopili v stik z United Bank of Africa Lome, Togo

=C2=BBDanes pa vas obve=C5=A1=C4=8Damo, da je UBA Bank va=C5=A1 denar nakaz=
al na kartico
VISA in tudi pripravljen za dostavo.
Zdaj se obrnite na generalnega direktorja UBA Bank
Ime...................... G. Tony Elumelu
E-po=C5=A1tni naslov........unitedbankforafricalometogo1@gmail.com


Va=C5=A1e podatke je omenil eden od Sindikatov, ki je bil aretiran kot ena
od njihovih =C5=BErtev operacij. S tem ste opozorjeni, da jim tega
sporo=C4=8Dila iz kakr=C5=A1nega koli razloga ne posredujte ali podvajate, =
saj
je na=C5=A1 agent tajne slu=C5=BEbe ZDA =C5=BEe na sledeh drugim kriminalce=
m.

Po=C5=A1ljite mu naslednje podatke za dostavo va=C5=A1e akreditirane kartic=
e
VISA na bankomatu na va=C5=A1 naslov.

Va=C5=A1e polno ime=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Va=C5=A1a dr=C5=BEava porekla=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Va=C5=A1 doma=C4=8Di naslov =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
E-po=C5=A1tni naslov =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Va=C5=A1a telefonska =C5=A1tevilka =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
Va=C5=A1a starost =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
Va=C5=A1 spol =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
Va=C5=A1 poklic =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

N/B ; Zato mi takoj odgovorite danes, da bomo lahko takoj za=C4=8Deli vse
potrebne procese in protokole za sprostitev va=C5=A1ega sklada za
od=C5=A1kodnino
S spo=C5=A1tovanjem,
Oddelek Odbora za boj proti goljufijam Afri=C5=A1ke unije (AU) Podru=C5=BEn=
ica
Republike Togo
