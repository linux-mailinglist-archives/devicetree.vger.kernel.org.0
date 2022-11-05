Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A652861D888
	for <lists+devicetree@lfdr.de>; Sat,  5 Nov 2022 08:36:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbiKEHgP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Nov 2022 03:36:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiKEHgO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Nov 2022 03:36:14 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E75A7B1C3
        for <devicetree@vger.kernel.org>; Sat,  5 Nov 2022 00:36:11 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-333a4a5d495so62076707b3.10
        for <devicetree@vger.kernel.org>; Sat, 05 Nov 2022 00:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jlmiIOwafDWnkfyxWdxL+5D5lq9WI28Q4bwHZeIJ1AI=;
        b=tHkeR2TOozplA9v0SSve6UfNH8lfQOKjqhAllAoCPw8mUCHKh+QBU6ZiJqWgdmF3nP
         3Cqgka4JdXI9hwKTZJwUQG7EFokk4ZCUckrL6bheCOTlMmwyqX++N/xOeMx6pIsyCfdW
         /NmzyRXhW5gYUeQjY/rTInlGyWRJQMW8ArhsLSs5LKAzykM2sZ3YxYF0px3AR5de/ee0
         wGLPVF44aXS07RxYFSWEJSsHIDn44T4MkTRqP2R2sHssOg41RLOInLMcinaYraitueYM
         N2UXlVDLiphPqHIPMi8ca/ktI7p1FSe98/Tj9TWidC7Dx6vpl8+VulJTD5cyxaSyr1Ix
         TsFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jlmiIOwafDWnkfyxWdxL+5D5lq9WI28Q4bwHZeIJ1AI=;
        b=srxjO/OEJyj/Zdo/VLfteXD/FSteVzK8ss7qe7cxwruswH+xyxZixcr3Nege/PYC6V
         hMaTQK72mniD+uJXpUtbvDGUIh+aNmf8ra+Qpu2SaA/TnRqe63E9Jb1CdxPqWI6lXIM+
         0qlZ7VQUryUPxAK8fDkxYm71XewqJG3R3zJ8Vyz8SMIreAUEghTr/Ja/XlY4MOMTnaeD
         R+tbehYXG85uW/6I68Xlldnn6g2PB5oNUwKpc/7fx0DdDZ4HfQdKg1tg6RnZUdh4wEKB
         J+bnZs5xmeXkJYHMYnbktHf0OysIbTwHwvd60z2sxpSEDHZKnmzpQbpQUzpy0PCVaVPt
         g9+A==
X-Gm-Message-State: ACrzQf35IDCSMUpsvSuTiBm4qXIH1JqA2q+bpQ8U1DUPdvL0WAPxMo70
        lGoJcNFO5nTVwfevJqNQ85kwZK+9/rcXHXSK5Crkrw==
X-Google-Smtp-Source: AMsMyM48Yc31/tGZfVjEcpf4gEpGHOQ9Glwb0e2vSolg3iP9dobJ84HLOLqF5ia+c/q0ghZD4qllp+tNs4o1OkBhuZM=
X-Received: by 2002:a0d:dd49:0:b0:36b:f81c:ceb8 with SMTP id
 g70-20020a0ddd49000000b0036bf81cceb8mr38579150ywe.171.1667633770983; Sat, 05
 Nov 2022 00:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <20221102124607.297083-1-jagan@edgeble.ai> <20221102124607.297083-2-jagan@edgeble.ai>
 <153f4c5f-32d8-2b00-78fb-230beb3bb7b1@gmail.com>
In-Reply-To: <153f4c5f-32d8-2b00-78fb-230beb3bb7b1@gmail.com>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Sat, 5 Nov 2022 13:05:59 +0530
Message-ID: <CA+VMnFw4826Jvm0pOEHm6bqZJvp9BX0xNWAkQsA5Qe56X6pehw@mail.gmail.com>
Subject: Re: [PATCH v6 2/6] ARM: dts: rockchip: Add Rockchip RV1126 SoC
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

Hi Johan,

On Fri, 4 Nov 2022 at 16:12, Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Jagan,
>
> When I run this command below I get a lot text on my screen.
> Could you fix them all?
> Some more comments below.
>
> Johan
>
> ===
>
> ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make dtbs_check
>
> On 11/2/22 13:46, Jagan Teki wrote:
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
> >  arch/arm/boot/dts/rv1126.dtsi | 439 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 439 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
> >
> > diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> > new file mode 100644
> > index 000000000000..867f17ab0efd
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/rv1126.dtsi
> > @@ -0,0 +1,439 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
>
> > + * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
>
> Is this an advertisement?

Not really, add since we made our real efforts to place this on the
upstream tree. Which indeed make sense I think.

