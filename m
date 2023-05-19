Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A19ED709DF7
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 19:26:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbjESR0f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 13:26:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229680AbjESR0d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 13:26:33 -0400
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com [IPv6:2607:f8b0:4864:20::a34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC2F010FA
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 10:26:12 -0700 (PDT)
Received: by mail-vk1-xa34.google.com with SMTP id 71dfb90a1353d-456fc2e1ccdso518441e0c.1
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 10:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684517171; x=1687109171;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CZzkG5UVtJRJgp58bN9WSf3/dsBZb9LrgBjsmARqQiU=;
        b=L0yVvqc2HlKenCcP8vGCAxWvaDyxq1l9fgU/IgJMq53ocMIeyCUngnMAxB6XNIz1j2
         Lb2FP/irLwDn3UFiw8WyOftqWpzpYz82/KtgkfZ/nckqVjrJv0OR4TEJDWy0UAoUe0/7
         R7zkRdCfYEAoI9d8ICYelrfrS8guj+aoxkZ9X4wrXchveyWgjOqNb2isULMgWSxT0bCt
         VH3qukWjiDAlu2lFurCegB56DsGEikblAwp9i89XIAZ/Ba3xoLYzfWQaxBx2y7rG3qaL
         UQ1gCkXcr3tu8w7stvQzH46Tpu9nT5iTmGC96BvxgaXj/M/BbAsgKf0I/UfkYT5DNjaz
         owxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684517171; x=1687109171;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CZzkG5UVtJRJgp58bN9WSf3/dsBZb9LrgBjsmARqQiU=;
        b=hn/uZ4h5WyFixgyMpFawWx3wWYA0iq5FkuSsSGUgiVH5hXOnXk9ijbu9t+1D2vfEHG
         a6/9+OlHrvvUnRttNZ0SlpXUINuNzM6kUuKeuvIYfVH878OIyhNNJkW6YWSgavf6fMHK
         UlwpZJgTPgTzyhd0CKOF7+9f2JE2Zl0896/Gu2JlZ9KfbMF9frbvbePydzOOH36sh8/y
         UPjSQctSxrko0tvj118P5OObjJJe47N7fhbQvaGzFQpf9ec31Rv7eNr6GIsBnRSFLzMk
         W/YM2qYpyxUauLPiAFPfH0PkAplk71sAY/m7iOK5Cng+6Qxbh78BE7QYjuGYt0ZiS68r
         Rr6g==
X-Gm-Message-State: AC+VfDz2LJXoxirDFYsFOhcTMkBu0EnhTZsgnmIa2Hkvn9O+LQ1mdIy/
        oYyJrIwysZAg5T5oINBpuhGg7usIYJF1k1QUR38=
X-Google-Smtp-Source: ACHHUZ6VZF2tmvUoZmNlXLu7gyWofm4Offid2kwqTJ3F3Dppy1rXDB7QONG5pkcNinC9+hg7I/Zca11UtiWcWDH0Vds=
X-Received: by 2002:a1f:bd56:0:b0:456:d8da:caf5 with SMTP id
 n83-20020a1fbd56000000b00456d8dacaf5mr1338647vkf.8.1684517170854; Fri, 19 May
 2023 10:26:10 -0700 (PDT)
MIME-Version: 1.0
Sender: omarusandrina@gmail.com
Received: by 2002:a59:b6b0:0:b0:3bd:3fac:2923 with HTTP; Fri, 19 May 2023
 10:26:09 -0700 (PDT)
From:   Sandrina Omaru <sandrina.omaru2022@gmail.com>
Date:   Fri, 19 May 2023 19:26:09 +0200
X-Google-Sender-Auth: SwsMnEHVcRgZReza0Av_U6tMLC8
Message-ID: <CAC0AYeYOkw2W553Dtr3yy7Q7LBy+K1gdS0OvFzRQNrzMD=WbBQ@mail.gmail.com>
Subject: Naj te Bog blagoslovi
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Naj te Bog blagoslovi

Lep pozdrav,

Z globokim spo=C5=A1tovanjem in poni=C5=BEnostjo vas prosim, da navedem
naslednjih nekaj vrstic v va=C5=A1o prijaznost, upam, da boste prihranili
nekaj svojih dragocenih minut in s so=C4=8Dutjem prebrali naslednji poziv.
Priznati moram, da vam pi=C5=A1em to e-po=C5=A1tno sporo=C4=8Dilo z velikim=
 upanjem,
veseljem in navdu=C5=A1enjem, za katerega vem in z vero verjamem, da vas
mora zagotovo najti v dobrem zdravstvenem stanju.

Sem gospodi=C4=8Dna Sandrina Omaru, h=C4=8Di pokojnega gospoda Williamsa
Omaruja. Pred smrtjo mojega o=C4=8Deta me je poklical in me obvestil, da
ima vsoto tri milijone =C5=A1eststo tiso=C4=8D evrov. (3.600.000,00 =E2=82=
=AC), ki jih
je polo=C5=BEil v zasebna banka tukaj v Abidjan Slonoko=C5=A1=C4=8Deni obal=
i.

Povedal mi je, da je denar polo=C5=BEil na moje ime, in mi dal tudi vse
potrebne pravne dokumente v zvezi s tem depozitom pri banki, jaz sem
dodiplomski =C5=A1tudij in res ne vem, kaj naj naredim. Zdaj =C5=BEelim
po=C5=A1tenega in BOGA boje=C4=8Dega partnerja v tujini, ki mu lahko prenes=
em ta
denar z njegovo pomo=C4=8Djo, in po transakciji bom pri=C5=A1el in stalno
prebival v va=C5=A1i dr=C5=BEavi do trenutka, ko bo primerno, da se vrnem d=
omov,
=C4=8De tako =C5=BEelja. To je zato, ker sem zaradi nenehne politi=C4=8Dne =
krize
tukaj na Slonoko=C5=A1=C4=8Deni obali utrpel veliko =C5=A1kode.

Prosim, upo=C5=A1tevajte to in se =C4=8Dim prej oglasite pri meni. Takoj po=
trdim
va=C5=A1o pripravljenost, poslal vam bom svojo sliko in vas obvestil o ve=
=C4=8D
podrobnostih v zvezi s to zadevo.

Prijazni pozdravi,
Gospa Sandrina Omaru
