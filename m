Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBCE162FC11
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 18:56:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232926AbiKRR4M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 12:56:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241597AbiKRR4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 12:56:07 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 825D26E572
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 09:56:00 -0800 (PST)
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 194273F1C4
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 17:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1668794159;
        bh=0Yx4LwoxGO4gELBT8j84eKvAZSVRQJCcfAAZoOkW6xo=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=QZ//FurYMEjnt/4UOOWuMKVe3PV50AWfL9EHNndvwqwABHuz0dQh1Um8ScgziQ6fq
         z8fpHpMaUceAQDKU86BPnoW2CME3CvIkQ+MLGAa6W0rQcSPt/Rqb8TNTkLXi/16y1k
         alEeINqRZzG4U7W7xIN7ft65PfS/FfsyGPtTkc/Eo4FvRKI/eYqw1fkkoCsQZ2NUnk
         9vv8nJHLZD7SrRFyBlhW1wsZGGQeaCQHE50/R9l/8+Mxt5nCk1kUUrDsTzbb1/CN4K
         +532bF6r3TXbuXBbb7Vxku3kr2/Mflq9fD6OntYHRNh8Crr4a6utr7dZZom6Gl7meL
         ktcis7dEr1dTw==
Received: by mail-yb1-f199.google.com with SMTP id y6-20020a25b9c6000000b006c1c6161716so5028178ybj.8
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 09:55:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Yx4LwoxGO4gELBT8j84eKvAZSVRQJCcfAAZoOkW6xo=;
        b=8CQnipfSf1Dk1MArFy5VPqHBrvgZ2AjVlQbqDtbOTIIk41oMtbNVlqGxCSNKVilMHc
         FqE8bEiz/OROZLgWZZ+v8Exxv/AFw+m2CpIlGR5Tv/qn0UhK27QZIjNM6S2LMiHzEX99
         zA14sYLyoRpPxji1jC9gF4Z7K3tJ0lOmy691TiBTUSJ9H09bE/euxUrH+xuI5FIKpKIU
         UU2zt34WfJZPyl7OX3NZd7h3JUQGCb3Jz7anJwk3Av3Puz0JyJxFQfvJONvc3DG6jkvg
         zNAs+INYLPxUdlGolJ01QF72qRV2bQ5bwGTeo0XEZYVVlLLYmKvtqWV20IIy8JzGXbet
         PPxA==
X-Gm-Message-State: ANoB5pmtDU0KHb229r39oX9xE4k3id0Tg3OjBX2fkMZLntKznjCprpXc
        HbMWV+EVUUQ1NNTyi91hiCADS68WxExAk3YSp6UiC31d0QF1bNeQbPgYXt7AbuH3UehtoKrPPfd
        v0xqkQwBjOKFV1Wr0tdvm5i8uV7e1oWVCIS78tlsy9NguTA2U57fHlYw=
X-Received: by 2002:a81:9a0b:0:b0:370:2d3:c361 with SMTP id r11-20020a819a0b000000b0037002d3c361mr7429925ywg.251.1668794157274;
        Fri, 18 Nov 2022 09:55:57 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4X/I6qvXUaj8j659xYAf6Xh78fhOeaJMLEVRA7IEhZ0OhKSxtwJeWXI961OdXwiSzv2eekCAOkOn6eBdnAOrs=
X-Received: by 2002:a81:9a0b:0:b0:370:2d3:c361 with SMTP id
 r11-20020a819a0b000000b0037002d3c361mr7429904ywg.251.1668794157042; Fri, 18
 Nov 2022 09:55:57 -0800 (PST)
MIME-Version: 1.0
References: <20221118011714.70877-1-hal.feng@starfivetech.com> <20221118011714.70877-8-hal.feng@starfivetech.com>
In-Reply-To: <20221118011714.70877-8-hal.feng@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Fri, 18 Nov 2022 18:55:40 +0100
Message-ID: <CAJM55Z-rdicV69otq=YFsTSUNsg==Svf18b+3w-cMfb_BYcbGg@mail.gmail.com>
Subject: Re: [PATCH v2 7/8] riscv: dts: starfive: Add StarFive JH7110
 VisionFive2 board device tree
To:     Hal Feng <hal.feng@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Ben Dooks <ben.dooks@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Nov 2022 at 02:17, Hal Feng <hal.feng@starfivetech.com> wrote:
>
> From: Emil Renner Berthing <kernel@esmil.dk>
>
> Add a minimal device tree for StarFive JH7110 VisionFive2 board.
Missing space between VisionFive and 2.

