Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85ABE3ED853
	for <lists+devicetree@lfdr.de>; Mon, 16 Aug 2021 16:00:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234851AbhHPOBA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Aug 2021 10:01:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231982AbhHPOAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Aug 2021 10:00:37 -0400
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE58DC06124A
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 06:59:42 -0700 (PDT)
Received: by mail-vk1-xa2e.google.com with SMTP id n200so385568vke.11
        for <devicetree@vger.kernel.org>; Mon, 16 Aug 2021 06:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FdgGtEcfAftNEDhyiW7J0wv4uiUYCUUhbtGTkeqqBj0=;
        b=lXKpKdwU/nxzKYQu0JVky+cOTbWt+XOYcwQewi4hNmjyGw32W8JHdNNw5R06zrZX8f
         kqNJOtrzz+qdGHVlmuofDwd6Cg4iYaEDYF3/SCa2bCbZCdE1lF3fLJ3JBp3hACPglTJT
         A93yJ6+i4J53clV+LyQqSs0HxAHMSlOjhfXtSHbSiJqq+n1F5onPinGmdkSPMFD8JKVz
         Fo9/1bsOeqLTzS2/r3eTliVo3Nq/B+ZEbbNfeXBc459bnWFw6IikOjymXWlGVSFJ7nNy
         4CZLQ2UNZUIspK7G6UzZNB4hA66/S4sbFaHvlo3FMh6zLXGpAj1xuwPQEk5mEJXIu+l4
         tAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FdgGtEcfAftNEDhyiW7J0wv4uiUYCUUhbtGTkeqqBj0=;
        b=cdb0R+blhfMyrSwdD8IGfsuA8nKZ/J3jAM1GBRcFMkIYJWeL2O91noKHJ+KZvT6Jqu
         J8/ijK1H2RntTtviHQ+KsbmQnTBVJWQbE571ea0Guw3IqXtpR3OSBCODbbq/tX/5aQEn
         XoRC+zh9Yz1Kt9tNGyM+DKqAml60dD3T/joqnX5gHiekiWzCJMM+LYZjJk5aC0sMKIuJ
         gcwbq+P/E1Cd/gaBZ3fnSsksLvgOwKOi4ahVkdE6GKnhGauDQItBXWvNUgj30NB8Il8U
         jzjUVwIqwUAX2J3Z19gQBe4UqttPd65nTs4VVYoBU9INvvEkBL1flZoFkox9ALJwQY0u
         RHkQ==
X-Gm-Message-State: AOAM532HntuauAPvhEfou7ISY/NuQipFVt2Bma8FpztBCnkBcrrsO44u
        4k2hLNK6byTmKGrjzh7f1Qw7Aw2zo/svnApJT7BVtA==
X-Google-Smtp-Source: ABdhPJzBDfAgbW3pX7xmLsi5xJsPnYsejXMV3ITpbiRQm364lNRmYgHbWPp2xsFr8ZkGvwB2htEA73RIlio9ZyQA8vI=
X-Received: by 2002:a1f:a301:: with SMTP id m1mr8844692vke.6.1629122382002;
 Mon, 16 Aug 2021 06:59:42 -0700 (PDT)
MIME-Version: 1.0
References: <1628334401-6577-1-git-send-email-stefan.wahren@i2se.com> <1628334401-6577-5-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1628334401-6577-5-git-send-email-stefan.wahren@i2se.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 16 Aug 2021 15:59:05 +0200
Message-ID: <CAPDyKFoAGx-1nQh81P3OPiAkR5cq1wGaioQ8Mxo4JCZsZC6NVQ@mail.gmail.com>
Subject: Re: [PATCH V2 04/10] mmc: sdhci-iproc: Cap min clock frequency on BCM2711
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
> There is a known bug on BCM2711's SDHCI core integration where the
> controller will hang when the difference between the core clock and the
> bus clock is too great. Specifically this can be reproduced under the
> following conditions:
>
> - No SD card plugged in, polling thread is running, probing cards at
>   100 kHz.
> - BCM2711's core clock configured at 500MHz or more.
>
> So set 200 kHz as the minimum clock frequency available for that board.
>
> For more information on the issue see this:
> https://lore.kernel.org/linux-mmc/20210322185816.27582-1-nsaenz@kernel.org/T/#m11f2783a09b581da6b8a15f302625b43a6ecdeca
>
> Fixes: f84e411c85be ("mmc: sdhci-iproc: Add support for emmc2 of the BCM2711")
> Signed-off-by: Nicolas Saenz Julienne <nsaenz@kernel.org>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Applied for fixes and by adding a stable tag, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-iproc.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
> index cce390f..032bf85 100644
> --- a/drivers/mmc/host/sdhci-iproc.c
> +++ b/drivers/mmc/host/sdhci-iproc.c
> @@ -173,6 +173,23 @@ static unsigned int sdhci_iproc_get_max_clock(struct sdhci_host *host)
>                 return pltfm_host->clock;
>  }
>
> +/*
> + * There is a known bug on BCM2711's SDHCI core integration where the
> + * controller will hang when the difference between the core clock and the bus
> + * clock is too great. Specifically this can be reproduced under the following
> + * conditions:
> + *
> + *  - No SD card plugged in, polling thread is running, probing cards at
> + *    100 kHz.
> + *  - BCM2711's core clock configured at 500MHz or more
> + *
> + * So we set 200kHz as the minimum clock frequency available for that SoC.
> + */
> +static unsigned int sdhci_iproc_bcm2711_get_min_clock(struct sdhci_host *host)
> +{
> +       return 200000;
> +}
> +
>  static const struct sdhci_ops sdhci_iproc_ops = {
>         .set_clock = sdhci_set_clock,
>         .get_max_clock = sdhci_iproc_get_max_clock,
> @@ -271,6 +288,7 @@ static const struct sdhci_ops sdhci_iproc_bcm2711_ops = {
>         .set_clock = sdhci_set_clock,
>         .set_power = sdhci_set_power_and_bus_voltage,
>         .get_max_clock = sdhci_iproc_get_max_clock,
> +       .get_min_clock = sdhci_iproc_bcm2711_get_min_clock,
>         .set_bus_width = sdhci_set_bus_width,
>         .reset = sdhci_reset,
>         .set_uhs_signaling = sdhci_set_uhs_signaling,
> --
> 2.7.4
>
