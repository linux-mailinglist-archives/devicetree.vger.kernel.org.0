Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CACED74FF20
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 08:18:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231853AbjGLGSo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 02:18:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231557AbjGLGSn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 02:18:43 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD3A910D2
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 23:18:41 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-57722942374so76932937b3.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 23:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1689142721; x=1691734721;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3UcQnC6XJzlnBm/ohIqlFQ7AujbAuynZNi/RKUXh2qI=;
        b=VtqX1eUcALhqoeJ19D0Agh84NQLT8VLTnTTh6WuOE4FSY5WZOT2y9ENKXIY0cL0fi7
         Hw94ksyrq+f1ItUFA5cbM1IV+ztHYhPF078lCznoJwCEnJcmeTJ3VGyPT00OD49rHCXh
         dFmZOI9XNJZkRaZJiEqyEQZVnI8LJ53267v+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689142721; x=1691734721;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3UcQnC6XJzlnBm/ohIqlFQ7AujbAuynZNi/RKUXh2qI=;
        b=efOrNdWLC7p4Y7riiW/th7NVi3g6KQJSgw8tR8C6G3lGoVDiBUM8ScIzK3ISljUuYc
         U8THqjHEEDbQJpSPuTIyA/lEMtU2IBrOhoZdU8oAFy6jPOh9X39lafJpOztcySk14BGN
         tx7Tmzy3yf+EO1mWpkQlIkk+qBme5V9NVYfdq5pL3jTO98/XUXLQ4eqAg2nJqQDXnMZM
         PYjhReh59HliBU+7UHqvoFxl39w371FUCDMwpeuxPJAzcPf/EShYXlYLkt7XqNd4OijP
         dyke5IYF6npsxvLRituK3eHb+hPCH0UbsiGQQfPMQwZaaxHrRbBNnjJ16+M7ofwQpthQ
         rcWw==
X-Gm-Message-State: ABy/qLbVCCuWCPabDxHQldTO79zrf7aeijUEmiw8tCBcgLjA61RhF2Ko
        uy7jjkXOUqtYjtLC9WZliSKe5ELXulWRDCJHk0ZUpA==
X-Google-Smtp-Source: APBJJlHY1IbnRRAm/Qj9tQjHFFbO9MWz4j4dqbzCFNB9i/b3OpaXq7yxG9EAIw7QaGIDo+b5F3MDRDZIDj5tNn4YyUw=
X-Received: by 2002:a0d:dcc4:0:b0:55a:8c02:c00b with SMTP id
 f187-20020a0ddcc4000000b0055a8c02c00bmr18097989ywe.25.1689142720925; Tue, 11
 Jul 2023 23:18:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230629083726.84910-1-dario.binacchi@amarulasolutions.com>
 <20230629083726.84910-4-dario.binacchi@amarulasolutions.com> <abff4a25-a178-7eb7-1576-a94b0a57a896@foss.st.com>
In-Reply-To: <abff4a25-a178-7eb7-1576-a94b0a57a896@foss.st.com>
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date:   Wed, 12 Jul 2023 08:18:29 +0200
Message-ID: <CABGWkvo5nYDJvkOAs=kSFs7-7FUmWKQ0eCunrkEdF6Fk2btEgA@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] ARM: dts: stm32: support display on
 stm32f746-disco board
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc:     linux-kernel@vger.kernel.org, michael@amarulasolutions.com,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Philippe Cornu <philippe.cornu@foss.st.com>,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexandre,

On Tue, Jul 11, 2023 at 2:13=E2=80=AFPM Alexandre TORGUE
<alexandre.torgue@foss.st.com> wrote:
>
> Hi Dario
>
> On 6/29/23 10:37, Dario Binacchi wrote:
> > Add support to Rocktech RK043FN48H display on stm32f746-disco board.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >
> > ---
> >
> > Changes in v5:
> > I am confident that framebuffer sizing is a real requirement for STM32 =
boards,
> > but I need some time to understand if and how to introduce this functio=
nality.
> > Therefore, I drop the following patches to allow the series to be fully=
 merged:
