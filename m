Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E60562CDA8
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 23:29:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234174AbiKPW3U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 17:29:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231564AbiKPW3P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 17:29:15 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6BEF4B9B0
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 14:29:13 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id gv23so695677ejb.3
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 14:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ijwqsMZNVxRbKwR3V0sBgPywqQx2GGbr1+5JUnnvQWQ=;
        b=Cbyc454qj0zzyHWbx+Ki5coBgfNlJH1D9b54oPuiRIgZawoPu1QH+wqQKWhrH2+w3E
         u6uqSwDkrbTuxKHDHO6WpKQNW6vw4ObKRUgoSS/eyxcw8IKSu7mizTqqmMXluxQsaJZ5
         tNI1FOGtPvEhnM4RwhjuY4CyB0IuK22+8yThAMZUgxaoMO/u9BPEgdtNe/SdxEzMb7L1
         aI/PEMKq3cEFK5XARrRPbpdWFHMymnvl387GVIMg2AVRgNRqjmeBtMozEnYXlAYOgJf/
         vNMV8WS0apBMA+t4ee/tvk3LeHWDET6JyFH8iFrEyG+f7TFZ4UoRSP7STbtyXLTNK2Ub
         Aexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ijwqsMZNVxRbKwR3V0sBgPywqQx2GGbr1+5JUnnvQWQ=;
        b=ERv+F28YIbkedPOV+WORoNiKW6P+t5WupDVKo8NS4W8sV3KG5Fdq3YratG5ICGQHr+
         +M5zHSCDn9IJSIyXqdcfOKqCzzsCnheAD1Zu4E8o5TQoZVZT1hXAGLeXOgy6+RbGRJNp
         J+of7T36/mPDxUnDA5Uuk7RcflInPBmb+2IsQqiSb9hqWC5sE61vG6J7AJ7PR7U8vPad
         tUhAiwdyRs99X9cSm1MaHXWYUs6y9fcVJdiGND1h1nWDW3nVxF2x3eod/FV/yCX6iW0Y
         Ntg5g/EudeA2lHpp3wh5AuOyECDYZ0FdhirHKm4J86VGSpAepsr9BZhgFF1dg4ZBC0+s
         zXrw==
X-Gm-Message-State: ANoB5pl/lSqEgIly4gQsImwwlhZusidfaBowjcg2EMhjZzBTVwx+b3dY
        SDcYVRrjLEX1MRrHAN1NioUF5aACZsgAZNtiUqQ=
X-Google-Smtp-Source: AA0mqf6re5b4tGWKaQ2Jnrnmp7C0N6ewMk6Wn5/mn+MapeCzy73uIwL9LXKsb/UalTamiWOf3jLkxaxTHdRFX3JTPf0=
X-Received: by 2002:a17:906:8d06:b0:78d:8d70:8bf8 with SMTP id
 rv6-20020a1709068d0600b0078d8d708bf8mr18544382ejc.15.1668637752191; Wed, 16
 Nov 2022 14:29:12 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:3148:b0:78d:d03e:9587 with HTTP; Wed, 16 Nov 2022
 14:29:11 -0800 (PST)
Reply-To: constance01castelein44@aol.com
From:   constance castelein <constancec4u@gmail.com>
Date:   Wed, 16 Nov 2022 22:29:11 +0000
Message-ID: <CAFDMXCDFuM3HK4xQRsRde8kzFf+adGcxjQx=Tth=gau-5qu=vg@mail.gmail.com>
Subject: Od Gospe Constance Castelein
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Od Gospe Constance Castelein

Najdra=C5=BEji v Gospodu,

Z vsem spo=C5=A1tovanjem in =C4=8Dlove=C4=8Dnostjo sem bil prisiljen v napi=
sati a
humanitarnem podro=C4=8Dju.

Sem vdova Constance Castelein, staram se dolgotrajno bolna (rak). Trenutno =
tako
sprejet v zasebno bolni=C5=A1nico. Imam nekaj sredstev, ki sem jih podedova=
l
moj mo=C5=BE Anthony Castelein,, ki je kasneje umrl v prometni nesre=C4=8Di=
.

Ko je bil moj mo=C5=BE =C5=BEiv, je polo=C5=BEil vsega 4.500.000.00 =E2=82=
=AC
(4.500.000,00 evrov) v banki. Trenutno je ta denar =C5=A1e vedno v
banka.

Zdravnik mi je rekel, da zaradi tega ne bo trajalo naslednje 3 mesece
problem z rakom. Potrebujem nekoga zelo po=C5=A1tenega in bogaboje=C4=8Dega=
 in
organizacijo, ki lahko ta sredstva uporabi za delo Bo=C5=BEjega pokojnega
mo=C5=BE je nau=C4=8Dil, da ga je treba ta sklad uporabiti v dobrodelne nam=
ene,
kot so gradnja =C5=A1ol, siroti=C5=A1nic, bolni=C5=A1nic itd.

Tako sem se odlo=C4=8Dila, ker nimam otroka, ki bi dedoval
ta denar in =C5=BEelim, da se mi Bog usmili in upo=C5=A1tevam mojo du=C5=A1=
o.
Z Bogom so vse stvari mo=C5=BEne. Prosim, =C4=8De bi lahko uporabili
ta sredstva za bo=C5=BEje delo, prijazno

=C5=BDelim, da mi po=C5=A1ljete naslednje podatke, navedene spodaj.

Tvoje polno ime ----------------------
Tvoja dr=C5=BEava ------------------------
Va=C5=A1 naslov ---------------------------
Tvoja starost ------------------------------
Va=C5=A1a zaposlitev ----------------------
Telefon ------------------------
Takoj ko prejmem va=C5=A1 odgovor, bom posredoval kontakt
Banka in jaz vam bova izdala tudi pooblastilo, ki bo
poka=C5=BEite, da ste trenutni upravi=C4=8Denec tega sklada.

V upanju na va=C5=A1 odgovor. Ostanite bla=C5=BEeni v Gospodu.

Hvala vam

S spo=C5=A1tovanjem

Gospa Constance Castelein
