Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1FF669656A
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 14:53:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232691AbjBNNxM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 08:53:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232838AbjBNNxJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 08:53:09 -0500
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A90B29142
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 05:52:33 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id l201so17222395ybf.10
        for <devicetree@vger.kernel.org>; Tue, 14 Feb 2023 05:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lzIiOvzBUqeTJdiphF7KaW7tTYu27tfVhqaHToVdTpk=;
        b=IMyME/lQw562KUelTO1QV2l1e6vvEdd/l3uk2izNF6AjlvmRd2NmROmM8GKnqLRaGd
         IyZcKJMmd6SWuZvYj0Czwq034g9C+T5rV03JwKUMS+Gyxf1q7yM3M5kjnHS+ksbBYW91
         OModUu5OuMiaIAJFZFoIBZf87mEe1BwPMQ3hPz7aL3+2aJASq+bhkZWP0j8CYLrB8x9G
         nYMepy3d7VlvLwgKG3BxgsrrwgVYtCWCGqdPkcUoR5BWw6fAbBN1brP4cZcwDU6czLxh
         5fIUuB8b+2rqbW8ZWNB3jl/q4qt2lBlH/lA/OvgcUljudUJLic15zTeOthFJfOUdZScY
         855w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lzIiOvzBUqeTJdiphF7KaW7tTYu27tfVhqaHToVdTpk=;
        b=2iYDaVnEDLe/f1dH2RAl0kz6f6snMwZPEJ1z30PIEBnARNc+mbxdpzlfS6a3xiwZtd
         w/UeRD9yO1afSH/7hfonnh64sku6UCbioM/bH5Is7HbuVu+AJfJeYl2exQD3PVkwpkkc
         QBnH7G10xIbG9xzMgl5CkF9gIZYO3pltzMxyR0Sji+/6BIuVDyGXAUXB0UPB59RjB/ho
         aZD+SaY6OyPIJN1CNz6eI1CtIgvs+89AP9V8i404t6/yfmMO/7TxGxelEJUfdI+IK+O6
         EeqWKzUKTf2VRoo1+gYClPHH0nOx0g3lzXzgQ9jMgLLvBTxsD9M9EuLJPx44nnSI7gRG
         5/zA==
X-Gm-Message-State: AO0yUKUTsvaf80CI1by2IcfnICMCyIP6CTsDBZfb0gAsUb2l+UJPN0H9
        0vskCtXjPemat7Z7ccrJGhGACXnjGcsH9DyQaIw=
X-Google-Smtp-Source: AK7set/q83STRUpXrtCE1FpMX1jDvR+yfwe7MzUcWy2Z+f9YJcrmbf9H8P2Jm5iCVQ6353pxljFk51gfwuxztcrXN1c=
X-Received: by 2002:a5b:60e:0:b0:80b:5988:2042 with SMTP id
 d14-20020a5b060e000000b0080b59882042mr273736ybq.54.1676382698557; Tue, 14 Feb
 2023 05:51:38 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7011:7cd:b0:32d:ece2:8d5a with HTTP; Tue, 14 Feb 2023
 05:51:37 -0800 (PST)
Reply-To: barristeranson754@gmail.com
From:   Barrister Anson <abrahammusa5561@gmail.com>
Date:   Tue, 14 Feb 2023 05:51:37 -0800
Message-ID: <CAOSWSEPuO+ni_MgZ3eBJbWfBOKyg6OYFEcXue_ygzZJ0xaaqTQ@mail.gmail.com>
Subject: TERE, KALLIS
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_40,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,SUBJ_ALL_CAPS,UNDISC_FREEM
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kallis s=C3=B5ber

Tervitused teile ja hooaja kompliment. Minu nimi on vandeadvokaat
Anson Brudenell, advokaat ja jurist, kes asub =C3=9Chendkuningriigis
Londonis. Olen teie riigist p=C3=A4rit insener Francise isiklik advokaat,
kes t=C3=B6=C3=B6tas =C3=9Chendkuningriigis Cheshire'i ehitusettev=C3=B5tte=
s
v=C3=A4lismaalasena. Otsustasin teiega =C3=BChendust v=C3=B5tta seoses oma
varalahkunud kliendi surmaga, kuna teil on sama perekonnanimi, mis
minu varalahkunud kliendil.

16. septembril 2009 sattusid mu klient, tema naine ja nende ainus
t=C3=BCtar Inglismaal Kaguosas Canterbury Roadil surmaga l=C3=B5ppenud
mootors=C3=B5iduki=C3=B5nnetusse, kui nad saabusid Inglismaa loodeosas Salf=
ordis
asuvast l=C3=B5bustuspargist. K=C3=B5ik s=C3=B5idukis viibinud kaotasid kah=
juks elu.
Sellest ajast alates olen teinud mitmesuguseid p=C3=A4ringuid, et leida
tema kaugeid sugulasi, kuid see pole =C3=B5nnestunud.

P=C3=B6=C3=B6rdun teiega, et aidata mul kodumaale tuua raha, mille v=C3=A4=
=C3=A4rtus on 9
500 000 naela, mille mu varalahkunud klient j=C3=A4ttis Londoni panka, enne
kui pank, kuhu see tohutu summa deponeeriti, need konfiskeerib v=C3=B5i
kasutuks tunnistab. Maksepank Londonis on v=C3=A4ljastanud mulle teatise,
et pean j=C3=A4rgmise kahek=C3=BCmne =C3=BChe ametliku t=C3=B6=C3=B6p=C3=A4=
eva jooksul esitama oma
kliendi l=C3=A4hisugulased v=C3=B5i arestima oma kliendi pangakonto.

Kuna mul ei ole =C3=B5nnestunud enam kui 9 aasta jooksul l=C3=A4hedasi leid=
a,
k=C3=BCsin teie n=C3=B5usolekut esitleda teid surnu l=C3=A4hisugulasena, ku=
na teil on
minu varalahkunud kliendiga sarnane nimi, nii et sellelt kontolt
saadavat tulu v=C3=B5idakse teile v=C3=A4lja makstud ja me investeerime v=
=C3=B5i
jagame raha =C3=BChiselt. Kui olete selle ettepaneku vastu v=C3=B5tnud, ann=
an
teile rohkem teavet v=C3=B5i =C3=BCksikasju. Pange t=C3=A4hele, et see tehi=
ng on
konfidentsiaalne ja seda tuleb hoida saladuses, kuni raha on teie
pangakontole edukalt =C3=BCle kantud, et mitte seada ohtu ega saboteerida
tehingu =C3=B5nnestumist.

Ootan teie kiiret vastust, mis n=C3=A4itab teie t=C3=A4ielikku huvi selle
suurep=C3=A4rase =C3=A4ritehingu vastu.

Kontakte-posti aadress: (barristeranson754@gmail.com)


Lugupidamisega

Advokaat Anson Brudenell
Advokaat ja advokaat
London, =C3=9Chendkuningriik