> >   - [4/6] dt-bindings: display: stm32-ltdc: add optional st,fb-bpp prop=
erty
> >   - [5/6] ARM: dts: stm32: set framebuffer bit depth on stm32f746-disco
> >   - [6/6] drm/stm: set framebuffer bit depth through DTS property
> >
> > Changes in v4:
> > - Use DTS property instead of module parameter to set the framebuffer b=
it depth.
> >
> > Changes in v3:
> > - drop [4/6] dt-bindings: display: simple: add Rocktech RK043FN48H
> >    Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm=
-misc-next):
> >    https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3Dc42a37a27c777=
d63961dd634a30f7c887949491a
> > - drop [5/6] drm/panel: simple: add support for Rocktech RK043FN48H pan=
el
> >    Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm=
-misc-next)
> >    https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3D13cdd12a9f934=
158f4ec817cf048fcb4384aa9dc
> >
> >   arch/arm/boot/dts/stm32f746-disco.dts | 51 ++++++++++++++++++++++++++=
+
> >   1 file changed, 51 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/stm32f746-disco.dts b/arch/arm/boot/dts/=
stm32f746-disco.dts
> > index c11616ed5fc6..cda423b6a874 100644
> > --- a/arch/arm/boot/dts/stm32f746-disco.dts
> > +++ b/arch/arm/boot/dts/stm32f746-disco.dts
> > @@ -60,10 +60,41 @@ memory@c0000000 {
> >               reg =3D <0xC0000000 0x800000>;
> >       };
> >
> > +     reserved-memory {
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <1>;
> > +             ranges;
> > +
> > +             linux,cma {
> > +                     compatible =3D "shared-dma-pool";
> > +                     no-map;
> > +                     size =3D <0x80000>;
> > +                     linux,dma-default;
> > +             };
> > +     };
> > +
> >       aliases {
> >               serial0 =3D &usart1;
> >       };
> >
> > +     backlight: backlight {
> > +             compatible =3D "gpio-backlight";
> > +             gpios =3D <&gpiok 3 GPIO_ACTIVE_HIGH>;
> > +             status =3D "okay";
> > +     };
> > +
> > +     panel_rgb: panel-rgb {
> > +             compatible =3D "rocktech,rk043fn48h";
> > +             backlight =3D <&backlight>;
> > +             enable-gpios =3D <&gpioi 12 GPIO_ACTIVE_HIGH>;
> > +             status =3D "okay";
> > +             port {
> > +                     panel_in_rgb: endpoint {
> > +                             remote-endpoint =3D <&ltdc_out_rgb>;
> > +                     };
> > +             };
> > +     };
> > +
> >       usbotg_hs_phy: usb-phy {
> >               #phy-cells =3D <0>;
> >               compatible =3D "usb-nop-xceiv";
> > @@ -99,6 +130,26 @@ &i2c1 {
> >       status =3D "okay";
> >   };
> >
> > +&dma1 {
> > +     status =3D "okay";
> > +};
> > +
> > +&dma2 {
> > +     status =3D "okay";
> >
> Why do you enable DMAs ? It seems not used by LTDC.

You're right, I'll send version 6 shortly with the removal of DMA.

Thanks and regards,
Dario

>
> > +&ltdc {
> > +     pinctrl-0 =3D <&ltdc_pins_a>;
> > +     pinctrl-names =3D "default";
> > +     status =3D "okay";
> > +
> > +     port {
> > +             ltdc_out_rgb: endpoint {
> > +                     remote-endpoint =3D <&panel_in_rgb>;
> > +             };
> > +     };
> > +};
> > +
> >   &sdio1 {
> >       status =3D "okay";
> >       vmmc-supply =3D <&mmc_vcard>;
>


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
