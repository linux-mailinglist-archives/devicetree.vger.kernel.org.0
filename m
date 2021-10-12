Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDA7942A7D0
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 17:03:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237351AbhJLPFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 11:05:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237330AbhJLPFC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 11:05:02 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB207C061570
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 08:03:00 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id r19so86147914lfe.10
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 08:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4eJoqAgJlqh2O2nmM1v2NiNOm7MS1e5UJQvxXAIjQYU=;
        b=yO/CCCIUXu1GwR439kw9FMl2GpN8uaq8YOHapPUnS/luUh6mY1ooc8zLO/l9BmNfIA
         Vi93nqlyWYmDxfJf7f76NA8zVn0/zM7Ja4/Kegdt2anZbjI+9dgtc6cHi9ZJK7nD7Wop
         FLNorXOIwVdrklORo9mPs4LSrFcj9Ns0vOk5nXq1YvQi6NJhlCg7bR/cY7iy/tfxndDt
         S3adSERPQbNw8Cf1xvedzswY1j3kgf0//oJPF4ZYirBIByPDu+rCbkGnaWC3Tkq0ZK+i
         5aV7q9MLI7ajx1Jr74Eir5ASemy9TYV9xjLOXGra93gJTqz8gBlRd/nBOwMWfl4dPeoR
         5p4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4eJoqAgJlqh2O2nmM1v2NiNOm7MS1e5UJQvxXAIjQYU=;
        b=YVAjg15If6w4XMPsXTv1wbKSPS0/PZmTeEFhOldZiogOZb0fqznJNRDU4oWjtGFEk9
         kMGnaBnkSDlgWDtjFy+tzXBG3nAutyyX9pCSoiSKn8ukaoFZ9Sq/TK1a7EayF8f6uBjj
         /uaxhaHg3oMcWmB3FsQcrMeKnrEWVKk6QOuBiQfIl7Z9yeJg9WCCDyQm4qgrt5KSnQIZ
         DJV5qDnASo8zypy800f0KQQ03PFN25zAtnkpIghSy6NNRxNUBPfftOMKCjX/QGh2ozdq
         RnkOKRO3tz4fbCbtO/WRoD4UJDc41HdIdC2WFnBbITxpLeDFb+HGJmeCj10SvYqGPLug
         Spow==
X-Gm-Message-State: AOAM5307+Qp50/GJfAMsHdoMo7BJotb9ugYq4JE3vr/O7EqrcuSOHtqo
        4WXLHmsjyHpTNBlKDlDMRJEEEAISbJar09Qtkt5eFw==
X-Google-Smtp-Source: ABdhPJybFllB0Syo/nJobMz5ywiRV9EQH+LTVA68dMR3IvZCeiDz/F+aGe9SdEaqW3Me5Yc4dHf751U3woxgC8wPzQg=
X-Received: by 2002:a05:651c:11c4:: with SMTP id z4mr21552017ljo.463.1634050970182;
 Tue, 12 Oct 2021 08:02:50 -0700 (PDT)
MIME-Version: 1.0
References: <20211012103750.38328-1-tony@atomide.com> <20211012103750.38328-7-tony@atomide.com>
In-Reply-To: <20211012103750.38328-7-tony@atomide.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 12 Oct 2021 17:02:13 +0200
Message-ID: <CAPDyKFqXsTCTmqggiN3iDXTu=fZwCwDbFVacN=FLasQVTgFB-g@mail.gmail.com>
Subject: Re: [PATCH 6/6] mmc: sdhci-omap: Configure optional wakeirq
To:     Tony Lindgren <tony@atomide.com>
Cc:     Adrian Hunter <adrian.hunter@intel.com>,
        Chunyan Zhang <zhang.chunyan@linaro.org>,
        Faiz Abbas <faiz_abbas@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        linux-omap <linux-omap@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 12 Oct 2021 at 12:38, Tony Lindgren <tony@atomide.com> wrote:
>
> Configure optional wakeirq. This may be optionally configured for SDIO
> dat1 pin for wake-up events for SoCs that support deeper idle states.
>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/mmc/host/sdhci-omap.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-omap.c b/drivers/mmc/host/sdhci-omap.c
> --- a/drivers/mmc/host/sdhci-omap.c
> +++ b/drivers/mmc/host/sdhci-omap.c
> @@ -12,8 +12,10 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_device.h>
> +#include <linux/of_irq.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/pm_wakeirq.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/pinctrl/consumer.h>
>  #include <linux/sys_soc.h>
> @@ -117,6 +119,7 @@ struct sdhci_omap_host {
>
>         struct pinctrl          *pinctrl;
>         struct pinctrl_state    **pinctrl_state;
> +       int                     wakeirq;
>         bool                    is_tuning;
>
>         /* Offset for omap specific registers from base */
> @@ -1360,6 +1363,25 @@ static int sdhci_omap_probe(struct platform_device *pdev)
>
>         sdhci_omap_context_save(omap_host);
>
> +       /*
> +        * SDIO devices can use the dat1 pin as a wake-up interrupt. Some
> +        * devices like wl1xxx, use an out-of-band GPIO interrupt instead.
> +        */

Ah, right I recall this now. Very clever.

> +       omap_host->wakeirq = of_irq_get_byname(dev->of_node, "wakeup");
> +       if (omap_host->wakeirq == -EPROBE_DEFER) {
> +               ret = -EPROBE_DEFER;
> +               goto err_cleanup_host;
> +       }
> +       if (omap_host->wakeirq > 0) {
> +               device_init_wakeup(dev, true);
> +               ret = dev_pm_set_dedicated_wake_irq(dev, omap_host->wakeirq);
> +               if (ret) {
> +                       device_init_wakeup(dev, false);
> +                       goto err_cleanup_host;
> +               }
> +               host->mmc->pm_caps |= MMC_PM_WAKE_SDIO_IRQ;

To prevent the mmc core from powering off the SDIO card in system
suspend (which certainly must be prevented if wakeups should be
delivered), you need to set MMC_PM_KEEP_POWER, too.

FYI: We also have common mmc DT properties for these caps, which are
being parsed in mmc_of_parse().

These are the DT properties:
"keep-power-in-suspend" - > MMC_PM_KEEP_POWER
"wakeup-source" || "enable-sdio-wakeup" (/* legacy */) -> MMC_PM_WAKE_SDIO_IRQ;

> +       }
> +
>         pm_runtime_mark_last_busy(dev);
>         pm_runtime_put_autosuspend(dev);
>
> @@ -1387,6 +1409,8 @@ static int sdhci_omap_remove(struct platform_device *pdev)
>
>         pm_runtime_get_sync(dev);
>         sdhci_remove_host(host, true);
> +       device_init_wakeup(dev, false);
> +       dev_pm_clear_wake_irq(dev);
>         pm_runtime_dont_use_autosuspend(dev);
>         pm_runtime_put_sync(dev);
>         /* Ensure device gets idled despite userspace sysfs config */
> --
> 2.33.0

I now think I better understand what is needed during system
suspend/resume to support system wakeups. I will comment on patch 4,
let's see what that brings us to.

Kind regards
Uffe