> Support booting and basic clock/reset/pinctrl/uart drivers.
>
> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> Co-developed-by: Jianlong Huang <jianlong.huang@starfivetech.com>
> Signed-off-by: Jianlong Huang <jianlong.huang@starfivetech.com>
> Co-developed-by: Hal Feng <hal.feng@starfivetech.com>
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/Makefile         |   1 +
>  .../jh7110-starfive-visionfive-v2.dts         | 116 ++++++++++++++++++
>  2 files changed, 117 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-v2.dts
>
> diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/starfive/Makefile
> index 0ea1bc15ab30..e1237dbc6aac 100644
> --- a/arch/riscv/boot/dts/starfive/Makefile
> +++ b/arch/riscv/boot/dts/starfive/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0
>  dtb-$(CONFIG_SOC_STARFIVE) += jh7100-beaglev-starlight.dtb
> +dtb-$(CONFIG_SOC_STARFIVE) += jh7110-starfive-visionfive-v2.dtb
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-v2.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-v2.dts
> new file mode 100644
> index 000000000000..c8946cf3a268
> --- /dev/null
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-v2.dts
> @@ -0,0 +1,116 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2022 StarFive Technology Co., Ltd.
> + * Copyright (C) 2022 Emil Renner Berthing <kernel@esmil.dk>
> + */
> +
> +/dts-v1/;
> +#include "jh7110.dtsi"
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/pinctrl-starfive-jh7110.h>
> +
> +/ {
> +       model = "StarFive VisionFive V2";
> +       compatible = "starfive,visionfive-v2", "starfive,jh7110";

Again, please consult your colleagues if you're calling the board
"VisionFive 2" or "VisionFive V2" and name the file, model and board
accordingly.

> +       aliases {
> +               serial0 = &uart0;
> +       };
> +
> +       chosen {
> +               linux,initrd-start = <0x46100000>;
> +               linux,initrd-end = <0x4c000000>;

These two lines don't belong here. They're added by the bootloader dynamically.

> +               stdout-path = "serial0:115200";

You're missing a n8.

> +       };
> +
> +       cpus {
> +               timebase-frequency = <4000000>;
> +       };
> +
> +       memory@40000000 {
> +               device_type = "memory";
> +               reg = <0x0 0x40000000 0x1 0x0>;
> +       };
> +
> +       gpio-restart {
> +               compatible = "gpio-restart";
> +               gpios = <&gpio 35 GPIO_ACTIVE_HIGH>;
> +               priority = <224>;
> +       };
> +};
> +
> +&osc {
> +       clock-frequency = <24000000>;
> +};
> +
> +&clk_rtc {
> +       clock-frequency = <32768>;
> +};
> +
> +&gmac0_rmii_refin {
> +       clock-frequency = <50000000>;
> +};
> +
> +&gmac0_rgmii_rxin {
> +       clock-frequency = <125000000>;
> +};
> +
> +&gmac1_rmii_refin {
> +       clock-frequency = <50000000>;
> +};
> +
> +&gmac1_rgmii_rxin {
> +       clock-frequency = <125000000>;
> +};
> +
> +&i2stx_bclk_ext {
> +       clock-frequency = <12288000>;
> +};
> +
> +&i2stx_lrck_ext {
> +       clock-frequency = <192000>;
> +};
> +
> +&i2srx_bclk_ext {
> +       clock-frequency = <12288000>;
> +};
> +
> +&i2srx_lrck_ext {
> +       clock-frequency = <192000>;
> +};
> +
> +&tdm_ext {
> +       clock-frequency = <49152000>;
> +};
> +
> +&mclk_ext {
> +       clock-frequency = <12288000>;
> +};
> +
> +&gpio {
> +       uart0_pins: uart0-0 {
> +               tx-pins {
> +                       pinmux = <GPIOMUX(5, GPOUT_SYS_UART0_TX, GPOEN_ENABLE, GPI_NONE)>;
> +                       bias-disable;
> +                       drive-strength = <12>;
> +                       input-disable;
> +                       input-schmitt-disable;
> +                       slew-rate = <0>;
> +               };
> +
> +               rx-pins {
> +                       pinmux = <GPIOMUX(6, GPOUT_LOW, GPOEN_DISABLE, GPI_SYS_UART0_RX)>;
> +                       bias-pull-up;

There are external pull-ups, so maybe change this line to

bias-disable; /* external pull-up */

> +                       drive-strength = <2>;
> +                       input-enable;
> +                       input-schmitt-enable;
> +                       slew-rate = <0>;
> +               };
> +       };
> +};
> +
> +&uart0 {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&uart0_pins>;
> +       status = "okay";
> +};
> --
> 2.38.1
>
