Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1ED3262FB5A
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 18:15:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241979AbiKRRPM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 12:15:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240700AbiKRRPK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 12:15:10 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 655BA51310
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 09:15:09 -0800 (PST)
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 15CC03F1C3
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 17:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1668791708;
        bh=JOZUK9RGSwdPJyBqQhjDoeKgKG9IktmohsvMmg16Drk=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=ktPTIeqCh/Ooq6hundAd5mRPzREgOrhzrpML+xLv3i2dJEWS/NG7XIqJxJ7NKQvoM
         MPQRAbfjbpBexfrvR+T00YfGLK/gYqMswnpvtm5iIESU6qdQA0ujWQ55j4lEO9Vn3U
         VMwapxHpHGeesPnw3ihx6MGz2MQkOlkm4cpjrxXJuTDlvfbhUpEvGcmi5RInT1fYiG
         6QM1rNu5iQwPA5ILISCO4VbnnLhU2U3A3mpO6osrMFl9IDFPtMyC99pBQ8c09bRa1f
         4Wu2FX38V1R+OjRDpL4iWChR6bJle7L3ti683zPpu1TV/1SxvlpQejaXyPF/C5z750
         VlKId926gFHFg==
Received: by mail-yb1-f199.google.com with SMTP id a5-20020a25af05000000b006e450a5e507so5042425ybh.22
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 09:15:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JOZUK9RGSwdPJyBqQhjDoeKgKG9IktmohsvMmg16Drk=;
        b=7Gi2jkBUofF5+i7NifNTAiSVDG1G3uh1UtJbgt3Is8nI5/Zu2XJ+2/ibyXE44+MwSZ
         wgEMT4Zw3w/x9OnYeEVZKJy9EahTUsPgQwXpBQCXu2/sxkt9l8UIIgRZoevK26zMVWCt
         O+0pfYvyddstdoLXIXO/KXoORYyYQOmSDBpXCTjW0dfo7rUGbC/dwhpN9WG6ctjsFdJB
         Rlx6poOq536w7Nsvdon89l/Xr7sy9xVL+5IpYXcTICivunfp+bbeA3cIdBKpw3vpHE0p
         23SHgn0XICrZ9NBTuIufhuccwF4uvZC57Cm4IRrgUHleE/0iG2l563DglEjGLLCVjk5k
         g4Fw==
X-Gm-Message-State: ANoB5pnHGYBF3Oh6YrZhBTHixh46+RDZM4ETNeKq1n1sFMqUJy69rVvn
        XVxwWng0yoW0wgKiVHY/QpJlYf7gQRbBqvCsNRKZJW41uk+hevfIgqo/P/D/rLJCZRubEbsQ9r+
        eTs2bHesl/lbFRiyPub71HDVNsmHal7lu9J5DE7xLgMcahgTVZCiL9hM=
X-Received: by 2002:a25:e80f:0:b0:6df:927f:38c9 with SMTP id k15-20020a25e80f000000b006df927f38c9mr7103652ybd.92.1668791707104;
        Fri, 18 Nov 2022 09:15:07 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4I4oZFvr41MjaIHsCGKb3O39hviHXG7d6XOFbJmPb2RtvH+a1VVrT4/f02mov5cJMQQ0aIly9y6uogaTo3+EY=
X-Received: by 2002:a25:e80f:0:b0:6df:927f:38c9 with SMTP id
 k15-20020a25e80f000000b006df927f38c9mr7103630ybd.92.1668791706858; Fri, 18
 Nov 2022 09:15:06 -0800 (PST)
MIME-Version: 1.0
References: <20221118010627.70576-1-hal.feng@starfivetech.com> <20221118010627.70576-14-hal.feng@starfivetech.com>
In-Reply-To: <20221118010627.70576-14-hal.feng@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Fri, 18 Nov 2022 18:14:50 +0100
Message-ID: <CAJM55Z8Vfoi5bPLNUOX-F5R5hfwg_20HiGLyjcmziYMiz24xBQ@mail.gmail.com>
Subject: Re: [PATCH v2 13/14] reset: starfive: Add StarFive JH7110 reset driver
To:     Hal Feng <hal.feng@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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

