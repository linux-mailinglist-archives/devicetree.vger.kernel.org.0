Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2942332052
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 09:16:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbhCIIPy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 03:15:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229924AbhCIIPb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 03:15:31 -0500
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04BBBC06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 00:15:30 -0800 (PST)
Received: by mail-vs1-xe2a.google.com with SMTP id v123so6344281vsv.9
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 00:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zt/Qo1WuohJnN8BsEHz9cxnvtJashQ/NC/B5GNdt0Vw=;
        b=xTMuS7ToMWt37R/E2TwMkIlTyw/OnDiCgFudLcVzRWMSo5w4RdGfYHysaMdM/p1NTM
         /fqG/hW6BZDUtUgCO1V3seC2X6TEO0zAQWMWvFIatAc2w/rS757Rr+QoLDwCAZudOklN
         rKGr2+ojXgZPf867xtn+jGgS+l/xekob1NmvS0r1aYibZoE9XIGrR4cHObok+kU5TrAk
         MprRVuBqMFuG6neSTkuAyQQlG5hEKPh+ZfOZ8ujoA9opxP+AtZh6gqFknJNahGMTgson
         midmLZwd521PiW899MPbJHiWpD/79d5cW2IU7wdkBmMqCs4Kxhk3I2o16pSfzTtc/tE9
         WRXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zt/Qo1WuohJnN8BsEHz9cxnvtJashQ/NC/B5GNdt0Vw=;
        b=dTZFXuRgS3wjwqK0FeFpDmu2fqd428JBRWWCsiLtgEbshuilXCJAH/TBwrga5vLh3l
         KaMjUWpECFJG95tU7YQZT8FWgCAP2mIV4z8qVVnHQ6by6Bj3xuJeFCh4h8I7GEt9CF8O
         HhAbtYXqmYjLojhXWLHg1MR4AuLBEVPdWpLzsY/CB830Ie7mqQ784I0J6aotz3x9Tejv
         6S1GJLdT1b/2zIbPEdOoBqhvTyAN3yz2Rqbmw4uRKxoR+44jRSnwKNMaf5QnZ53Mi/hD
         664roKToutvQvqtsd5g2ah5CBDm4LyR5Zz0NkMYEkC0x+tmRkC09qwkvYIPX8FKVxI/9
         upsg==
X-Gm-Message-State: AOAM533x58sCJy3rWnI0U11R3k6VbtovRxm9CDQMP7hnaBBx7OwltIGm
        yAFoN5807Bz0eSEjmhHRrOvQjt244h3zQHJfN4Q41w==
X-Google-Smtp-Source: ABdhPJyIREswXY8HIMohbytoDNg1hEAh37OQLrBbhEhyA1hgNSWz8OdncAaF+NnykgRA5ocddH6xzrc2+bGXFLcbPYs=
X-Received: by 2002:a05:6102:7b0:: with SMTP id x16mr13806738vsg.34.1615277730169;
 Tue, 09 Mar 2021 00:15:30 -0800 (PST)
MIME-Version: 1.0
References: <20210225095216.28591-1-nsaenzjulienne@suse.de>
In-Reply-To: <20210225095216.28591-1-nsaenzjulienne@suse.de>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 9 Mar 2021 09:14:53 +0100
Message-ID: <CAPDyKFoN6WERg=wq7Fo-iykDSp6w7eC1aRFi4Qih0wZ=LSR4XA@mail.gmail.com>
Subject: Re: [RFC 0/2] sdhci-iproc CMD timeouts
To:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
        "moderated list:BROADCOM BCM2835..." 
        <linux-rpi-kernel@lists.infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>, phil@raspberrypi.com,
        tim.gover@raspberrypi.com, Adrian Hunter <adrian.hunter@intel.com>,
        Scott Branden <sbranden@broadcom.com>,
        Al Cooper <alcooperx@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Feb 2021 at 10:53, Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> I'm seeing a rather odd behavior from sdhci-iproc's integration in BCM2711
> (Raspberry Pi 4's SoC), and would appreciate some opinions.
>
> The controller will timeout on SDHCI CMDs under the following conditions:
>
>  - No SD card plugged in (the card polling thread is running, CD irq disabled).
>  - BCM2711's VPU clock[1] configured at 500MHz or more, lower clocks are OK.
>
> There is no specific command that will time out, it seems random.
>
> Here's what I found out. The SDHCI controller runs at 100MHz, by bumping the
> frequency to 150MHz the issue disapears. Might be pure luck, or maybe I hit the
> nail and it's proper interference. Can't say.

As you probably know, I don't have the in-depth knowledge about this
HW. Although, let me provide a very vague guess. Could be that the
controller needs a higher clock rate to stay within some spec, for an
OPP/voltage domain for example?

In any case, assuming you get some confirmation from the Broadcom
folkz that this makes sense, you  need to update the DT doc bindings
to add the clock-frequency property. In regards to this, please take
the opportunity to convert from legacy DT doc format
(brcm,sdhci-iproc.txt) into the new yaml format.

Kind regards
Uffe

>
> Regards,
> Nicolas
>
> ---
>
> [1] For those who are not aware, here's the relationship between VPU's clock
>     and emmc2's:
>
>          osc                                    54000000
>             plld                              3000000091
>                plld_per                        750000023
>                   emmc2                        149882908
>             pllc                              2999999988
>                pllc_core0                      999999996
>                   vpu                          499999998
>
> Nicolas Saenz Julienne (2):
>   ARM: dts: Fix-up EMMC2 controller's frequency
>   mmc: sdhci-iproc: Set clock frequency as per DT
>
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts |  6 ++++++
>  drivers/mmc/host/sdhci-iproc.c        | 10 ++++++++++
>  2 files changed, 16 insertions(+)
>
> --
> 2.30.1
>
