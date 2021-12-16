Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AF53476722
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 01:49:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbhLPAtv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 19:49:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbhLPAtv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 19:49:51 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C35AC061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 16:49:50 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 3F7E3B82252
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 00:49:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECCE7C36AE3
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 00:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639615788;
        bh=x6fwc5ds2nCJ9EszkWw3OxofRr4knkRUF3cZwlL4/Do=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=LG74abpZHVOb8UVimyPWHSpmkV/NN2IUmU9DoEUO1A3ElbZBUxNWas2ukW4uTgUDV
         +rCWrAokzbE3+wex/tnVdW3Lxz0jXWIXEGJ2QGDxzNm64kZYswFhRGMeG34alKsBbz
         gtgRVJRKEy30TsBXAq27MdfAdAeMyQOj01/962c8aGUxwU9HL/voLc7enOZuDXfwZK
         wkeq4wITuob62Kk5lbEHylAc5cDYo7covhG3757hx9pD7Z0FTZDXS0108Zfjepamrq
         heCr7lkqlXM7yomlntxevOfBnjvxZ5gV73R12VK/0HAIbypp05knc+MKTFjJCYWIpr
         4JKcabH7pLTZA==
Received: by mail-ed1-f47.google.com with SMTP id z9so25642685edb.5
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 16:49:47 -0800 (PST)
X-Gm-Message-State: AOAM531dKrEyaulld4rtdw9cIYEU4VNWzzaGtZZ0Cud0q+abT2b4ckLP
        +qP1zMKWz3gAWLQelL+e+eRlde9xFmiZxBwBCg==
X-Google-Smtp-Source: ABdhPJxEUlaktHPsqMFuVLazhV3hYVw3cv3W7fwwZi9ymDs0sVRmqpkTpyDrILf1Q+xRtg7FQiHlUjLs5ORD3tzWAKU=
X-Received: by 2002:a17:906:229b:: with SMTP id p27mr13503001eja.264.1639615786239;
 Wed, 15 Dec 2021 16:49:46 -0800 (PST)
MIME-Version: 1.0
References: <20211215152535.41200-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20211215152535.41200-1-u.kleine-koenig@pengutronix.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 15 Dec 2021 18:49:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKW3XJ6n5CLg_BNEaASkUnXLM=J_XZW8M6i7sGPuZ8_9A@mail.gmail.com>
Message-ID: <CAL_JsqKW3XJ6n5CLg_BNEaASkUnXLM=J_XZW8M6i7sGPuZ8_9A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: stm32: Add timer interrupts
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        "moderated list:ARM/STM32 ARCHITECTURE" 
        <linux-stm32@st-md-mailman.stormreply.com>,
        Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 15, 2021 at 9:37 AM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> The timer units in the stm32mp1 CPUs have interrupts, depending on the
> timer flavour either one "global" or four dedicated ones.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
>  .../bindings/mfd/st,stm32-timers.yaml         | 13 +++++++
>  arch/arm/boot/dts/stm32mp151.dtsi             | 34 +++++++++++++++++++
>  2 files changed, 47 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b=
/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> index 10b330d42901..5e4214d1613b 100644
> --- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> @@ -46,6 +46,19 @@ properties:
>      minItems: 1
>      maxItems: 7
>
> +  interrupts:
> +    maxItems: 4

Please test this against your dts change. It will fail.

You need a 'minItems: 1' otherwise 4 interrupts are always required.
Or more precisely, you can do:

oneOf:
  - maxItems: 1
  - maxItems: 4

> +
> +  interrupt-names:
> +    anyOf:

oneOf

> +      - items:
> +          - const: global
> +      - items:
> +          - const: brk
> +          - const: up
> +          - const: trg-com
> +          - const: cc
> +
>    "#address-cells":
>      const: 1
>
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32m=
p151.dtsi
> index 1cfc2f011e70..dab3972fcffd 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -127,6 +127,8 @@ timers2: timer@40000000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x40000000 0x400>;
> +                       interrupts =3D <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM2_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 18 0x400 0x1>,
> @@ -160,6 +162,8 @@ timers3: timer@40001000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x40001000 0x400>;
> +                       interrupts =3D <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM3_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 23 0x400 0x1>,
> @@ -194,6 +198,8 @@ timers4: timer@40002000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x40002000 0x400>;
> +                       interrupts =3D <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM4_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 29 0x400 0x1>,
> @@ -226,6 +232,8 @@ timers5: timer@40003000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x40003000 0x400>;
> +                       interrupts =3D <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM5_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 55 0x400 0x1>,
> @@ -260,6 +268,8 @@ timers6: timer@40004000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x40004000 0x400>;
> +                       interrupts =3D <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM6_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 69 0x400 0x1>;
> @@ -278,6 +288,8 @@ timers7: timer@40005000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x40005000 0x400>;
> +                       interrupts =3D <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM7_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 70 0x400 0x1>;
> @@ -296,6 +308,8 @@ timers12: timer@40006000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x40006000 0x400>;
> +                       interrupts =3D <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM12_K>;
>                         clock-names =3D "int";
>                         status =3D "disabled";
> @@ -318,6 +332,8 @@ timers13: timer@40007000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x40007000 0x400>;
> +                       interrupts =3D <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM13_K>;
>                         clock-names =3D "int";
>                         status =3D "disabled";
> @@ -340,6 +356,8 @@ timers14: timer@40008000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x40008000 0x400>;
> +                       interrupts =3D <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM14_K>;
>                         clock-names =3D "int";
>                         status =3D "disabled";
> @@ -605,6 +623,11 @@ timers1: timer@44000000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x44000000 0x400>;
> +                       interrupts =3D <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "brk", "up", "trg-com", "cc";
>                         clocks =3D <&rcc TIM1_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 11 0x400 0x1>,
> @@ -641,6 +664,11 @@ timers8: timer@44001000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x44001000 0x400>;
> +                       interrupts =3D <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "brk", "up", "trg-com", "cc";
>                         clocks =3D <&rcc TIM8_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 47 0x400 0x1>,
> @@ -725,6 +753,8 @@ timers15: timer@44006000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x44006000 0x400>;
> +                       interrupts =3D <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM15_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 105 0x400 0x1>,
> @@ -752,6 +782,8 @@ timers16: timer@44007000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x44007000 0x400>;
> +                       interrupts =3D <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM16_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 109 0x400 0x1>,
> @@ -776,6 +808,8 @@ timers17: timer@44008000 {
>                         #size-cells =3D <0>;
>                         compatible =3D "st,stm32-timers";
>                         reg =3D <0x44008000 0x400>;
> +                       interrupts =3D <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names =3D "global";
>                         clocks =3D <&rcc TIM17_K>;
>                         clock-names =3D "int";
>                         dmas =3D <&dmamux1 111 0x400 0x1>,
>
> base-commit: 0bafb8f3ebc84525d0ae0fcea22d12151b99312f
> --
> 2.33.0
>
