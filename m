Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B40AC799EA7
	for <lists+devicetree@lfdr.de>; Sun, 10 Sep 2023 16:31:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236060AbjIJOb3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Sep 2023 10:31:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233471AbjIJOb2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Sep 2023 10:31:28 -0400
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD6C5CCD
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 07:31:23 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-58cd9d9dbf5so50234957b3.0
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 07:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1694356283; x=1694961083; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7pJN9mc8iAvRntmb6giuyrj5QZXjSHQSZCriCmz1SgI=;
        b=A1z/y/HQPskbi1DV6zCyEpWyMHtebj/RuzvF+i3DasnUkJikMWxFKWs/gkv4pZteEO
         GX2ZWFvsvCVylM4vuSMQtczie+vO3OO6BhPiPrzrgY8AFfocurNemZDxGQwRfWfjOGkv
         r7Nlc+GeiDWuuwtsj4pphUeG7zDX8NoKSptE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694356283; x=1694961083;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7pJN9mc8iAvRntmb6giuyrj5QZXjSHQSZCriCmz1SgI=;
        b=J6y+RQcDPnNNXOVmfSfUEP7F5JqPANaiwxl9HQlb4RdKnWy3INsh4Ovu4TZSklfDcq
         NluWPEaXYeJVefEWCVF3GPNJjP4AavDlYk++rVYkUiBG2H/17PJRsiOazLX9ti4+Q38n
         JVC/M6MF+cDmrO/BX0Nb235Tt4ygnNxgAL7RHs75fAwCHPNF/PNCac+ymTPxFvvJ3EMO
         H9PqVeJxO52xmyKa9g/o+7PZi0hyb+/Vkjf9bQDamRzbJzKFeSPDnR6B/2C9Po+UI1+e
         RKm3Y2I38Xt6zdWmBsPDceMlLDwvH+zgn0I6VbibrSJQT2OKlcFp9DnNFMLj7lae3tGK
         H4pg==
X-Gm-Message-State: AOJu0Yzgj5AYppdZ+12D4jyUmVQRk7wO8KPr9wHt6onrifyprzrHQ/z2
        7u+IexKlXhlFyPCKiw5gd5sCo+Rp77YZBQgnnTpdVg==
X-Google-Smtp-Source: AGHT+IGooaOYakHxDPnk2oGDAlpVLnyxSc6uNDPEuGDw/nYS0wqmfR2b8bLoKi8P5yI9KnpQpfXCrI5BYhOTlCuAqdI=
X-Received: by 2002:a0d:c605:0:b0:58f:bda3:7d9 with SMTP id
 i5-20020a0dc605000000b0058fbda307d9mr11456024ywd.26.1694356282958; Sun, 10
 Sep 2023 07:31:22 -0700 (PDT)
MIME-Version: 1.0
References: <20230904180513.923280-1-dario.binacchi@amarulasolutions.com> <738c3b54-1f42-454a-90be-505ceba7544b@app.fastmail.com>
In-Reply-To: <738c3b54-1f42-454a-90be-505ceba7544b@app.fastmail.com>
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date:   Sun, 10 Sep 2023 16:31:11 +0200
Message-ID: <CABGWkvrAdiVa9emp29YM84uSTCMUWGRmH61RziNJ+-mPun_1aA@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: dts: stm32: fix SDRAM size on stm32f469-disco
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     linux-kernel@vger.kernel.org,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Arnd,

On Sat, Sep 9, 2023 at 4:28=E2=80=AFPM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Mon, Sep 4, 2023, at 20:05, Dario Binacchi wrote:
> > The board is equipped with a 128Mbit SDRAM.
> > 128Mbit =3D 16 Mbyte =3D 16,777,216 bytes =3D 0x1000000.
> >
> > Fixes: 626e7ea00215 ("ARM: DT: stm32: move dma translation to board fil=
es")
> > Link: https://www.st.com/en/evaluation-tools/32f469idiscovery.html
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >
> > ---
> >
> >  arch/arm/boot/dts/st/stm32f469-disco.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/boot/dts/st/stm32f469-disco.dts
> > b/arch/arm/boot/dts/st/stm32f469-disco.dts
> > index cbbd521bf010..f173a5892b7d 100644
> > --- a/arch/arm/boot/dts/st/stm32f469-disco.dts
> > +++ b/arch/arm/boot/dts/st/stm32f469-disco.dts
> > @@ -84,7 +84,7 @@ vdd_dsi: vdd-dsi {
> >       };
> >
> >       soc {
> > -             dma-ranges =3D <0xc0000000 0x0 0x10000000>;
> > +             dma-ranges =3D <0xc0000000 0x0 0x1000000>;
> >       };
>
> The dma-ranges should be independent of the installed
> memory, they usually reflect the addressing capabilities
> of the bus, so this patch should not be needed.

Thank you for the explanation.

Question, could I then use this node to describe the installed memory?

memory@c0000000 {
            device_type =3D "memory";
            reg =3D <0xC0000000 0x1000000>;
};

I recently submitted this series to U-Boot
(https://patchwork.ozlabs.org/project/uboot/patch/20230903205703.662080-5-d=
ario.binacchi@amarulasolutions.com/),
and I would like to allocate the framebuffer by retrieving the correct
information from the device tree, without wiring anything in the code.

Thanks and regards,

Dario

>
>       Arnd



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com