> Maybe remove?
> Was there added substantial new code?
> Compared to the original there was mainly parts removed, sorted and restyled here and there I think.

Mostly, yes for now.

>
> https://github.com/rockchip-linux/kernel/blob/develop-5.10/arch/arm/boot/dts/rv1126.dtsi
>
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
> > +     interrupt-parent = <&gic>;
> > +
>
> > +     aliases {
> > +             i2c0 = &i2c0;
> > +             serial0 = &uart0;
> > +             serial1 = &uart1;
> > +             serial2 = &uart2;
> > +             serial3 = &uart3;
> > +             serial4 = &uart4;
> > +             serial5 = &uart5;
> > +     };
>
> Comment by Krzysztof:
> https://lore.kernel.org/all/f2652e0e-fb08-efb4-e25a-36a335f0c457@linaro.org/
>
> No, not only mmc. UART, I2C, SPI - all of these should go to the board.
>
> Comment by Arnd:
> https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=crEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/
>
> Each board should have its own aliases node that describes
> exactly which of the devices are wired up on that board, and
> in which order. If there are connectors on the board that
> are labeled in some form, then the aliases are meant to
> match what is written on the board or in its documentation.

I'm not sure whether it would apply to all arch/boards, let Heiko or
someone comment.

> > +
> > +     cpus {
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +
> > +             cpu0: cpu@f00 {
> > +                     device_type = "cpu";
> > +                     compatible = "arm,cortex-a7";
> > +                     reg = <0xf00>;
> > +                     enable-method = "psci";
> > +                     clocks = <&cru ARMCLK>;
> > +             };
> > +
> > +             cpu1: cpu@f01 {
> > +                     device_type = "cpu";
> > +                     compatible = "arm,cortex-a7";
> > +                     reg = <0xf01>;
> > +                     enable-method = "psci";
> > +                     clocks = <&cru ARMCLK>;
> > +             };
> > +
> > +             cpu2: cpu@f02 {
> > +                     device_type = "cpu";
> > +                     compatible = "arm,cortex-a7";
> > +                     reg = <0xf02>;
> > +                     enable-method = "psci";
> > +                     clocks = <&cru ARMCLK>;
> > +             };
> > +
> > +             cpu3: cpu@f03 {
> > +                     device_type = "cpu";
> > +                     compatible = "arm,cortex-a7";
> > +                     reg = <0xf03>;
> > +                     enable-method = "psci";
> > +                     clocks = <&cru ARMCLK>;
> > +             };
> > +     };
> > +
> > +     arm-pmu {
> > +             compatible = "arm,cortex-a7-pmu";
> > +             interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
> > +                          <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
> > +                          <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
> > +                          <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
> > +             interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> > +     };
> > +
> > +     psci {
> > +             compatible = "arm,psci-1.0";
> > +             method = "smc";
> > +     };
> > +
> > +     timer {
> > +             compatible = "arm,armv7-timer";
> > +             interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> > +                          <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> > +                          <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> > +                          <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
> > +             clock-frequency = <24000000>;
> > +     };
> > +
> > +     xin24m: oscillator {
> > +             compatible = "fixed-clock";
> > +             clock-frequency = <24000000>;
> > +             clock-output-names = "xin24m";
> > +             #clock-cells = <0>;
> > +     };
> > +
> > +     grf: syscon@fe000000 {
> > +             compatible = "rockchip,rv1126-grf", "syscon", "simple-mfd";
> > +             reg = <0xfe000000 0x20000>;
> > +     };
> > +
> > +     pmugrf: syscon@fe020000 {
> > +             compatible = "rockchip,rv1126-pmugrf", "syscon", "simple-mfd";
> > +             reg = <0xfe020000 0x1000>;
> > +
> > +             pmu_io_domains: io-domains {
> > +                     compatible = "rockchip,rv1126-pmu-io-voltage-domain";
> > +                     status = "disabled";
> > +             };
> > +     };
> > +
> > +     qos_emmc: qos@fe860000 {
> > +             compatible = "rockchip,rv1126-qos", "syscon";
> > +             reg = <0xfe860000 0x20>;
> > +     };
> > +
> > +     qos_nandc: qos@fe860080 {
> > +             compatible = "rockchip,rv1126-qos", "syscon";
> > +             reg = <0xfe860080 0x20>;
> > +     };
> > +
> > +     qos_sfc: qos@fe860200 {
> > +             compatible = "rockchip,rv1126-qos", "syscon";
> > +             reg = <0xfe860200 0x20>;
> > +     };
> > +
> > +     qos_sdio: qos@fe86c000 {
> > +             compatible = "rockchip,rv1126-qos", "syscon";
> > +             reg = <0xfe86c000 0x20>;
> > +     };
> > +
> > +     gic: interrupt-controller@feff0000 {
> > +             compatible = "arm,gic-400";
> > +             interrupt-controller;
> > +             #interrupt-cells = <3>;
> > +             #address-cells = <0>;
> > +
> > +             reg = <0xfeff1000 0x1000>,
> > +                   <0xfeff2000 0x2000>,
> > +                   <0xfeff4000 0x2000>,
> > +                   <0xfeff6000 0x2000>;
> > +             interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
> > +     };
> > +
> > +     pmu: power-management@ff3e0000 {
>
> > +             compatible = "rockchip,rv1126-pmu", "syscon", "simple-mfd";
>
> arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb:0:0: /power-management@ff3e0000: failed to match any schema with compatible: ['rockchip,rv1126-pmu', 'syscon', 'simple-mfd']
>
>
> > +             reg = <0xff3e0000 0x1000>;
> > +
> > +             power: power-controller {
> > +                     compatible = "rockchip,rv1126-power-controller";
> > +                     #power-domain-cells = <1>;
> > +                     #address-cells = <1>;
> > +                     #size-cells = <0>;
> > +
> > +                     power-domain@RV1126_PD_NVM {
> > +                             reg = <RV1126_PD_NVM>;
> > +                             clocks = <&cru HCLK_EMMC>,
> > +                                      <&cru CLK_EMMC>,
> > +                                      <&cru HCLK_NANDC>,
> > +                                      <&cru CLK_NANDC>,
> > +                                      <&cru HCLK_SFC>,
> > +                                      <&cru HCLK_SFCXIP>,
> > +                                      <&cru SCLK_SFC>;
> > +                             pm_qos = <&qos_emmc>,
> > +                                      <&qos_nandc>,
> > +                                      <&qos_sfc>;
> > +                             #power-domain-cells = <0>;
> > +                     };
> > +
> > +                     power-domain@RV1126_PD_SDIO {
> > +                             reg = <RV1126_PD_SDIO>;
> > +                             clocks = <&cru HCLK_SDIO>,
> > +                                      <&cru CLK_SDIO>;
> > +                             pm_qos = <&qos_sdio>;
> > +                             #power-domain-cells = <0>;
> > +                     };
> > +             };
> > +     };
> > +
> > +     i2c0: i2c@ff3f0000 {
> > +             compatible = "rockchip,rv1126-i2c", "rockchip,rk3399-i2c";
> > +             reg = <0xff3f0000 0x1000>;
> > +             interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> > +             rockchip,grf = <&pmugrf>;
> > +             clocks = <&pmucru CLK_I2C0>, <&pmucru PCLK_I2C0>;
> > +             clock-names = "i2c", "pclk";
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&i2c0_xfer>;
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +             status = "disabled";
> > +     };
> > +
>
> > +     dmac: dma-controller@ff4e0000 {
>
> Sort nodes with reg property on reg address.
>
> > +             compatible = "arm,pl330", "arm,primecell";
> > +             reg = <0xff4e0000 0x4000>;
> > +             interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
> > +                          <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
> > +             #dma-cells = <1>;
> > +             arm,pl330-periph-burst;
> > +             clocks = <&cru ACLK_DMAC>;
> > +             clock-names = "apb_pclk";
> > +     };
> > +
> > +     uart1: serial@ff410000 {
> > +             compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> > +             reg = <0xff410000 0x100>;
> > +             interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
> > +             clock-frequency = <24000000>;
> > +             clocks = <&pmucru SCLK_UART1>, <&pmucru PCLK_UART1>;
> > +             clock-names = "baudclk", "apb_pclk";
> > +             dmas = <&dmac 7>, <&dmac 6>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&uart1m0_xfer>;
> > +             reg-shift = <2>;
> > +             reg-io-width = <4>;
> > +             status = "disabled";
> > +     };
> > +
> > +     pmucru: clock-controller@ff480000 {
> > +             compatible = "rockchip,rv1126-pmucru";
> > +             reg = <0xff480000 0x1000>;
> > +             rockchip,grf = <&grf>;
> > +             #clock-cells = <1>;
> > +             #reset-cells = <1>;
> > +     };
> > +
> > +     cru: clock-controller@ff490000 {
> > +             compatible = "rockchip,rv1126-cru";
> > +             reg = <0xff490000 0x1000>;
> > +             clocks = <&xin24m>;
> > +             clock-names = "xin24m";
> > +             rockchip,grf = <&grf>;
> > +             #clock-cells = <1>;
> > +             #reset-cells = <1>;
> > +     };
> > +
> > +     uart0: serial@ff560000 {
> > +             compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> > +             reg = <0xff560000 0x100>;
> > +             interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> > +             clock-frequency = <24000000>;
> > +             clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
> > +             clock-names = "baudclk", "apb_pclk";
> > +             dmas = <&dmac 5>, <&dmac 4>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&uart0_xfer>;
> > +             reg-shift = <2>;
> > +             reg-io-width = <4>;
> > +             status = "disabled";
> > +     };
> > +
> > +     uart2: serial@ff570000 {
> > +             compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> > +             reg = <0xff570000 0x100>;
> > +             interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
> > +             clock-frequency = <24000000>;
> > +             clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
> > +             clock-names = "baudclk", "apb_pclk";
> > +             dmas = <&dmac 9>, <&dmac 8>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&uart2m1_xfer>;
> > +             reg-shift = <2>;
> > +             reg-io-width = <4>;
> > +             status = "disabled";
> > +     };
> > +
> > +     uart3: serial@ff580000 {
> > +             compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> > +             reg = <0xff580000 0x100>;
> > +             interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> > +             clock-frequency = <24000000>;
> > +             clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
> > +             clock-names = "baudclk", "apb_pclk";
> > +             dmas = <&dmac 11>, <&dmac 10>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&uart3m0_xfer>;
> > +             reg-shift = <2>;
> > +             reg-io-width = <4>;
> > +             status = "disabled";
> > +     };
> > +
> > +     uart4: serial@ff590000 {
> > +             compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> > +             reg = <0xff590000 0x100>;
> > +             interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
> > +             clock-frequency = <24000000>;
> > +             clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
> > +             clock-names = "baudclk", "apb_pclk";
> > +             dmas = <&dmac 13>, <&dmac 12>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&uart4m0_xfer>;
> > +             reg-shift = <2>;
> > +             reg-io-width = <4>;
> > +             status = "disabled";
> > +     };
> > +
> > +     uart5: serial@ff5a0000 {
> > +             compatible = "rockchip,rv1126-uart", "snps,dw-apb-uart";
> > +             reg = <0xff5a0000 0x100>;
> > +             interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
> > +             clock-frequency = <24000000>;
> > +             clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
> > +             dmas = <&dmac 15>, <&dmac 14>;
> > +             clock-names = "baudclk", "apb_pclk";
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&uart5m0_xfer>;
> > +             reg-shift = <2>;
> > +             reg-io-width = <4>;
> > +             status = "disabled";
> > +     };
> > +
> > +     saradc: saradc@ff5e0000 {
>
> > +             compatible = "rockchip,rk3399-saradc";
>
> compatible = "rockchip,rv1126-saradc", "rockchip,rk3399-saradc";
>
> Add to document.
>
> > +             reg = <0xff5e0000 0x100>;
> > +             interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > +             #io-channel-cells = <1>;
> > +             clocks = <&cru CLK_SARADC>, <&cru PCLK_SARADC>;
> > +             clock-names = "saradc", "apb_pclk";
> > +             resets = <&cru SRST_SARADC_P>;
> > +             reset-names = "saradc-apb";
> > +             status = "disabled";
> > +     };
> > +
> > +     timer: timer@ff660000 {
>
> > +             compatible = "rockchip,rk3288-timer";
>
> compatible = "rockchip,rv1126-timer", "rockchip,rk3288-timer";
>
> Add to document after my patch:
>
> [PATCH v2 2/4] dt-bindings: timer: rockchip: add rockchip,rk3128-timer
> https://lore.kernel.org/linux-rockchip/0e57f38f-bace-8556-7258-aa0b3c0ac103@gmail.com/T/#u

It is better to be on the upstream tree as the code base instead of
intermediate dependencies, Heiko might take care of these conflicts
while applying.

>
> > +             reg = <0xff660000 0x20>;
> > +             interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks = <&cru PCLK_TIMER>, <&cru CLK_TIMER0>;
> > +             clock-names = "pclk", "timer";
> > +     };
> > +
> > +     emmc: mmc@ffc50000 {
> > +             compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
> > +             reg = <0xffc50000 0x4000>;
> > +             interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> > +             clocks = <&cru HCLK_EMMC>, <&cru CLK_EMMC>,
> > +                      <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
> > +             clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> > +             fifo-depth = <0x100>;
> > +             max-frequency = <200000000>;
>
> > +             power-domains = <&power RV1126_PD_NVM>;
>
> /arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: mmc@ffc50000: Unevaluated properties are not allowed ('power-domains' was unexpected)
>         From schema: /Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
>
> Add power-domains property to rockchip-dw-mshc.yaml.

Thanks, along with the rest of them will fix it in the next version.

Jagan.
