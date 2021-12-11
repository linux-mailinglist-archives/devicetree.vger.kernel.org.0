Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE8FD47154D
	for <lists+devicetree@lfdr.de>; Sat, 11 Dec 2021 19:13:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231627AbhLKSN0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Dec 2021 13:13:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231682AbhLKSNY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Dec 2021 13:13:24 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A362C061751
        for <devicetree@vger.kernel.org>; Sat, 11 Dec 2021 10:13:24 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id o4so17628638oia.10
        for <devicetree@vger.kernel.org>; Sat, 11 Dec 2021 10:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ZKuXDdMqteEEKXb+96og2uMkZKlBM9xGB/3xrHMNNJ4=;
        b=aWs1p9AyHBbvhMn//ieXmew23uafLMJkWDAEFpKLr/y3EDFmf/hAW9aqurfWekiYJa
         5Y1mrm8+8O1+DctJZZ2x203nP/1PwLA1IforTxfWsg3iai7cKVIsegSiJtT77NzfsMxN
         i3OAM1FhXsDcRi3Rl7pQZccNNGGmSlpGrh3CYXLV2Ka1U4baeL3O5R54nGYFWtIaq5Cq
         IguHuhJ2jT5eEkAx5asn/T8vP7onjdwjd+qEmmL8QPvjHD6nlYJSopu5rLo2RVp7/kEZ
         lZ6fMoyk0ht++uIEsgPGXNbCGBJAHDdAhzgeDYkqtfz7WC9AEbkZvfrZHVXfDsofSoF6
         lMnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZKuXDdMqteEEKXb+96og2uMkZKlBM9xGB/3xrHMNNJ4=;
        b=2lc5m4nxfrCQ3wBx3gu+55MBwEm8Z+3rxPefr25ISlEAc07InHzaMZTCXtZ9rE0iet
         g50CxrKOPODo2S5+M58Lu8nUmAmYmeDrgBB+Vu9v2+PsHRVfCsbV2YVU83k7L4qvET91
         fvVdA3D4r5WUjajRKakwTT87RpSn18wMsiEr5uuUEDnKQbGaNdbHUvScSkulR9IogLPg
         5clkcyke/cUC+1IMlJFF4wfObw8/Qv1VipxXm9rAZG8msqSEWu0Y/+P4Ur7ANR6IsXKw
         jm4Oj4NM2ovvLgCFKEJ4RlGntTowp+M5cKm+mbHR8WqDH4DmdbjEg3VzhFsP8/3amJ5n
         peXw==
X-Gm-Message-State: AOAM530ui34OWKZDgEsNsOrkQor0znh0Z0BlbH1J2H29+8FvvHpjYmg5
        s6Z4d/pLrJDcqRisl+2zuL8Mng==
X-Google-Smtp-Source: ABdhPJwJgs25lTgbpqlRe9kzvrGm41yKRcwXPaPnmvLa062O2KlX0HXEsj/sNKm6DJR4tJAdo1WZPA==
X-Received: by 2002:a05:6808:1a2a:: with SMTP id bk42mr19079854oib.118.1639246402724;
        Sat, 11 Dec 2021 10:13:22 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id y12sm1641771oiv.49.2021.12.11.10.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Dec 2021 10:13:22 -0800 (PST)
Date:   Sat, 11 Dec 2021 12:13:17 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Vamsi Krishna Lanka <quic_vamslank@quicinc.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] clk: qcom: Add clock driver for SM8450
Message-ID: <YbTqPfs7026l6LFE@builder.lan>
References: <20211207114003.100693-1-vkoul@kernel.org>
 <20211207114003.100693-3-vkoul@kernel.org>
 <20211209082537.1AF6CC341C8@smtp.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209082537.1AF6CC341C8@smtp.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 09 Dec 02:25 CST 2021, Stephen Boyd wrote:

> Quoting Vinod Koul (2021-12-07 03:40:03)
> > diff --git a/drivers/clk/qcom/gcc-sm8450.c b/drivers/clk/qcom/gcc-sm8450.c
> > new file mode 100644
> > index 000000000000..82ac419718d7
> > --- /dev/null
> > +++ b/drivers/clk/qcom/gcc-sm8450.c
> > @@ -0,0 +1,3303 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (c) 2020-2021, The Linux Foundation. All rights reserved.
> > + * Copyright (c) 2021, Linaro Limited
> > + */
> > +
> > +#include <linux/module.h>
> > +#include <linux/of_device.h>
> > +#include <linux/regmap.h>
> > +
> > +#include <dt-bindings/clock/qcom,gcc-sm8450.h>
> > +
> > +#include "clk-alpha-pll.h"
> > +#include "clk-branch.h"
> > +#include "clk-rcg.h"
> > +#include "clk-regmap.h"
> > +#include "clk-regmap-divider.h"
> > +#include "clk-regmap-mux.h"
> > +#include "gdsc.h"
> > +#include "reset.h"
> > +
> > +enum {
> > +       P_BI_TCXO,
> > +       P_GCC_GPLL0_OUT_EVEN,
> > +       P_GCC_GPLL0_OUT_MAIN,
> > +       P_GCC_GPLL4_OUT_MAIN,
> > +       P_GCC_GPLL9_OUT_MAIN,
> > +       P_PCIE_0_PIPE_CLK,
> > +       P_PCIE_1_PHY_AUX_CLK,
> > +       P_PCIE_1_PIPE_CLK,
> > +       P_SLEEP_CLK,
> > +       P_UFS_PHY_RX_SYMBOL_0_CLK,
> > +       P_UFS_PHY_RX_SYMBOL_1_CLK,
> > +       P_UFS_PHY_TX_SYMBOL_0_CLK,
> > +       P_USB3_PHY_WRAPPER_GCC_USB30_PIPE_CLK,
> > +};
> > +
> > +static struct clk_alpha_pll gcc_gpll0 = {
> > +       .offset = 0x0,
> > +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_EVO],
> > +       .clkr = {
> > +               .enable_reg = 0x62018,
> > +               .enable_mask = BIT(0),
> > +               .hw.init = &(struct clk_init_data){
> > +                       .name = "gcc_gpll0",
> > +                       .parent_data = &(const struct clk_parent_data){
> > +                               .fw_name = "bi_tcxo",
> 
> Maybe you want to drop these strings and use the dt index directly? That
> may actually be faster because we don't do as many string comparisons
> and the code may be smaller if we don't have to store bi_tcxo. I suppose
> to make it more readable we could have #defines for each DT index like
> 
>  #define DT_BI_TCXO	0
>  #define DT_SLEEP_CLK	1
> 
> Blaze a new trail!
> 

I like the idea, and iiuc it's just a matter of replacing .fw_name with
.index?

I am however worried that people will get the order wrong as they are
hacking on their dts/drivers, because (at least in my view) the order of
clocks & clock-names has been seen as "a dt binding requirement" up
until such change. But if we replace the names with indices such enum
would have to be kept in sync with the DT binding and there's no way to
validate it.

If we do this we should force the driver and dts-writers to rely on the
binding document by omitting clock-names from the binding (and hence
dts). Otherwise people will (I will) assume that the clock-names are
still what matters...

Regards,
Bjorn

> > +                       },
> > +                       .num_parents = 1,
> > +                       .ops = &clk_alpha_pll_fixed_lucid_evo_ops,
> > +               },
> > +       },
> > +};
