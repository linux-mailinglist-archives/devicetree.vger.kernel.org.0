Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39F9D6F1F60
	for <lists+devicetree@lfdr.de>; Fri, 28 Apr 2023 22:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346544AbjD1UbT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Apr 2023 16:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346531AbjD1UbP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Apr 2023 16:31:15 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D462D5B
        for <devicetree@vger.kernel.org>; Fri, 28 Apr 2023 13:30:52 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id ca18e2360f4ac-768d75b2369so11567539f.0
        for <devicetree@vger.kernel.org>; Fri, 28 Apr 2023 13:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682713847; x=1685305847;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RTYsdnb3XWNHNFKshQ5YLmNW4QB6EHQGAfUnwG76TeE=;
        b=VON6T6z7dUOQDEHNzDpo1E8f6lzA0wNh0Z0/FWOf+4+wY+gcOxIAYVNUPEyUaYQm+Q
         R3XStX+Zs4wzo9v8cNUHBwR9DCZCYElZnFt/EaOjYOMIgusG0hGNZGcr+7JiWcuNFTGO
         RTQxWKLhtLdeJ7Y+c2CAZh9DdPFYb1ZVsBF3a6/O6FTRPQMMGm74ZPmS7sKANAr5mqPA
         WSCGcJKaDoiNqxeNItnRYvWGaL3ypOmDrLw8wJ9BJDz+/rmtpjcWgSWR7XjYLqrIXyL0
         BgivGyZFiZbe8yPL63T7rDSk6Tp9ClQklgUQ3DfQL3fIR+zdxIe2dZyUGyV9EvIwxyXp
         cDjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682713847; x=1685305847;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RTYsdnb3XWNHNFKshQ5YLmNW4QB6EHQGAfUnwG76TeE=;
        b=byceViqKBD12qiM+GSyEn4ikiHK3Qb7KVlBKDvbVzeGK8szc56FqmsBXees2PEnGdG
         ZiecnkSDiSsoSajN5i66ZyTmx6Yef10MhkzGUG4sIMWwZ320oMoHZM8fVms5FlhC5r9B
         IgagtSBCHDC/5Kxpz4h//3rd7+VGc5UVUcLS7Xo3jUFsiY14xzIDU7hrYXCFwL7lY0zT
         iGPRgqV+WeC4WeD1ndR0HVeUDQ6dD21NwIcDRuP/pLZuGLJGOxJPzL+mt/O0GZhTS+mE
         nyz9h6bre8SJ2dMhL7QJTi7RCY4pcRS0noJExu5FbuUmkfvKREBLOChwZnTVasM6ug8H
         7OBQ==
X-Gm-Message-State: AC+VfDyqQdWF2VPXaNbb0d4ZLa/ZLuai5g/OGj8/IZNkuLUuconHQIIZ
        L4jSJclDOqX+86FFZmTOR3y+PGaHOUciP5rj9mM=
X-Google-Smtp-Source: ACHHUZ69wt4our/xDuwYL1vg22trjJvTVOJSCaVMI0YYawS3PTxrWtszobpdOr5mznemA47phIkSKL+ottLd6hBga2o=
X-Received: by 2002:a05:6808:914:b0:38c:1acd:e6ee with SMTP id
 w20-20020a056808091400b0038c1acde6eemr3139883oih.9.1682713477277; Fri, 28 Apr
 2023 13:24:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:9c96:b0:112:94eb:bb40 with HTTP; Fri, 28 Apr 2023
 13:24:36 -0700 (PDT)
Reply-To: Info.americaatmbank@gmail.com
From:   UNITED BANK OF AMERICA <unitedbankunitedbank006@gmail.com>
Date:   Fri, 28 Apr 2023 13:24:36 -0700
Message-ID: <CAD+oP2NNU7pyujJMZb4ni6e-Uq8UvF0P6P_51m6Uuob7nOq8gw@mail.gmail.com>
Subject: =?UTF-8?Q?T=C3=84HELEPANU?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Terrorismivastase v=C3=B5itluse ja kuritegevuse kontrolli osakond
J. EDGAR HOOVER HOONE 935 PENNSYLVANIA AVENUE,
Washingtoni loodeosa, D.C.
Viitenumber: 20535-0001

HEAD UUDISED

V=C3=B5tan teiega =C3=BChendust e-posti teel, kuna minu arvates on k=C3=B5i=
ge =C3=B5igem
ja sobivaim selgitada, miks ma teiega =C3=BChendust v=C3=B5tan.

