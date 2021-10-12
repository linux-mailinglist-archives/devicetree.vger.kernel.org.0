Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36CA642A6F7
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 16:15:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237033AbhJLORc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 10:17:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236943AbhJLORc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 10:17:32 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97265C061570
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 07:15:30 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id j5so88439171lfg.8
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 07:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PpaYXbXpOApYRpaVAkab2C1Ca9JhUrWYgSAnqXOk+Ls=;
        b=Vagclt/EOPHjHr01QSwbQem7YVeQC9ZxmD8L2WtNvRkngiHBPjoXIej35Zwp5+TAYQ
         kacPh03PFdECNflrglWpIJRV7EHgG1XfxavH37/mRbDG80jVubRR5baW0N6SbKukTuNW
         pKo6oazS+Y/JhwFrce+CvH7ImYEq5fVhjo8KGiDsZaf6gy0HGcbWjiSO7XhBMd4hkNo/
         xRDSHblv+hU+o1zW5gAIXfLuJb84qi4to4kYMMnUvq3TWRnzpz1+TPnSCTgXsGUZHnUj
         jjZaJUCuWYDZhZ/iWLrW9c/KJFN7nLrlb7pKPQx6QKXSkPtnS27qyXk3JdI4+ochTfKZ
         yvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PpaYXbXpOApYRpaVAkab2C1Ca9JhUrWYgSAnqXOk+Ls=;
        b=JELndiIn28VvwS4+66DLbScwub7eEwyegyqLJfy9IsyFn4BL0advT1Nc+EZRJ1xIaK
         oiE/xukb6na5L0QdhuKVgnKVn30Mu6Cn99blpH7YOyumI4QaliNCrVciwQl1hrVySuGN
         07rdxUawR3tP9l9SdMLPSZiVbplF7ZKYesSalxjdaKSrabZaD5SvWXT6BfsloP+zxn47
         Cb8kwT+5n4ToZAl41FpOs7cHwa6Ca2O4sazHYJSlmiOLrWXtu+z4jEDa3+g5Z1IxhvVt
         Oi6edlnOckDfxVH/o5ivVaXVFLstCg4m6SFJClo6e+mQ+rkfnard5tMJumrR+Md+Q3Q+
         DjFg==
X-Gm-Message-State: AOAM530CKnXZWPxeGNziTy038CpX9SVHPTUHBtXmJJBuKoBELStjZzv+
        tRXcFm5OlPwJaox1OAR/yCXyyJKdAxT5zlpS72D6kA==
X-Google-Smtp-Source: ABdhPJxirxHFQu7ZlfzH+2H4CYctDMjdqG0Ieg6U4retz4me4tq/HZrMfWlZsVpZTiR++f21k/i4ne148gg1s4R2U8Y=
X-Received: by 2002:ac2:4157:: with SMTP id c23mr33708071lfi.184.1634048125609;
 Tue, 12 Oct 2021 07:15:25 -0700 (PDT)
MIME-Version: 1.0
References: <20211012103750.38328-1-tony@atomide.com> <20211012103750.38328-6-tony@atomide.com>
In-Reply-To: <20211012103750.38328-6-tony@atomide.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 12 Oct 2021 16:14:49 +0200
Message-ID: <CAPDyKFpBt9D=J7B5+mz0snviFdnSyVCMgL5COZPAAYSKEcHbGA@mail.gmail.com>
Subject: Re: [PATCH 5/6] sdhci: omap: Enable aggressive PM
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
> Enable runtime PM for eMMC/SD card devices. Without this, SDIO WLAN
> devices will not idle.

Just wanted to add some clarification. If the platform is able to idle
SDIO card/func devices, you can set MMC_CAP_POWER_OFF_CARD.

MMC_CAP_AGGRESSIVE_PM is for eMMC and SD. Perhaps we should consider
merging the capabilities flags, as they are in principle indicating
the same thing. Anyway, that's a different story.

Kind regards
Uffe

>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/mmc/host/sdhci-omap.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-omap.c b/drivers/mmc/host/sdhci-omap.c
> --- a/drivers/mmc/host/sdhci-omap.c
> +++ b/drivers/mmc/host/sdhci-omap.c
> @@ -1343,6 +1343,9 @@ static int sdhci_omap_probe(struct platform_device *pdev)
>         /* R1B responses is required to properly manage HW busy detection. */
>         mmc->caps |= MMC_CAP_NEED_RSP_BUSY;
>
> +       /* Enable runtime PM for eMMC/SD card devices */
> +       mmc->caps |= MMC_CAP_AGGRESSIVE_PM;
> +
>         ret = sdhci_setup_host(host);
>         if (ret)
>                 goto err_rpm_put;
> --
> 2.33.0
