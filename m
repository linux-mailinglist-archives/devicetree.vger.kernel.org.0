Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A76F44240A
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 00:33:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbhKAXfz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 19:35:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbhKAXfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 19:35:54 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2D3FC061714
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 16:33:20 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id v29so16092172qtc.10
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 16:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QjgwzgqwbzNK9oqZJgz4ZvJB5kDRKduRYLNHBkFbBKo=;
        b=lNS0lW0Bf3LqiISo6ssIQiWgPZf7bKwxkn3ypLuarmolLkV7h0JTX8fxQ15zZKQNK9
         ig2f3An/FuWvcM/Uu2F6ibnE4irSOI3KsOo4S66A6wbgMDgQz4sHkRLGoS33vyAb3bI2
         jHGcLz3yhD9xyou5z5lLd/nc6nh0RibNXhy1I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QjgwzgqwbzNK9oqZJgz4ZvJB5kDRKduRYLNHBkFbBKo=;
        b=2A/kR0P7ejgnP6/ajppJnNBUFaEQx0b2H3250RcSd9NZRZNcb+4rM/+AjwBDaw/Z1x
         s6XQ3cHyDIUDRSqD6ErUda88kBKs8BCnCuXIZ4MYuqa2qQ5HaEYKVS1OJH+94MUhhISw
         MroKg1wLTS6JATCtZPo7ZqfZVfWE66spTV6WlX7FlWe+uEm0VUKhsoefXxkqhO+Zl0Dr
         /JZo06S8GDd2mFKQV3jj7mMiD6kWBiVkmyr3M9wDDug7/n9u/EQyEuwWOjrN/0WFuDiP
         7itPaQ63h1aHbCo/BBTqynqxj+t6QV9AitrWocTb2KUKchJvnQWL3PffTbriVy2b+jEC
         wKow==
X-Gm-Message-State: AOAM533ozEpHIx5nXPY6gWX1oMQqFwGk8WaeDnJjZVzqlmebfnTzbeqi
        kg18XssyvHTvcMbEERz5vfISn9pkRIIvaX/E2iq3InDj
X-Google-Smtp-Source: ABdhPJychv7F4FV4O5kk7VzRh9L9Ls0Typ4y+FpsD/Tr4jzGYwH3BzgraY2LvoFZRqz6d9h/RUeOBScQu+l3HvFt1Lg=
X-Received: by 2002:ac8:5cd5:: with SMTP id s21mr9578033qta.392.1635809599964;
 Mon, 01 Nov 2021 16:33:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com> <20211101233751.49222-5-jae.hyun.yoo@intel.com>
In-Reply-To: <20211101233751.49222-5-jae.hyun.yoo@intel.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 1 Nov 2021 23:33:08 +0000
Message-ID: <CACPK8Xc-NVyZ31+_L8oL3aaGHX9TLRxJy9666570ZOuirUYw_w@mail.gmail.com>
Subject: Re: [PATCH -next 4/4] ipmi: kcs_bmc_aspeed: add clock control logic
To:     Jae Hyun Yoo <jae.hyun.yoo@intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Corey Minyard <minyard@acm.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>
> If LPC KCS driver is registered ahead of lpc-ctrl module, LPC
> KCS block will be enabled without heart beating of LCLK until
> lpc-ctrl enables the LCLK. This issue causes improper handling on
> host interrupts when the host sends interrupts in that time frame.
> Then kernel eventually forcibly disables the interrupt with
> dumping stack and printing a 'nobody cared this irq' message out.
>
> To prevent this issue, all LPC sub drivers should enable LCLK
> individually so this patch adds clock control logic into the LPC
> KCS driver.
>
> Fixes: be2ed207e374 ("ipmi: add an Aspeed KCS IPMI BMC driver")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 31 ++++++++++++++++++++++++++----
>  1 file changed, 27 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 92a37b33494c..00706472cc4d 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -6,6 +6,7 @@
>  #define pr_fmt(fmt) "aspeed-kcs-bmc: " fmt
>
>  #include <linux/atomic.h>
> +#include <linux/clk.h>
>  #include <linux/errno.h>
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
> @@ -126,6 +127,8 @@ struct aspeed_kcs_bmc {
>                 bool remove;
>                 struct timer_list timer;
>         } obe;
> +
> +       struct clk *clk;
>  };
>
>  struct aspeed_kcs_of_ops {
> @@ -620,24 +623,37 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
>                 return -ENODEV;
>         }
>
> +       priv->clk = devm_clk_get(&pdev->dev, NULL);
> +       if (IS_ERR(priv->clk)) {
> +               rc = PTR_ERR(priv->clk);
> +               if (rc != -EPROBE_DEFER)
> +                       dev_err(&pdev->dev, "Couldn't get clock\n");
> +               return rc;
> +       }
> +       rc = clk_prepare_enable(priv->clk);
> +       if (rc) {
> +               dev_err(&pdev->dev, "Couldn't enable clock\n");
> +               return rc;
> +       }
> +
>         spin_lock_init(&priv->obe.lock);
>         priv->obe.remove = false;
>         timer_setup(&priv->obe.timer, aspeed_kcs_check_obe, 0);
>
>         rc = aspeed_kcs_set_address(kcs_bmc, addrs, nr_addrs);
>         if (rc)
> -               return rc;
> +               goto err;
>
>         /* Host to BMC IRQ */
>         rc = aspeed_kcs_config_downstream_irq(kcs_bmc, pdev);
>         if (rc)
> -               return rc;
> +               goto err;
>
>         /* BMC to Host IRQ */
>         if (have_upstream_irq) {
>                 rc = aspeed_kcs_config_upstream_irq(priv, upstream_irq[0], upstream_irq[1]);
>                 if (rc < 0)
> -                       return rc;
> +                       goto err;
>         } else {
>                 priv->upstream_irq.mode = aspeed_kcs_irq_none;
>         }
> @@ -650,13 +666,19 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
>         rc = kcs_bmc_add_device(&priv->kcs_bmc);
>         if (rc) {
>                 dev_warn(&pdev->dev, "Failed to register channel %d: %d\n", kcs_bmc->channel, rc);
> -               return rc;
> +               goto err;
>         }
>
>         dev_info(&pdev->dev, "Initialised channel %d at 0x%x\n",
>                         kcs_bmc->channel, addrs[0]);
>
>         return 0;
> +
> +err:
> +       aspeed_kcs_enable_channel(kcs_bmc, false);
> +       clk_disable_unprepare(priv->clk);
> +
> +       return rc;
>  }
>
>  static int aspeed_kcs_remove(struct platform_device *pdev)
> @@ -664,6 +686,7 @@ static int aspeed_kcs_remove(struct platform_device *pdev)
>         struct aspeed_kcs_bmc *priv = platform_get_drvdata(pdev);
>         struct kcs_bmc_device *kcs_bmc = &priv->kcs_bmc;
>
> +       clk_disable_unprepare(priv->clk);
>         kcs_bmc_remove_device(kcs_bmc);
>
>         aspeed_kcs_enable_channel(kcs_bmc, false);
> --
> 2.25.1
>
