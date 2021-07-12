Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E06543C57DB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jul 2021 12:59:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358923AbhGLIjC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jul 2021 04:39:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354574AbhGLIhe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jul 2021 04:37:34 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22372C06178A
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 01:34:25 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id b40so22848037ljf.12
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 01:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zJuNTiw2bAkp/x3xoDaz/4iXGg6QuhO9H12Y5RswVAY=;
        b=Upj1aAMvSSjVrIBLSBG1/ArPEg+RtCIqWSn8VtfvPFm+4dLX/hYh/lN9B2+SjtJ0VD
         dsqrzKohAQn11rgT0yvIotdYQd8LmgTU2axJuDOwhvzFEtUxyIgycMsEhY2wdyoWMeLC
         CzGpXBvSewJUnVQMHlbXXkQyOHm1BMnZX9GbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zJuNTiw2bAkp/x3xoDaz/4iXGg6QuhO9H12Y5RswVAY=;
        b=oErJrx3fMM88IiuC2cg/zJKFeRBsDEODx3/C10l7ajyfEibVzMeBdO289jdimre2VZ
         4CgOudHlAFiI5SA7ooiHg0dt5nIyLPAbDO5NAUhmVbpWFF1QPDa8sZCqSuPukiZfPrEU
         IWUqGsfrXL29aRxRdT1sDccmS0C9QkTtr/eSeERIZ0N9RTMfBw6n81M3GSqClQw3UnWq
         0e31yr5g09y4VyGW0VAOdENal5PLaoSEZi3A2XZ8NCr8RGAsXn3VcHm5Bav1Ts1gWEEx
         5jSzNgMm8JFI/4IwlRCuXrsDih176pKupKlOZhj150IDlAADGsfwKyW+bxKU6h9TMYUK
         MXKQ==
X-Gm-Message-State: AOAM5309vLn4AmFm98x4Y4JzhNnXroOB3ftIX6pCBgMMZWNUe3OvHc53
        O5Ns9v42dj0AO/RkwWFHK+/d03SQ377QKVD5fkFnvg==
X-Google-Smtp-Source: ABdhPJxTwmQouyNY1518GgGLKn95Fz9OMBBHdc/D2dJN+ng1GSyTFAPjXSgn07w0W+HnJc3plqNsRFgWxNDSx2LRQ8g=
X-Received: by 2002:a2e:a583:: with SMTP id m3mr41341251ljp.305.1626078863525;
 Mon, 12 Jul 2021 01:34:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210616224743.5109-1-chun-jie.chen@mediatek.com> <20210616224743.5109-22-chun-jie.chen@mediatek.com>
In-Reply-To: <20210616224743.5109-22-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 12 Jul 2021 16:34:12 +0800
Message-ID: <CAGXv+5G1-ruOkK4R1J-ZUzVARHHdyZ88hri6u3ej-+v1Ox8bKw@mail.gmail.com>
Subject: Re: [PATCH 21/22] clk: mediatek: Add MT8195 imp i2c wrapper clock support
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        LKML <linux-kernel@vger.kernel.org>,
        linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 17, 2021 at 6:59 AM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8195 imp i2c wrapper clock providers
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>
> ---
>  drivers/clk/mediatek/Kconfig                  |  6 ++
>  drivers/clk/mediatek/Makefile                 |  1 +
>  .../clk/mediatek/clk-mt8195-imp_iic_wrap.c    | 68 +++++++++++++++++++
>  3 files changed, 75 insertions(+)
>  create mode 100644 drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c
>
> diff --git a/drivers/clk/mediatek/Kconfig b/drivers/clk/mediatek/Kconfig
> index 5089bacdf0a5..ade85a52b7ed 100644
> --- a/drivers/clk/mediatek/Kconfig
> +++ b/drivers/clk/mediatek/Kconfig
> @@ -684,6 +684,12 @@ config COMMON_CLK_MT8195_WPESYS
>         help
>           This driver supports MediaTek MT8195 wpesys clocks.
>
> +config COMMON_CLK_MT8195_IMP_IIC_WRAP
> +       bool "Clock driver for MediaTek MT8195 imp_iic_wrap"
> +       depends on COMMON_CLK_MT8195
> +       help
> +         This driver supports MediaTek MT8195 imp_iic_wrap clocks.
> +

General comments from other patches also apply.

