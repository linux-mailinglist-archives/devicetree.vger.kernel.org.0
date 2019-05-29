Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 482382DAE6
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 12:37:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726018AbfE2Kh3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 06:37:29 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:46240 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725936AbfE2Kh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 06:37:29 -0400
Received: by mail-vs1-f68.google.com with SMTP id l125so1370747vsl.13
        for <devicetree@vger.kernel.org>; Wed, 29 May 2019 03:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tjnCyAMKOLgkdZookUva/jit8+LoVCiTGzc0TNGq/oA=;
        b=wOZ28q0Dbsa83UgZEqBAyC7OuWb0kt0Le7tZXn7K4Cvh6Qd+xStSW7Yy8L8potaaWt
         vCbmGvPV8IcOQ/DvUiQ+adosG5dqCgOU0cxAlWaHwgdAWEQOwpa7mZd3r2dQfTTa/2Xp
         xfPvIdlyNqkUFyFUY7m71UUGC1xzQFWh/BD7nQZZSeEY2xfK/LMN48ajDbNJGFbWO1VN
         bLgEW84wPlSshhv5X9kGiTUuNdGdVICyMUMKraO5xgLstqh0aOGGWLQgBSCCB89yzogY
         Q9AQwpTs7/7RAYNEQnseubioA2ZJ7re36Nw2eitt4gpv7aqrecWSSXkKxIZOQg4hewD7
         y3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tjnCyAMKOLgkdZookUva/jit8+LoVCiTGzc0TNGq/oA=;
        b=UdX3kyZKeJ0HJLgGrkR9N6MzEcQfxsRyObVvIG/3p7TslXa4/KHhduB0boS+1MO1Ct
         zTOXWDwiyo/hChQ2q5zhDIKSNJfUK3bYPICri7wTB17R62Uox/kC9zszmWVqAS4j3fCC
         gkmpnBF+NXRxnwG0DeNBBIGJ8dg/V0NoL6wKnZZUiYQDNCwjyi0thq+oiPioMy5sIX4R
         6E1trGqUowyGWdjkwgHsOXW2PXUrDIJlFy9V2MUE9HN5yWfm38Sovfnw2Y1Gt2XN6ILV
         wHPKgBXLp8YZmb1vnHlD3cSLI3XPMhh4MxA/GErV7JGRFjdooJjh+YbHQOpL576oN05g
         gT6w==
X-Gm-Message-State: APjAAAXAKUCEUELKQfVwBjnAOndin2JBgnbO0cF2oiZDFY6SsNQIxo5W
        /9NAEOXKSrtFtCJ8lryRx//83UbiLXsOuHHfrIconQ==
X-Google-Smtp-Source: APXvYqx8zt/2mUaOcclrGUfqtNcoqVnj8CT/3HypSvAAWyzH7F3cDGM/H+pIvoe/h4PMDjOkbfsFLwZh6e2SC0ttcNo=
X-Received: by 2002:a67:fa51:: with SMTP id j17mr38251200vsq.89.1559126247816;
 Wed, 29 May 2019 03:37:27 -0700 (PDT)
MIME-Version: 1.0
References: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
 <1556264798-18540-4-git-send-email-ludovic.Barre@st.com> <CAPDyKFrxp3Y3AudNvkkSRaph2Fe-A-F6Cs0jfy9RUja76GYeiA@mail.gmail.com>
 <a6a74431-50a6-6298-b77d-9d27a77fd6cc@st.com>
In-Reply-To: <a6a74431-50a6-6298-b77d-9d27a77fd6cc@st.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 29 May 2019 12:36:50 +0200
Message-ID: <CAPDyKFqzNy3hDzovSxb6pd37u7SxWqYoJeu9+tf_qDF7gs0euA@mail.gmail.com>
Subject: Re: [PATCH V2 3/5] mmc: mmci: fix clear of busy detect status
To:     Ludovic BARRE <ludovic.barre@st.com>
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

On Wed, 29 May 2019 at 11:20, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
> hi Ulf
>
> On 5/27/19 8:17 PM, Ulf Hansson wrote:
> > On Fri, 26 Apr 2019 at 09:46, Ludovic Barre <ludovic.Barre@st.com> wrote:
> >>
> >> From: Ludovic Barre <ludovic.barre@st.com>
> >>
> >> The "busy_detect_flag" is used to read/clear busy value of
> >> mmci status. The "busy_detect_mask" is used to manage busy irq of
> >> mmci mask.
> >> For sdmmc variant, the 2 properties have not the same offset.
> >> To clear the busyd0 status bit, we must add busy detect flag,
> >> the mmci mask is not enough.
> >>
> >> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> >
> > Ludovic, again, apologies for the delay.
> >
> >> ---
> >>   drivers/mmc/host/mmci.c | 3 ++-
> >>   1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/mmc/host/mmci.c b/drivers/mmc/host/mmci.c
> >> index a040f54..3cd52e8 100644
> >> --- a/drivers/mmc/host/mmci.c
> >> +++ b/drivers/mmc/host/mmci.c
> >> @@ -1517,7 +1517,8 @@ static irqreturn_t mmci_irq(int irq, void *dev_id)
> >>                   * to make sure that both start and end interrupts are always
> >>                   * cleared one after the other.
> >>                   */
> >> -               status &= readl(host->base + MMCIMASK0);
> >> +               status &= readl(host->base + MMCIMASK0) |
> >> +                       host->variant->busy_detect_flag;
> >
> > I think this is not entirely correct, because it would mean we check
> > for busy even if we haven't unmasked the busy IRQ via the
> > variant->busy_detect_mask.
>
> if the variant is busy_detect false:
>   => no problem because the busy_detect_flag or busy_detect_mask is not
>      defined.

Right.

>
> if variant is busy_detect true:
> the busy handle is split in 3 steps (see mmci_cmd_irq):
> step 1: detection of busy line => unmasked the busy irq end
> step 2: in busy wait => ignore cmd irq while current busy flag is
> enabled.
> step 3: end of busy => clear and mask busy irq
>
> To detect the first step (see mmci_cmd_irq: which unmasks the busy irq)
> we need to know the current busy state. Actually, the status register is
> re-read in mmci_cmd_irq, why not used the status read in mmci_irq and in
> parameter ?

Right, I see your point.

On the other hand, that re-read of the status registers should really
not be needed. Maybe it's a leftover from my initial version of the
code, but in any case we should remove that.

>
> Regards,
> Ludo
>
> >
> > I suggest to store a new bool in the host (call it
> > "busy_detect_unmasked" or whatever makes sense to you), to track
> > whether we have unmasked the busy IRQ or not. Then take this flag into
> > account, before ORing the value of host->variant->busy_detect_flag,
> > according to above.
> >
> >>                  if (host->variant->busy_detect)
> >>                          writel(status & ~host->variant->busy_detect_mask,
> >>                                 host->base + MMCICLEAR);
> >> --
> >> 2.7.4

Kind regards
Uffe
