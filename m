Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 739F8627912
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 10:35:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235639AbiKNJfX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 04:35:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbiKNJfV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 04:35:21 -0500
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D080223
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 01:35:20 -0800 (PST)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-369426664f9so100454257b3.12
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 01:35:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ntnoq8gW8iSMVK5tWb4ZW4DHWr7as4v8ZeRI0cAnD4I=;
        b=6ZFPzIfB82K4IIC6MZthEzpaEPwoHymyCBYB0ktGQvq1eV1dN6/kaGak+ViB+Hmh4L
         UchJzmFQDEarXJAiJtYe4EuwQOi/od3wznpJCemQaaaAm9Z2xAqfwiAsrKQlMXAGPR82
         idGrY4YrWnXGqurv8B/aXxUadhTXAZnm1WOWOpwqCd4q0Thg0QBMCogSUWw6PUteKwCn
         7dFUvSeu2Z12sgXy7NKQpJ4IASTN8e9QjJDuFQj48BtpDCKcfvVYYGl23L1+Jzym14Ar
         VFox10HdpXTf5mM42+js7V5TqzXFTv0NvHAvGLPwZWINDspjiAft0F5WHuyn+/LdO/Rj
         hqaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ntnoq8gW8iSMVK5tWb4ZW4DHWr7as4v8ZeRI0cAnD4I=;
        b=qINoEwiYOuR4f/4YAquYb9tCBIzoRsyTQPloX2v7MQMTU+Wl1IuoniZv/R68eGEIKi
         xphK3/5yk55OJukzKPGSAOhojIk5YQnoD93dtRciPSQysKYUMpQaDJBDrctkj+2Ek0Ie
         QtxVYzv+4p4t1s5OqahZ44cjuTGLmcDjPS/nEs1hurNqFfvb6UgHT7/qeeYYzZnRbtc7
         MZJLakcg9jkHhhKa8lMewR+Z+KlDde6Y7cce94VrWW0Ph7iPye7lPZe0RrOwHlSZA6U2
         Yj9ubaPO2zct4QpwrxHwfUS89sicUhHlgFxd93w1ZnaYJMP4Lu+gkFeTXVz1reDVXxB1
         xBOw==
X-Gm-Message-State: ANoB5pmQNHR3Lujt6xqmaIwsyLO/yTPKuamunt6i20GTIrx072MjkFkO
        QPmLmNnOvgN+B1uxC3+q54WAb326XkDUhOuB7Va9IA==
X-Google-Smtp-Source: AA0mqf6J1cPh9pOE9NwrW1Heb1I0ZzioELZs9Re1u6pB02e7UZ4/7XEViAOY9IxQHOBZe4Oi3xxCHpSjzTMRBAwWnTo=
X-Received: by 2002:a81:1115:0:b0:36e:60bf:1af0 with SMTP id
 21-20020a811115000000b0036e60bf1af0mr12283566ywr.331.1668418519220; Mon, 14
 Nov 2022 01:35:19 -0800 (PST)
MIME-Version: 1.0
References: <20221108041400.157052-1-jagan@edgeble.ai> <20221108041400.157052-7-jagan@edgeble.ai>
 <137ac777-9ab4-3b3b-6155-99d77cfab30b@gmail.com>
In-Reply-To: <137ac777-9ab4-3b3b-6155-99d77cfab30b@gmail.com>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Mon, 14 Nov 2022 15:05:08 +0530
Message-ID: <CA+VMnFyViY102b7FF11eTAuPj=xYGFRDud3uw7FnYwHsTiHUFg@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 9 Nov 2022 at 01:47, Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Jagan, Heiko,
>
> Have a look at some comment below.
>
> Johan
>
> On 11/8/22 05:13, Jagan Teki wrote:
> > RV1126 is a high-performance vision processor SoC for IPC/CVR,
> > especially for AI related application.
> >
> > It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> > NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> > and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> > hybrid operation and computing power is up to 2.0TOPs.
> >
> > This patch add basic core dtsi support.
> >
> > Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v7:
> > - fix dtbs_check
> > - rearrange nodes
> > - remove Edegble in license text
> > Changes for v6:
> > - add psci node
> > Changes for v5:
> > - none
> > Changes for v4:
> > - update i2c0
> > - rebase on -next
> > Changes for v3:
> > - update cru and power file names
> > Changes for v2:
> > - split pinctrl in separate patch
> >
> >  arch/arm/boot/dts/rv1126.dtsi | 438 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 438 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
> >
> > diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> > new file mode 100644
> > index 000000000000..a485420551f5
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/rv1126.dtsi
> > @@ -0,0 +1,438 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> > + */
> > +
> > +#include <dt-bindings/clock/rockchip,rv1126-cru.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/power/rockchip,rv1126-power.h>
> > +#include <dt-bindings/soc/rockchip,boot-mode.h>
> > +
> > +/ {
> > +     #address-cells = <1>;
> > +     #size-cells = <1>;
> > +
> > +     compatible = "rockchip,rv1126";
> > +
>
> [..]
>
> > +     uart0: serial@ff560000 {
> > +             compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> > +             reg = <0xff560000 0x100>;
> > +             interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> > +             clock-frequency = <24000000>;
> > +             clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
> > +             clock-names = "baudclk", "apb_pclk";
>
> > +             dmas = <&dmac 5>, <&dmac 4>;
>
>                 dma-names = "tx", "rx";
>
> DT describes hardware.
> Maybe add some dma-names ?

I think these are possible to add.

>
> ===
>
> 4 UART0 RX High level
> 5 UART0 TX High level
>
> 6 UART1 RX High level
> 7 UART1 TX High level
>
> 8 UART2 RX High level
> 9 UART2 TX High level
>
> 10 UART3 RX High level
> 11 UART3 TX High level
>
> 12 UART4 RX High level
> 13 UART4 TX High level
>
> 14 UART5 RX High level
> 15 UART5 TX High level
>
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&uart0_xfer>;
> > +             reg-shift = <2>;
> > +             reg-io-width = <4>;
> > +             status = "disabled";
> > +     };
>
>
> [..]
>
>
> > +
> > +     timer: timer@ff660000 {
>
> timer0: timer@ff660000 {
>
> This is the first of 6 timers. Change label.

Okay.

>
> > +             compatible = "rockchip,rv1126-timer", "rockchip,rk3288-timer";
> > +             reg = <0xff660000 0x20>;
> > +             interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks = <&cru PCLK_TIMER>, <&cru CLK_TIMER0>;
> > +             clock-names = "pclk", "timer";
> > +     };
>
> Add possible more timer nodes ?

I think it is okay to go with timer0 in this basic version patchset,
will keep adding it in future patches.

Jagan.