>  config COMMON_CLK_MT8516
>         bool "Clock driver for MediaTek MT8516"
>         depends on ARCH_MEDIATEK || COMPILE_TEST
> diff --git a/drivers/clk/mediatek/Makefile b/drivers/clk/mediatek/Makefile
> index 32cfb0030d92..b10c6267ba98 100644
> --- a/drivers/clk/mediatek/Makefile
> +++ b/drivers/clk/mediatek/Makefile
> @@ -97,5 +97,6 @@ obj-$(CONFIG_COMMON_CLK_MT8195_VENCSYS) += clk-mt8195-venc.o
>  obj-$(CONFIG_COMMON_CLK_MT8195_VPPSYS0) += clk-mt8195-vpp0.o
>  obj-$(CONFIG_COMMON_CLK_MT8195_VPPSYS1) += clk-mt8195-vpp1.o
>  obj-$(CONFIG_COMMON_CLK_MT8195_WPESYS) += clk-mt8195-wpe.o
> +obj-$(CONFIG_COMMON_CLK_MT8195_IMP_IIC_WRAP) += clk-mt8195-imp_iic_wrap.o
>  obj-$(CONFIG_COMMON_CLK_MT8516) += clk-mt8516.o
>  obj-$(CONFIG_COMMON_CLK_MT8516_AUDSYS) += clk-mt8516-aud.o
> diff --git a/drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c b/drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c
> new file mode 100644
> index 000000000000..efb62f484bbe
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +//
> +// Copyright (c) 2021 MediaTek Inc.
> +// Author: Chun-Jie Chen <chun-jie.chen@mediatek.com>
> +
> +#include <linux/clk-provider.h>
> +#include <linux/platform_device.h>
> +
> +#include "clk-mtk.h"
> +#include "clk-gate.h"
> +
> +#include <dt-bindings/clock/mt8195-clk.h>
> +
> +static const struct mtk_gate_regs imp_iic_wrap_cg_regs = {
> +       .set_ofs = 0xe08,
> +       .clr_ofs = 0xe04,
> +       .sta_ofs = 0xe00,
> +};
> +
> +#define GATE_IMP_IIC_WRAP(_id, _name, _parent, _shift)                         \
> +       GATE_MTK_FLAGS(_id, _name, _parent, &imp_iic_wrap_cg_regs, _shift,      \
> +               &mtk_clk_gate_ops_setclr, CLK_OPS_PARENT_ENABLE)
> +
> +static const struct mtk_gate imp_iic_wrap_s_clks[] = {
> +       GATE_IMP_IIC_WRAP(CLK_IMP_IIC_WRAP_S_I2C5, "imp_iic_wrap_s_i2c5", "i2c_sel", 0),
> +       GATE_IMP_IIC_WRAP(CLK_IMP_IIC_WRAP_S_I2C6, "imp_iic_wrap_s_i2c6", "i2c_sel", 1),
> +       GATE_IMP_IIC_WRAP(CLK_IMP_IIC_WRAP_S_I2C7, "imp_iic_wrap_s_i2c7", "i2c_sel", 2),
> +};
> +
> +static const struct mtk_gate imp_iic_wrap_w_clks[] = {
> +       GATE_IMP_IIC_WRAP(CLK_IMP_IIC_WRAP_W_I2C0, "imp_iic_wrap_w_i2c0", "i2c_sel", 0),
> +       GATE_IMP_IIC_WRAP(CLK_IMP_IIC_WRAP_W_I2C1, "imp_iic_wrap_w_i2c1", "i2c_sel", 1),
> +       GATE_IMP_IIC_WRAP(CLK_IMP_IIC_WRAP_W_I2C2, "imp_iic_wrap_w_i2c2", "i2c_sel", 2),
> +       GATE_IMP_IIC_WRAP(CLK_IMP_IIC_WRAP_W_I2C3, "imp_iic_wrap_w_i2c3", "i2c_sel", 3),
> +       GATE_IMP_IIC_WRAP(CLK_IMP_IIC_WRAP_W_I2C4, "imp_iic_wrap_w_i2c4", "i2c_sel", 4),

The datasheet doesn't provide the actual index numbers for each bit,
but based on the address range groupings I'd say the numbering here
is reasonable.


ChenYu

> +};
> +
> +static const struct mtk_clk_desc imp_iic_wrap_s_desc = {
> +       .clks = imp_iic_wrap_s_clks,
> +       .num_clks = ARRAY_SIZE(imp_iic_wrap_s_clks),
> +};
> +
> +static const struct mtk_clk_desc imp_iic_wrap_w_desc = {
> +       .clks = imp_iic_wrap_w_clks,
> +       .num_clks = ARRAY_SIZE(imp_iic_wrap_w_clks),
> +};
> +
> +static const struct of_device_id of_match_clk_mt8195_imp_iic_wrap[] = {
> +       {
> +               .compatible = "mediatek,mt8195-imp_iic_wrap_s",
> +               .data = &imp_iic_wrap_s_desc,
> +       }, {
> +               .compatible = "mediatek,mt8195-imp_iic_wrap_w",
> +               .data = &imp_iic_wrap_w_desc,
> +       }, {
> +               /* sentinel */
> +       }
> +};
> +
> +static struct platform_driver clk_mt8195_imp_iic_wrap_drv = {
> +       .probe = mtk_clk_simple_probe,
> +       .driver = {
> +               .name = "clk-mt8195-imp_iic_wrap",
> +               .of_match_table = of_match_clk_mt8195_imp_iic_wrap,
> +       },
> +};
> +
> +builtin_platform_driver(clk_mt8195_imp_iic_wrap_drv);
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
