Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADDF53ED84C
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 16:00:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231895AbhHPOAx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 10:00:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231925AbhHPOAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 10:00:37 -0400
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5CD5C06121D
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 06:59:45 -0700 (PDT)
Received: by mail-vs1-xe29.google.com with SMTP id j186so8350776vsc.10
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 06:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H8F8ofHktK0D6sC8E2U990HPOVe8nFGr8wbj2x9k2ig=;
        b=CnxxuQatXNI1WrxxXkVztpJnkCXfS1HGlWNDPMm0pH8dx+OefH0jqta5U6iJ+ZD/KM
         5qB2kKOHo9wadf1Cxc/8Yk9emSVY61rr/I5GM/maMaSg5ADs7+DYV+rLdoHjooSRMto6
         uYmFBz2qSk9HCCKZ5ENc/iX4JwbbMxwt+DDp4zjEagoc8S/qLjIH5Z2Y4A0mIpQqBJMW
         Yi3P2H/BE5qjbp/4YQv86W8fFOtEwe3O3ECTs4AZpS908vIxDlr94PEzDa2X/ySE+2rG
         wEY1nazzTb8NqK3/JfUuMMMfPN6v7PVuIH8BthO2DwIZoAgdsJLMQFBcUP7CESg1NR3N
         ktDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H8F8ofHktK0D6sC8E2U990HPOVe8nFGr8wbj2x9k2ig=;
        b=nY0hebnC5JxoAzPvi4jcLW+adTGDqGCf4BeNTKkQiA9CmruvihRxGUNIDihy9UEe1K
         lC8u2ZXEaF82EAihopPPt/Qs49/Mk3ENPgVkwH1bIi7PrfMOHVixeW1wfMPlwnI/027z
         QBeR0dc9c76JgbQclBtbYflGQeVBbBEWuUEjP2120NOItUq7CO82BhCcTkaJWhKXKuM+
         3uUNfT9zjgc3NFGXOR27iAdOw70+piDmsHT4WsVPk3EU3aGtFdLyNvjhdry5yj9wrNqi
         1NnLCAIYk7Jw5ctKQPDj17HSWqkBBvmfWXYqFx5FQyP73XUm3kg61R8Qf6m4DkpJTQIt
         127w==
X-Gm-Message-State: AOAM532yz8RCBxgHTuXhdj9foIDQqSQv6JuHh05lpDpvJYZ5wEDS645l
        Qkp+e6+FX3zhK/XD3UwjB/QqMB8U39V/X4xpo2gokA==
X-Google-Smtp-Source: ABdhPJyLhhY45yfFMWWubkJb/mweV4RrpZDMAc2LgnFag61Ctnu7Ktgvv3hHnmLdqcSXOBDgIoGmKtJ6y9lqdBE8c3k=
X-Received: by 2002:a05:6102:5f4:: with SMTP id w20mr3935366vsf.34.1629122385129;
 Mon, 16 Aug 2021 06:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <1628334401-6577-1-git-send-email-stefan.wahren@i2se.com> <1628334401-6577-6-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1628334401-6577-6-git-send-email-stefan.wahren@i2se.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 16 Aug 2021 15:59:09 +0200
Message-ID: <CAPDyKFr9UEO4TdieTYoR+UXgp70d4Axy7F2nYJc_qNb1dPho7A@mail.gmail.com>
Subject: Re: [PATCH V2 05/10] mmc: sdhci-iproc: Set SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN
 on BCM2711
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>, iivanov@suse.de,
        DTML <devicetree@vger.kernel.org>,
        "moderated list:BROADCOM BCM2835..." 
        <linux-rpi-kernel@lists.infradead.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 7 Aug 2021 at 13:07, Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> From: Nicolas Saenz Julienne <nsaenz@kernel.org>
>
> The controller doesn't seem to pick-up on clock changes, so set the
> SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN flag to query the clock frequency
> directly from the clock.
>
> Fixes: f84e411c85be ("mmc: sdhci-iproc: Add support for emmc2 of the BCM2711")
> Signed-off-by: Nicolas Saenz Julienne <nsaenz@kernel.org>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Applied for fixes and by adding a stable tag, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-iproc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
> index 032bf85..e7565c6 100644
> --- a/drivers/mmc/host/sdhci-iproc.c
> +++ b/drivers/mmc/host/sdhci-iproc.c
> @@ -295,7 +295,8 @@ static const struct sdhci_ops sdhci_iproc_bcm2711_ops = {
>  };
>
>  static const struct sdhci_pltfm_data sdhci_bcm2711_pltfm_data = {
> -       .quirks = SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
> +       .quirks = SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 |
> +                 SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
>         .ops = &sdhci_iproc_bcm2711_ops,
>  };
>
> --
> 2.7.4
>
