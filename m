Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BCF6688FE7
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 07:55:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232103AbjBCGzx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 01:55:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232088AbjBCGzw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 01:55:52 -0500
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A1293D2
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 22:55:51 -0800 (PST)
Received: by mail-vs1-xe33.google.com with SMTP id a24so4439121vsl.2
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 22:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qHKoj/lNK1SyccOL7n5WUnvmfnTUkgJ46XEZvhcRCyY=;
        b=Amjypi/xdCz4Oais1y4zdg0oZuD41KjgKO4zyvIrBalcduanO82pOycBtAWhUSBMJo
         9vDNImp5FdnQcQiJEsmBPOHpN1Zrodzy/iFctJuTncCf5WvYsS77sTc0IVyWXDqqwXau
         JLGB2ZfCjF7Dm5pjw9B4QhvIvD7VvcbcZWUg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qHKoj/lNK1SyccOL7n5WUnvmfnTUkgJ46XEZvhcRCyY=;
        b=UYNxeIF24avXnlZ0B5LkaCJ3RypB6dF8tgNgR4TKwORQk5sVv4BXepA4xHxkKh60Vr
         FSVGbV5Y8Hp0N5sMjT+dMNRPASB/b2gY726Gj1BLsbw0SgN5LfIBWyEmOGr9Sr0WC+Uo
         EugA2cIyK5WXNcfhLPFYWuXl984gvEFT4tu8zdnjNcp/y5TEhLdcKP9bl1srLz36HiRY
         AlB2Q5EsSY6EbrJ6SIj/Q9khiTZ8DJPQoiQkReoe7nEhUD+OoaZbOuyYmEJlc5bfLOgb
         SSCq390es8RRurVJgY/VAAG4sAZjrkAyDbeCUSKat4PkrnPZL/rgW5fz7BkAZfpciq/q
         S6KA==
X-Gm-Message-State: AO0yUKVxGHIzcPCXMSEPkfJ9iMCRl2CPvRqX2tCzGu64eITzh5pBUiOX
        8x34TbfHpTflRRzVGdcCRyIx3i3dy049mroSn2NQlA==
X-Google-Smtp-Source: AK7set9+GjVQgYaX//p0S73gy4+yUQFJoCUCVrG5O5cMJEX9te26GuvuoE/hJdV/3CNOGppezAuuf69FtUyzrmp/FXM=
X-Received: by 2002:a67:fc92:0:b0:3f7:93c4:9e56 with SMTP id
 x18-20020a67fc92000000b003f793c49e56mr1690844vsp.85.1675407350436; Thu, 02
 Feb 2023 22:55:50 -0800 (PST)
MIME-Version: 1.0
References: <20230119124848.26364-1-Garmin.Chang@mediatek.com> <20230119124848.26364-8-Garmin.Chang@mediatek.com>
In-Reply-To: <20230119124848.26364-8-Garmin.Chang@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 3 Feb 2023 14:55:39 +0800
Message-ID: <CAGXv+5Gg1FGbKmg05pfuGOyzZAXiTYBxJG4Sbkxx86pY=SZ4Rw@mail.gmail.com>
Subject: Re: [PATCH v5 07/19] clk: mediatek: Add MT8188 ccusys clock support
To:     "Garmin.Chang" <Garmin.Chang@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-clk@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 19, 2023 at 8:50 PM Garmin.Chang <Garmin.Chang@mediatek.com> wrote:
>
> Add MT8188 ccusys clock controller which provides clock gate
> control in Camera Computing Unit.

If this is also for camera related functions, could you fold this into
the previous CAM clock driver? That would save a bit of space.

The code looks OK.

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> Signed-off-by: Garmin.Chang <Garmin.Chang@mediatek.com>
> ---
>  drivers/clk/mediatek/Makefile         |  2 +-
>  drivers/clk/mediatek/clk-mt8188-ccu.c | 48 +++++++++++++++++++++++++++
>  2 files changed, 49 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/mediatek/clk-mt8188-ccu.c
>
> diff --git a/drivers/clk/mediatek/Makefile b/drivers/clk/mediatek/Makefile
> index dc247bf67e8b..dbd140b81763 100644
> --- a/drivers/clk/mediatek/Makefile
> +++ b/drivers/clk/mediatek/Makefile
> @@ -85,7 +85,7 @@ obj-$(CONFIG_COMMON_CLK_MT8186) += clk-mt8186-mcu.o clk-mt8186-topckgen.o clk-mt
>                                    clk-mt8186-cam.o clk-mt8186-mdp.o clk-mt8186-ipe.o
>  obj-$(CONFIG_COMMON_CLK_MT8188) += clk-mt8188-apmixedsys.o clk-mt8188-topckgen.o \
>                                    clk-mt8188-peri_ao.o clk-mt8188-infra_ao.o \
> -                                  clk-mt8188-cam.o
> +                                  clk-mt8188-cam.o clk-mt8188-ccu.o
>  obj-$(CONFIG_COMMON_CLK_MT8192) += clk-mt8192.o
>  obj-$(CONFIG_COMMON_CLK_MT8192_AUDSYS) += clk-mt8192-aud.o
>  obj-$(CONFIG_COMMON_CLK_MT8192_CAMSYS) += clk-mt8192-cam.o
> diff --git a/drivers/clk/mediatek/clk-mt8188-ccu.c b/drivers/clk/mediatek/clk-mt8188-ccu.c
> new file mode 100644
> index 000000000000..b7380060f906
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8188-ccu.c
> @@ -0,0 +1,48 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +//
> +// Copyright (c) 2022 MediaTek Inc.
> +// Author: Garmin Chang <garmin.chang@mediatek.com>
> +
> +#include <linux/clk-provider.h>
> +#include <linux/platform_device.h>
> +#include <dt-bindings/clock/mediatek,mt8188-clk.h>
> +
> +#include "clk-gate.h"
> +#include "clk-mtk.h"
> +
> +static const struct mtk_gate_regs ccu_cg_regs = {
> +       .set_ofs = 0x4,
> +       .clr_ofs = 0x8,
> +       .sta_ofs = 0x0,
> +};
> +
> +#define GATE_CCU(_id, _name, _parent, _shift)                  \
> +       GATE_MTK(_id, _name, _parent, &ccu_cg_regs, _shift, &mtk_clk_gate_ops_setclr)
> +
> +static const struct mtk_gate ccu_clks[] = {
> +       GATE_CCU(CLK_CCU_LARB27, "ccu_larb27", "top_ccu", 0),
> +       GATE_CCU(CLK_CCU_AHB, "ccu_ahb", "top_ccu", 1),
> +       GATE_CCU(CLK_CCU_CCU0, "ccu_ccu0", "top_ccu", 2),
> +};
> +
> +static const struct mtk_clk_desc ccu_desc = {
> +       .clks = ccu_clks,
> +       .num_clks = ARRAY_SIZE(ccu_clks),
> +};
> +
> +static const struct of_device_id of_match_clk_mt8188_ccu[] = {
> +       { .compatible = "mediatek,mt8188-ccusys", .data = &ccu_desc},
> +       { /* sentinel */ }
> +};
> +
> +static struct platform_driver clk_mt8188_ccu_drv = {
> +       .probe = mtk_clk_simple_probe,
> +       .remove = mtk_clk_simple_remove,
> +       .driver = {
> +               .name = "clk-mt8188-ccu",
> +               .of_match_table = of_match_clk_mt8188_ccu,
> +       },
> +};
> +
> +builtin_platform_driver(clk_mt8188_ccu_drv);
> +MODULE_LICENSE("GPL");
> --
> 2.18.0
>
>
