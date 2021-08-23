Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 283BA3F4A41
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 14:03:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237016AbhHWMDo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 08:03:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236815AbhHWMD3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 08:03:29 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 839B4C061575
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 05:02:46 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id z2so37475122lft.1
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 05:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k1wN6uWWUAEncK245AcEkXi5X3BYGhPR13+cEKc80po=;
        b=IQhmAOTh076A8tMT6pk5HbQgbaeVpSVv5uJSMAJwH3wR/oCvOzx29eHnE6YNtmNo3D
         r1dogrV1Dcy5VXqbQGikn8CVjv/9HMI+9sw8jPjJf57RIHJJ7aQZYd/A8Km8wDhreyqB
         yEAFrozQ76vPYJ7DcZVdYpdIyh9pWQiYWCvpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k1wN6uWWUAEncK245AcEkXi5X3BYGhPR13+cEKc80po=;
        b=X5Q5rEnoA2KKbzRVgCDdqCR6hi3iAL3pJ3rdcnoAxx2WyyoGWmlZsTwGyraREm03Yh
         gcudFGige8PqGxjfX15v3XD+RlJRl1wzscyU/KWlYj8gjkUS0iDtCPJ0IxNBr3GKJfbp
         ruhLoCW781zH6Y/nr6BAaZnt1r/XBMD6mmExsqVslCHRME3ZmUSQfadfNVZ+spE60PUO
         +QwZ6ltu4t9HXVArCQ3jYIRdnPtbwgJ7aKj0hJ6lsB9+JyrIPevQf2jo15R0DOPnt0T4
         BY9rhr8lhkmb6sDvc9rPtW/51+v5fNXuNLKhTFpWbXfgYlKEp1klojfkmRjsalfeCmqh
         Ny3Q==
X-Gm-Message-State: AOAM532zSpxnTTxCTU+y4XKU/iWScN3z5KsQ1HwjQ1fZUmz9Np1psQez
        9jYgXPX6ZzjN2VqLg1BEGTDcICf1Oj8HXbNTzIdzOg==
X-Google-Smtp-Source: ABdhPJyH1oi6Z4h+7qyE77UctpAsFaN4P2z2I8M6V2yCSw97FXpzm2rm4h5jNd7jUciTrW6+SfLgUk14QDVhIU48l8g=
X-Received: by 2002:ac2:5e8f:: with SMTP id b15mr22598853lfq.656.1629720163409;
 Mon, 23 Aug 2021 05:02:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210820111504.350-1-chun-jie.chen@mediatek.com> <20210820111504.350-15-chun-jie.chen@mediatek.com>
In-Reply-To: <20210820111504.350-15-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 23 Aug 2021 20:02:32 +0800
Message-ID: <CAGXv+5H-NqZYeGUwsZQnu45DQLn=JX=4zrpuGHZ4ArC7p3Ks=Q@mail.gmail.com>
Subject: Re: [v2 14/24] clk: mediatek: Add MT8195 mfgcfg clock support
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        Devicetree List <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 20, 2021 at 7:26 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8195 mfg clock controller which provides clock gate
> control for Main Frame Graphic.

I think it would be easier to understand if it just said GPU instead. Or
it could write:

     ... for Main Frame Graphic, aka integrated GPU.

Try to use more generic terms. The idea is for people with at least some
basic knowledge to be able to understand.

> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>
> ---
>  drivers/clk/mediatek/Makefile         |  2 +-
>  drivers/clk/mediatek/clk-mt8195-mfg.c | 47 +++++++++++++++++++++++++++
>  2 files changed, 48 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/mediatek/clk-mt8195-mfg.c
>
> diff --git a/drivers/clk/mediatek/Makefile b/drivers/clk/mediatek/Makefile
> index 84d315a6b3e4..042db433245a 100644
> --- a/drivers/clk/mediatek/Makefile
> +++ b/drivers/clk/mediatek/Makefile
> @@ -81,6 +81,6 @@ obj-$(CONFIG_COMMON_CLK_MT8192_SCP_ADSP) += clk-mt8192-scp_adsp.o
>  obj-$(CONFIG_COMMON_CLK_MT8192_VDECSYS) += clk-mt8192-vdec.o
>  obj-$(CONFIG_COMMON_CLK_MT8192_VENCSYS) += clk-mt8192-venc.o
>  obj-$(CONFIG_COMMON_CLK_MT8195) += clk-mt8195-apmixedsys.o clk-mt8195-topckgen.o clk-mt8195-peri_ao.o clk-mt8195-infra_ao.o clk-mt8195-cam.o \
> -                                       clk-mt8195-ccu.o clk-mt8195-img.o clk-mt8195-ipe.o
> +                                       clk-mt8195-ccu.o clk-mt8195-img.o clk-mt8195-ipe.o clk-mt8195-mfg.o

Wrap line, please.


Regards
ChenYu


>  obj-$(CONFIG_COMMON_CLK_MT8516) += clk-mt8516.o
>  obj-$(CONFIG_COMMON_CLK_MT8516_AUDSYS) += clk-mt8516-aud.o
> diff --git a/drivers/clk/mediatek/clk-mt8195-mfg.c b/drivers/clk/mediatek/clk-mt8195-mfg.c
> new file mode 100644
> index 000000000000..0a81fe1fe50e
> --- /dev/null
> +++ b/drivers/clk/mediatek/clk-mt8195-mfg.c
> @@ -0,0 +1,47 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +//
> +// Copyright (c) 2021 MediaTek Inc.
> +// Author: Chun-Jie Chen <chun-jie.chen@mediatek.com>
> +
> +#include "clk-gate.h"
> +#include "clk-mtk.h"
> +
> +#include <dt-bindings/clock/mt8195-clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/platform_device.h>
> +
> +static const struct mtk_gate_regs mfg_cg_regs = {
> +       .set_ofs = 0x4,
> +       .clr_ofs = 0x8,
> +       .sta_ofs = 0x0,
> +};
> +
> +#define GATE_MFG(_id, _name, _parent, _shift)                  \
> +       GATE_MTK(_id, _name, _parent, &mfg_cg_regs, _shift, &mtk_clk_gate_ops_setclr)
> +
> +static const struct mtk_gate mfg_clks[] = {
> +       GATE_MFG(CLK_MFG_BG3D, "mfg_bg3d", "top_mfg_core_tmp", 0),
> +};
> +
> +static const struct mtk_clk_desc mfg_desc = {
> +       .clks = mfg_clks,
> +       .num_clks = ARRAY_SIZE(mfg_clks),
> +};
> +
> +static const struct of_device_id of_match_clk_mt8195_mfg[] = {
> +       {
> +               .compatible = "mediatek,mt8195-mfgcfg",
> +               .data = &mfg_desc,
> +       }, {
> +               /* sentinel */
> +       }
> +};
> +
> +static struct platform_driver clk_mt8195_mfg_drv = {
> +       .probe = mtk_clk_simple_probe,
> +       .driver = {
> +               .name = "clk-mt8195-mfg",
> +               .of_match_table = of_match_clk_mt8195_mfg,
> +       },
> +};
> +builtin_platform_driver(clk_mt8195_mfg_drv);
> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
