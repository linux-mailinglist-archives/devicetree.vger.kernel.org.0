Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82FE23F9B13
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 16:46:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233282AbhH0Op4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Aug 2021 10:45:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233079AbhH0Op4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Aug 2021 10:45:56 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 455F3C061757
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 07:45:07 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id x27so14905900lfu.5
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 07:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fPzxOIvGsTyz9w7SKmrDx7J/vThP1s5YQWVEdvQ3C48=;
        b=w5Gz1Zw6lKlt3MVJJonQEaWT9c3wLiTbHU3ouUSFwVhf2n6Em5SjXoMDFSOAL6tqLP
         oY/sihEvw29t46J/3TnMbwd1G83kDDnl1hWDsJA1QvceB6PPTRQVaRLgnuw7HepHZolK
         NAuy3DCfbZZUCaQ3mGVGnZE/2j3I+vok82QzE9dda/DGVZcdUg7UApv4vge6D1uo0PSt
         vgG5SnuVagfQEuTs+fbOlRiur2VL8EgyA6XDcZ3ZAZvTxa3HyQZRSoxwgECEod2FB15L
         UCcxtE3UyD3WbNvfMxEKtMtQ0Q5iaK6n9FZXYImLrAHkp0XaY7Rwoerx1suLFcCgearm
         AaKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fPzxOIvGsTyz9w7SKmrDx7J/vThP1s5YQWVEdvQ3C48=;
        b=QhjllfFiJxMa3a/Z2/oapfbSfMI26hrT9YZzqi6GArkjJzF57pafMGGyupYTG8mZiw
         MU5ve90+uigy+6uQYq0lf28obgWRfs4gaWuYSXBWqgRkYtt8FlU+fSq3zM//1eY4LHys
         JLaVM71JR3ts7FfGe9Jzf5g1/dsfj0vOWreyTMruE4lFkS1yCxi1DWHVu+NRtU7qFK/Z
         P0HVR3fBT2sy7gB2KQTjGGgSlq81PI6n20h21E+UeqDiYgjhH0tzLWJ6AboXmW9gpf8z
         AM4wjsQhqPHdoHKi+H0aRwyNZVU97kceY/2j5H+3U8rNUGZ8nc3PQnX9inR37wVl9Kv7
         f2Yw==
X-Gm-Message-State: AOAM530PnzbLWMMTQ+8vkSDPwfPk/VV5n+hncZv1dAcTH0t3/2Ii93c2
        hT0Czgvqm0b9kmFDGk2JmVZqheHCQewsRbd8hTMU2A==
X-Google-Smtp-Source: ABdhPJzFvyxkVD7VCOu2ppCBvck5NduKSFyMtwmbo55aJImBw1yBWxcyKQLNeBXSX7tb+LHt77snFrsQoxQ6TJt57Bg=
X-Received: by 2002:a19:655e:: with SMTP id c30mr6918317lfj.142.1630075505658;
 Fri, 27 Aug 2021 07:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <1628334401-6577-1-git-send-email-stefan.wahren@i2se.com>
 <1628334401-6577-6-git-send-email-stefan.wahren@i2se.com> <3e8bfa67-e3fe-bcfd-1941-90cae7ed0176@arm.com>
 <CAPDyKFpGoMVywNFMskTTYYOvLZMK-1u2+5V_q1uW2H5AZJ_W7Q@mail.gmail.com> <127aeb73-528d-9118-3f84-6ad6c6debe84@i2se.com>
In-Reply-To: <127aeb73-528d-9118-3f84-6ad6c6debe84@i2se.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 27 Aug 2021 16:44:28 +0200
Message-ID: <CAPDyKFqo+cxBN2MkYYuDYr2rT1He8dHObZogvmMQX3fqhpNB-g@mail.gmail.com>
Subject: Re: [PATCH V2 05/10] mmc: sdhci-iproc: Set SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN
 on BCM2711
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Jeremy Linton <jeremy.linton@arm.com>
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

On Thu, 26 Aug 2021 at 13:18, Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> Am 26.08.21 um 11:22 schrieb Ulf Hansson:
> > On Thu, 26 Aug 2021 at 08:36, Jeremy Linton <jeremy.linton@arm.com> wrote:
> >> Hi,
> >>
> >>
> >> On 8/7/21 6:06 AM, Stefan Wahren wrote:
> >>> From: Nicolas Saenz Julienne <nsaenz@kernel.org>
> >>>
> >>> The controller doesn't seem to pick-up on clock changes, so set the
> >>> SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN flag to query the clock frequency
> >>> directly from the clock.
> >>>
> >>> Fixes: f84e411c85be ("mmc: sdhci-iproc: Add support for emmc2 of the BCM2711")
> >>> Signed-off-by: Nicolas Saenz Julienne <nsaenz@kernel.org>
> >>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> >>> ---
> >>>   drivers/mmc/host/sdhci-iproc.c | 3 ++-
> >>>   1 file changed, 2 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
> >>> index 032bf85..e7565c6 100644
> >>> --- a/drivers/mmc/host/sdhci-iproc.c
> >>> +++ b/drivers/mmc/host/sdhci-iproc.c
> >>> @@ -295,7 +295,8 @@ static const struct sdhci_ops sdhci_iproc_bcm2711_ops = {
> >>>   };
> >>>
> >>>   static const struct sdhci_pltfm_data sdhci_bcm2711_pltfm_data = {
> >>> -     .quirks = SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
> >>> +     .quirks = SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 |
> >>> +               SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN,
> >>>       .ops = &sdhci_iproc_bcm2711_ops,
> >>>   };
> >> I just noticed that this got merged to rc7, and it breaks the ACPI based
> >> rpi's because it causes the 100Mhz max clock to be overridden to the
> >> return from sdhci_iproc_get_max_clock() which is 0 because there isn't a
> >> OF/DT based clock device.
> > Thanks for reporting! I allow Stefan to respond in a day or two,
> > before I do a revert of it.
>
> I'm fine with a revert.
>
> Thanks

Patch reverted and applied for fixes, thanks!

Kind regards
Uffe
