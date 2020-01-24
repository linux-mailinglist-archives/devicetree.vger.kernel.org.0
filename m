Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 373771485A3
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2020 14:10:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388813AbgAXNKl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jan 2020 08:10:41 -0500
Received: from mail-ua1-f67.google.com ([209.85.222.67]:44662 "EHLO
        mail-ua1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387994AbgAXNKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jan 2020 08:10:41 -0500
Received: by mail-ua1-f67.google.com with SMTP id x16so740271uao.11
        for <devicetree@vger.kernel.org>; Fri, 24 Jan 2020 05:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tgn2//ZSCDORj0Cvv0XkC07XnrcMfFKutZKQkSYkRvE=;
        b=P1ptjq0UUFrZNorymbhq7kV35sq5owXkbsBz2Z/uV8WPXbLJ5uQ3B2ViXLKowV1t4n
         OGYAGWrDff83Df/xTZf6Xqz3amQPxOoz7twXZ1HrfcrTe1Hl3DddpV09/DCq0+zbGT9D
         +OR/KWLfC9esWVC9q3c30jXezsCPLhxQlXG9FrCNNZEmNGDeKmlsFjjoxRlSi+T6NHgN
         PbazLUQyVyQqaQ+h7um1L7ztpGIO/Y7jLDI1VuxnTSl01wRpC5taw+kkIGuyPHzFbBnY
         mBJbKacELjl+Nh1DBnOdg/B2VVARdL1SLJSNfdkTWrbkDj2vwBV1aeO3NgMJI49WPKfc
         hGiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tgn2//ZSCDORj0Cvv0XkC07XnrcMfFKutZKQkSYkRvE=;
        b=qTa40Nigqd2KVlYU8vf7JTohFG13yJTiNTHYxxpsCFknml9NygokYkDMyba7ySzKlx
         5lU5XuTmDtIVZeWh33OrcG5WgTgnn0QLPjzgpLFGU1LChpjshFAxuotAUT0yRxBioNHa
         B6gb4JvL1YCw7eeu6Os2xhTGUWKbBvoCY9WE5y1ckbtJL2cbwQV3CBD5NE2Be1KJUVMH
         8V/awcEOkrIQKxuCtyr3g4nhl0jegd6MYth96MGViBIIhbEbZB//FiNzQWAkSi2dEkZf
         Coxs3yfSy2CZukW6/NJspH2r8fqFesPmt0LCqofZa3U6OUmv8XNGnmHZvX3VBalxmTLk
         jbyA==
X-Gm-Message-State: APjAAAWGHWQUSXUHzMcIcT53BpO6nm0QRbLyStY0PI5ZB1TDxqW3Q215
        WtdGYj/z99h9cZbbMpFty9OyH4c0tnYk7iMkYHk7UQ==
X-Google-Smtp-Source: APXvYqwVP13ejaA0SZhnfERB+1opa8r8kAAKrFN61gAqwPEvErTSb83VmAPiMo2c8U3Uv0fsr6pZWSU0PpeB8z5BJt4=
X-Received: by 2002:ab0:740e:: with SMTP id r14mr1740357uap.104.1579871439759;
 Fri, 24 Jan 2020 05:10:39 -0800 (PST)
MIME-Version: 1.0
References: <20200110134823.14882-1-ludovic.barre@st.com> <20200110134823.14882-7-ludovic.barre@st.com>
In-Reply-To: <20200110134823.14882-7-ludovic.barre@st.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 24 Jan 2020 14:10:03 +0100
Message-ID: <CAPDyKFq25C6W3df5LRsYAcV71rM0YYx9xd=isURKVkbCiN+fBw@mail.gmail.com>
Subject: Re: [PATCH 6/9] mmc: mmci: sdmmc: add execute tuning with delay block
To:     Ludovic Barre <ludovic.barre@st.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Jan 2020 at 14:49, Ludovic Barre <ludovic.barre@st.com> wrote:
>
> The hardware delay block is used to align the sampling clock on
> the data received by SDMMC. It is mandatory for SDMMC to
> support the SDR104 mode. The delay block is used to generate
> an output clock which is dephased from the input clock.
> The phase of the output clock must be programmed by the execute
> tuning interface.
>
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  drivers/mmc/host/mmci_stm32_sdmmc.c | 147 ++++++++++++++++++++++++++++
>  1 file changed, 147 insertions(+)
>
> diff --git a/drivers/mmc/host/mmci_stm32_sdmmc.c b/drivers/mmc/host/mmci_stm32_sdmmc.c
> index df08f6662431..10059fa19f4a 100644
> --- a/drivers/mmc/host/mmci_stm32_sdmmc.c
> +++ b/drivers/mmc/host/mmci_stm32_sdmmc.c
> @@ -3,10 +3,13 @@
>   * Copyright (C) STMicroelectronics 2018 - All Rights Reserved
>   * Author: Ludovic.barre@st.com for STMicroelectronics.
>   */
> +#include <linux/bitfield.h>
>  #include <linux/delay.h>
>  #include <linux/dma-mapping.h>
> +#include <linux/iopoll.h>
>  #include <linux/mmc/host.h>
>  #include <linux/mmc/card.h>
> +#include <linux/of_address.h>
>  #include <linux/reset.h>
>  #include <linux/scatterlist.h>
>  #include "mmci.h"
> @@ -14,6 +17,20 @@
>  #define SDMMC_LLI_BUF_LEN      PAGE_SIZE
>  #define SDMMC_IDMA_BURST       BIT(MMCI_STM32_IDMABNDT_SHIFT)
>
> +#define DLYB_CR                        0x0
> +#define DLYB_CR_DEN            BIT(0)
> +#define DLYB_CR_SEN            BIT(1)
> +
> +#define DLYB_CFGR              0x4
> +#define DLYB_CFGR_SEL_MASK     GENMASK(3, 0)
> +#define DLYB_CFGR_UNIT_MASK    GENMASK(14, 8)
> +#define DLYB_CFGR_LNG_MASK     GENMASK(27, 16)
> +#define DLYB_CFGR_LNGF         BIT(31)
> +
> +#define DLYB_NB_DELAY          11
> +#define DLYB_CFGR_SEL_MAX      (DLYB_NB_DELAY + 1)
> +#define DLYB_CFGR_UNIT_MAX     127

[...]

> +static int sdmmc_dlyb_lng_tuning(struct mmci_host *host)
> +{
> +       struct sdmmc_dlyb *dlyb = host->variant_priv;
> +       u32 cfgr;
> +       int i, lng, ret;
> +
> +       for (i = 0; i <= DLYB_CFGR_UNIT_MAX; i++) {
> +               sdmmc_dlyb_set_cfgr(dlyb, i, DLYB_CFGR_SEL_MAX, true);
> +
> +               ret = readl_relaxed_poll_timeout(dlyb->base + DLYB_CFGR, cfgr,
> +                                                (cfgr & DLYB_CFGR_LNGF),
> +                                                1, 1000);

I suggest you introduce a define for this timeout, in the top of the file.

> +               if (ret) {
> +                       dev_warn(mmc_dev(host->mmc),
> +                                "delay line cfg timeout unit:%d cfgr:%d\n",
> +                                i, cfgr);
> +                       continue;
> +               }
> +
> +               lng = FIELD_GET(DLYB_CFGR_LNG_MASK, cfgr);
> +               if (lng < BIT(DLYB_NB_DELAY) && lng > 0)
> +                       break;
> +       }
> +
> +       if (i > DLYB_CFGR_UNIT_MAX)
> +               return -EINVAL;
> +
> +       dlyb->unit = i;
> +       dlyb->max = __fls(lng);
> +
> +       return 0;
> +}
> +
> +static int sdmmc_dlyb_phase_tuning(struct mmci_host *host, u32 opcode)
> +{
> +       struct sdmmc_dlyb *dlyb = host->variant_priv;
> +       int cur_len = 0, max_len = 0, end_of_len = 0;
> +       int phase;
> +
> +       for (phase = 0; phase <= dlyb->max; phase++) {
> +               sdmmc_dlyb_set_cfgr(dlyb, dlyb->unit, phase, false);
> +
> +               if (mmc_send_tuning(host->mmc, opcode, NULL)) {
> +                       cur_len = 0;
> +               } else {
> +                       cur_len++;
> +                       if (cur_len > max_len) {
> +                               max_len = cur_len;
> +                               end_of_len = phase;
> +                       }
> +               }
> +       }
> +
> +       if (!max_len) {
> +               dev_err(mmc_dev(host->mmc), "no tuning point found\n");
> +               return -EINVAL;
> +       }
> +
> +       phase = end_of_len - max_len / 2;
> +       sdmmc_dlyb_set_cfgr(dlyb, dlyb->unit, phase, false);
> +
> +       dev_dbg(mmc_dev(host->mmc), "unit:%d max_dly:%d phase:%d\n",
> +               dlyb->unit, dlyb->max, phase);
> +
> +       return 0;
> +}
> +
> +static int sdmmc_execute_tuning(struct mmc_host *mmc, u32 opcode)
> +{
> +       struct mmci_host *host = mmc_priv(mmc);
> +       struct sdmmc_dlyb *dlyb = host->variant_priv;
> +
> +       if (!dlyb || !dlyb->base)
> +               return -EINVAL;
> +
> +       if (sdmmc_dlyb_lng_tuning(host))
> +               return -EINVAL;
> +
> +       return sdmmc_dlyb_phase_tuning(host, opcode);

What happens to the tuning registers when the controller device
becomes runtime suspended? Would it possible that the values gets lost
and then they need to be restored in runtime resume?

> +}
> +
>  static struct mmci_host_ops sdmmc_variant_ops = {
>         .validate_data = sdmmc_idma_validate_data,
>         .prep_data = sdmmc_idma_prep_data,
> @@ -338,5 +469,21 @@ static struct mmci_host_ops sdmmc_variant_ops = {
>
>  void sdmmc_variant_init(struct mmci_host *host)
>  {
> +       struct device_node *np = host->mmc->parent->of_node;
> +       void __iomem *base_dlyb;
> +       struct sdmmc_dlyb *dlyb;
> +
>         host->ops = &sdmmc_variant_ops;
> +
> +       base_dlyb = devm_of_iomap(mmc_dev(host->mmc), np, 1, NULL);
> +       if (IS_ERR(base_dlyb))
> +               return;
> +
> +       dlyb = devm_kzalloc(mmc_dev(host->mmc), sizeof(*dlyb), GFP_KERNEL);
> +       if (!dlyb)
> +               return;
> +
> +       dlyb->base = base_dlyb;
> +       host->variant_priv = dlyb;
> +       host->mmc_ops->execute_tuning = sdmmc_execute_tuning;
>  }
> --
> 2.17.1
>

Kind regards
Uffe