Olen eriagent proua Joyce Hook, =C3=A4sja ametisse nimetatud Ameerika
=C3=9Chendriikide FBI pettuste uurija, kes t=C3=B6=C3=B6tab koos Ameerika
=C3=9Chendriikide kriminaaljuurdlusosakonna (CID) pettuste =C3=BCksusega.

Olen spetsialiseerunud fondide, sealhulgas [h=C3=BCvitis-/p=C3=A4rimisfondi=
d v=C3=B5i
L=C3=84HEDASED], saadetiste fundamentaalsetele uurimistele
Box, Lotto=C2=AE JACKPOT, LAENUD] ja olen m=C3=A4rganud, et olete saanud
Paljud meilid p=C3=A4rinevad inimestelt, kes v=C3=A4idavad, et nad saavad t=
eile
raha, kuid ma soovitan seda, kui olete m=C3=B5nega neist endiselt =C3=BChen=
duses
Siiski soovitame teil esialgu igasugune suhtlemine l=C3=B5petada, sest
nende inimeste kohta on tehtud uurimist ja need on petturid.

Tahaksin kuulutada meie l=C3=A4biviidud uurimise eduks
Paar p=C3=A4eva tagasi; Arvasin, et oleks kasulik teada, miks see uurimine
pooleli on. Teabe saamiseks on t=C3=B5esti kinnitatud, et teil oli 100%
=C3=B5igustatud tasumata tehing ja teie
Teil on t=C3=A4ielik =C3=B5igus seda raha n=C3=B5uda, kuna on kinnitatud, e=
t olete
nimetatud 2,6 miljoni dollari v=C3=B5i h=C3=BCvitise/p=C3=A4rimisfondide =
=C3=B5igustatud
saaja v=C3=B5i l=C3=A4hisugulane, kuid selle raha k=C3=A4ttesaamise viibimi=
se t=C3=B5ttu
on teie raha n=C3=BC=C3=BCd kinnitatud 2,6 miljonit dollarit on heaks kiide=
tud
USA dollari eest, mille maksab siin Ameerika =C3=9Chendriikide (USA)
presidendi kantselei.

Teatan sellest t=C3=A4na, kuna m=C3=A4rkasin, et te ei suhtle seadusliku
isikuga, kes vastutab selle raha teile k=C3=A4ttesaamise eest. See reklaam
peaks olema teile avatud, kuid teid v=C3=B5ivad petta need hoolimatud
kurjategijad, kellele olete =C3=BChe v=C3=B5i teise kasti hankimisel raha
saatnud, mis pole reaalne, mist=C3=B5ttu otsustasin aidata teil raha saada
otse FBI-st. Ma tean, et kui olete huvitatud oma 2,6 miljoni USA
dollari suuruse tasumata seadusliku raha vastuv=C3=B5tmisest, soovitan teil
kohe minuga =C3=BChendust v=C3=B5tta. K=C3=B5ik, mida ma vajan, on teie koo=
st=C3=B6=C3=B6 ja
m=C3=B5istmine.

V=C3=B5tsime =C3=BChendust United Bank Of America'iga Ameerika =C3=9Chendri=
ikides
(USA), et t=C3=B6=C3=B6delda teie raha panga=C3=BClekandega. Raha kantakse =
otse teie
kontole.

V=C3=B5tke =C3=BChendust United Bank Of America direktoriga alloleval e-pos=
ti
aadressil, kelle nimi on

Proua Cox Pamela
E-posti aadress: (info.americaatmbank@gmail.com)
Ameerika Pank

Saatke talle allpool oma pangakonto andmed, et ta saaks teie kogu raha
=C3=BCle kanda.

1. Teie t=C3=A4isnimi =3D=3D=3D=3D=3D
2. Konto number =3D=3D=3D=3D
3. Panga nimi =3D=3D=3D=3D
4. Panga aadress =3D=3D=3D=3D
5. Riik =3D=3D=3D=3D
6. Telefoninumber =3D=3D=3D=3D
7. IBAN =3D=3D=3D=3D
8. ID-kaart =3D=3D=3D=3D
9. Sinu amet =3D=3D=3D=3D
10. Vanus =3D=3D=3D=3D
11. Sugu =3D=3D=3D=3D
12. Sinu L=C3=A4him Sugulane =3D=3D=3D=3D

Lugupidamisega
Proua Joyce Hook
=C3=84sja ametisse nimetatud USA
(USA) FBI pettuste uurija