On Fri, 18 Nov 2022 at 02:06, Hal Feng <hal.feng@starfivetech.com> wrote:
>
> Add auxiliary driver to support StarFive JH7110 system
> and always-on resets.
>
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  drivers/reset/starfive/Kconfig                |  8 +++
>  drivers/reset/starfive/Makefile               |  1 +
>  .../reset/starfive/reset-starfive-jh7110.c    | 67 +++++++++++++++++++
>  .../reset/starfive/reset-starfive-jh71x0.h    |  7 ++
>  4 files changed, 83 insertions(+)
>  create mode 100644 drivers/reset/starfive/reset-starfive-jh7110.c
>
> diff --git a/drivers/reset/starfive/Kconfig b/drivers/reset/starfive/Kconfig
> index 9d15c4110e40..fab1a081af17 100644
> --- a/drivers/reset/starfive/Kconfig
> +++ b/drivers/reset/starfive/Kconfig
> @@ -10,3 +10,11 @@ config RESET_STARFIVE_JH7100
>         default SOC_STARFIVE
>         help
>           This enables the reset controller driver for the StarFive JH7100 SoC.
> +
> +config RESET_STARFIVE_JH7110
> +       bool "StarFive JH7110 Reset Driver"
> +       depends on AUXILIARY_BUS && CLK_STARFIVE_JH7110_SYS
> +       select RESET_STARFIVE_JH71X0
> +       default CLK_STARFIVE_JH7110_SYS
> +       help
> +         This enables the reset controller driver for the StarFive JH7110 SoC.
> diff --git a/drivers/reset/starfive/Makefile b/drivers/reset/starfive/Makefile
> index f6aa12466fad..7a44b66fb9d5 100644
> --- a/drivers/reset/starfive/Makefile
> +++ b/drivers/reset/starfive/Makefile
> @@ -2,3 +2,4 @@
>  obj-$(CONFIG_RESET_STARFIVE_JH71X0)            += reset-starfive-jh71x0.o
>
>  obj-$(CONFIG_RESET_STARFIVE_JH7100)            += reset-starfive-jh7100.o
> +obj-$(CONFIG_RESET_STARFIVE_JH7110)            += reset-starfive-jh7110.o
> diff --git a/drivers/reset/starfive/reset-starfive-jh7110.c b/drivers/reset/starfive/reset-starfive-jh7110.c
> new file mode 100644
> index 000000000000..00f3b4ecfb02
> --- /dev/null
> +++ b/drivers/reset/starfive/reset-starfive-jh7110.c
> @@ -0,0 +1,67 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Reset driver for the StarFive JH7110 SoC
> + *
> + * Copyright (C) 2022 StarFive Technology Co., Ltd.
> + * Copyright (C) 2022 Hal Feng <hal.feng@starfivetech.com>
> + */
> +
> +#include <linux/auxiliary_bus.h>
> +
> +#include "reset-starfive-jh71x0.h"
> +
> +#include <dt-bindings/reset/starfive-jh7110.h>
> +
> +static int jh7110_reset_probe(struct auxiliary_device *adev,
> +                             const struct auxiliary_device_id *id)
> +{
> +       struct reset_info *info = (struct reset_info *)(id->driver_data);
> +       void __iomem *base = dev_get_drvdata(adev->dev.parent);
> +
> +       if (!info || !base)
> +               return -ENODEV;
> +
> +       return reset_starfive_jh71x0_register(&adev->dev, adev->dev.parent->of_node,
> +                                             base + info->assert_offset,
> +                                             base + info->status_offset,
> +                                             info->asserted,
> +                                             info->nr_resets,
> +                                             false);
> +}
> +
> +static const struct reset_info jh7110_sys_info = {
> +       .nr_resets = JH7110_SYSRST_END,
> +       .assert_offset = 0x2F8,
> +       .status_offset = 0x308,
> +       .asserted = NULL,
> +};
> +
> +static const struct reset_info jh7110_aon_info = {
> +       .nr_resets = JH7110_AONRST_END,
> +       .assert_offset = 0x38,
> +       .status_offset = 0x3C,
> +       .asserted = NULL,
> +};

It doesn't seem like syscrg, aoncrg or stgcrg have any inverted lines.
Do you know if any other CRGs do? If not you can just leave out the
.asserted member and always pass NULL.

> +static const struct auxiliary_device_id jh7110_reset_ids[] = {
> +       {
> +               .name = "clk_starfive_jh71x0.reset-sys",
> +               .driver_data = (kernel_ulong_t)&jh7110_sys_info,
> +       },
> +       {
> +               .name = "clk_starfive_jh71x0.reset-aon",
> +               .driver_data = (kernel_ulong_t)&jh7110_aon_info,
> +       },
> +       { /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(auxiliary, jh7110_reset_ids);
> +
> +static struct auxiliary_driver jh7110_reset_driver = {
> +       .probe          = jh7110_reset_probe,
> +       .id_table       = jh7110_reset_ids,
> +};
> +module_auxiliary_driver(jh7110_reset_driver);
> +
> +MODULE_DESCRIPTION("StarFive JH7110 Reset Driver");
> +MODULE_AUTHOR("Hal Feng <hal.feng@starfivetech.com>");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/reset/starfive/reset-starfive-jh71x0.h b/drivers/reset/starfive/reset-starfive-jh71x0.h
> index e6b27110de48..63a94ee1b395 100644
> --- a/drivers/reset/starfive/reset-starfive-jh71x0.h
> +++ b/drivers/reset/starfive/reset-starfive-jh71x0.h
> @@ -6,6 +6,13 @@
>  #ifndef __RESET_STARFIVE_JH71X0_H
>  #define __RESET_STARFIVE_JH71X0_H
>
> +struct reset_info {
> +       unsigned int nr_resets;
> +       unsigned int assert_offset;
> +       unsigned int status_offset;
> +       const u32 *asserted;
> +};

This struct isn't used outside of reset-starfive-jh7110.c, so no need
to define it in this header.
Also consider calling it jh7110_reset_info so it blends in with the
functions defined in that file.

>  int reset_starfive_jh71x0_register(struct device *dev, struct device_node *of_node,
>                                    void __iomem *assert, void __iomem *status,
>                                    const u32 *asserted, unsigned int nr_resets,
> --
> 2.38.1
>
