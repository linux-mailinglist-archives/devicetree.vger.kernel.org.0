Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 482A4563EFA
	for <lists+devicetree@lfdr.de>; Sat,  2 Jul 2022 09:59:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231572AbiGBH7C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 03:59:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230183AbiGBH7B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 03:59:01 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8464B2253B
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 00:59:00 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-101d96fe0a5so6487247fac.2
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 00:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=T1Hz1Fw4YGwAf7T09zcUk3JF7qeu3as0E0fDJAm8aSU=;
        b=dEzxx003u0zrXHVL03mK6zzDVJszYn8/2yqCawYglQmnYOG62nrVIAO2RVxySI8XMz
         1deAHPY3YnSMm9a8xScUZzAbYw6fRsLxU58I1MT5q/HHbVc2DxfDWmcVzodAG1lSIXdR
         f0gUExY/lwBP7zy3+B8E7f+KpNgc9xSk8r15G+aaZPaJwXfkFN9Dla/m8dOPFm2pc8Gi
         LfZdDqkhyiwUDfhLS8V432ylOKlJewChxXYK8JqMsi+O38F5m5vcYLyiX4IHXPumQGgR
         gnecX6jLceEZZ8+zfLwh6T/fesKDC5dyq3590+bAO0aOAFFSNzOiad8FPjc+WisRvpSP
         u2QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:content-transfer-encoding;
        bh=T1Hz1Fw4YGwAf7T09zcUk3JF7qeu3as0E0fDJAm8aSU=;
        b=xHExG7RDXa8zgaSKYPGnAW6dVzVVajBBjMywIsHaLoSCylIyX1Lb9woPbXuzMtnPGH
         MTohDjEo5PcNjxgsnzeMQwbhvuX6yjnbITJjKNj5mJ2uJNPCsIyrFiiYd4teErZERUNC
         KNrDX9z1aEYBEDwjcp3jUdmL84rKu2NwULIWuZlHlRvdZEIyk4MO/cjRYQe6FbT2JwFE
         PTPT0CiMfmAC39cJ9uKvSQK2VD8MJcounMWCbnhoKvWelScfTT2zWhykVd7TEv57BN06
         5X7lEhz6xzDxFVC0udGIWu+AqLq7KW9nb6jBEKP8jPbl9Q2DsVhaHOpOBjD5tllqluRn
         Tb0g==
X-Gm-Message-State: AJIora8eZM/Dnki6Dhb7tsE5i0Q1MWVcplUVLjU1j11IInPWumN8gpEK
        zJwFNw7Ch+Oo0SkyU5QSZXQIfz8QCG7vopLl2tNyqqKMQ2KQnA==
X-Google-Smtp-Source: AGRyM1sVamQntmjPUqMuOH3VtFXF+v9cybeQB+xkPl1tA9UpK6paM5hDtBDy5VFGOe+ofgVgAYyKwJqXxU0TxYyFhxQ=
X-Received: by 2002:a17:90b:4c0d:b0:1ed:2466:c0d3 with SMTP id
 na13-20020a17090b4c0d00b001ed2466c0d3mr23426605pjb.6.1656748373653; Sat, 02
 Jul 2022 00:52:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6a20:2988:b0:88:12be:1cf2 with HTTP; Sat, 2 Jul 2022
 00:52:53 -0700 (PDT)
Reply-To: office002282215720@gmail.com
In-Reply-To: <CALsVJWO8f4wUmrBYCj4Xi+2-5MfDfw+KvJv=moBU4S8wKPnVOQ@mail.gmail.com>
References: <CALsVJWO8f4wUmrBYCj4Xi+2-5MfDfw+KvJv=moBU4S8wKPnVOQ@mail.gmail.com>
From:   Martial Akakpo <ponaefalou@gmail.com>
Date:   Sat, 2 Jul 2022 07:52:53 +0000
Message-ID: <CALsVJWPRbM0Ns9ovX4_aip7UeV=tmzB4ttitKvt-0qH5_-6_sQ@mail.gmail.com>
Subject: Fwd:
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Drag=C4=83 prieten=C4=83,

 Am fost =C8=99ocat c=C4=83 a=C8=9Bi =C3=AEncetat s=C4=83 mai comunica=C8=
=9Bi cu mine, chiar nu v=C4=83
=C3=AEn=C8=9Beleg motivul pentru care face=C8=9Bi acest lucru, dar acum sun=
t foarte
fericit s=C4=83 v=C4=83 informez despre succesul meu =C3=AEn scoaterea fond=
ului din
banc=C4=83 cu ajutorul unui personal care lucreaz=C4=83 =C3=AEn biroul de r=
emiten=C8=9Be
=C8=99i, de asemenea, cu asisten=C8=9Ba special=C4=83 a unei femei de aface=
ri
franceze care se ocupa de alt=C4=83 logistic=C4=83. Cu toate acestea, am l=
=C4=83sat
suma de 50.000 USD (doar cincizeci de mii de dolari SUA) =C3=AEntr-un card
de retragere de numerar ATM.

Ace=C8=99ti 50.000 USD sunt pentru tine =C8=99i sunt =C3=AEn mod inten=C8=
=9Bionat pentru
compensarea ta pentru efortul mic =C3=AEn aceast=C4=83 tranzac=C8=9Bie. Car=
dul ATM
este un card de plat=C4=83 global care este acceptabil, func=C8=9Bional =C8=
=99i
utilizabil =C3=AEn =C3=AEntreaga lume pentru a efectua retrageri zilnice de=
 bani
de la orice loca=C8=9Bie ATM.nee
3000 USD pe zi, cardul ATM este pe numele dvs., iar codul PIN va fi =C3=AEn=
 plic

 =C8=9Ai-a=C8=99 fi trimis singur cardul de la bancomat, dar nu am timp s=
=C4=83 fac
asta acum, pentru c=C4=83 trebuie s=C4=83 m=C4=83 =C3=AEnt=C3=A2lnesc urgen=
t cu colegii mei de
afaceri din =C8=9Aara Indoneziei din Asia. M=C4=83 voi =C3=AEndrepta c=C4=
=83tre aeroport
de =C3=AEndat=C4=83 ce v=C4=83 voi trimite acest e-mail, deoarece voi pleca=
 din =C8=9Bara
mea =C3=AEn Indonezia, unde voi continua cu angajamentele de afaceri
petroliere.

Pentru binele dumneavoastr=C4=83, am l=C4=83sat cardul de la bancomat unui
reverend P=C4=83rinte Arhiepiscop Philippe Kpodzro, acum merge=C8=9Bi mai
departe =C8=99i contacta=C8=9Bi-l prin adresa lui de e-mail, astfel =C3=AEn=
c=C3=A2t s=C4=83
poat=C4=83 folosi oricare dintre companiile de postare s=C4=83 v=C4=83 post=
eze
articolul prin adresa dvs. de contact. contacta=C8=9Bi imediat Rev. pentru
a v=C4=83 putea trimite cardul ATM.

Mai jos este contactul p=C4=83rintelui Philippe.

Nume: Arhiepiscopul Philippe Kpodzro

E-mail: pkpodzro5@gmail.com

Site: https://fr.wikipedia.org/wiki/Philippe_Kpodzro

 Sper s=C4=83 aud c=C4=83 a=C8=9Bi colectat fondul. In fata auditorilor
 cred c=C4=83 nu pretinde=C8=9Bi desp=C4=83gubirea

Toate cele bune
Arhiepiscop
