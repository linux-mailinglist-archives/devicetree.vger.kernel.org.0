Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54C0E2345E3
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 14:32:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733303AbgGaMcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 08:32:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733262AbgGaMcN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 08:32:13 -0400
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com [IPv6:2607:f8b0:4864:20::f41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBDD1C061574
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 05:32:12 -0700 (PDT)
Received: by mail-qv1-xf41.google.com with SMTP id l13so7638596qvt.10
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 05:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SgQA4sgoGYvD/Uf9j6zkKwcrUzZ+kjVzPsEd9qktWI0=;
        b=yArUZlugRa5RtNwex9gt6KlGV/LzD6XhTdRsHx+m1p29ABbu+mPaW7hGxX+Ek3OLlK
         Si/I0ihYLl9x1JgR6oOG/t+Tjgvvrtu3iTBi7894DnYH142AfKqegLhzWX0OyiooVNR3
         mzN9mRQIrQmPMCkl9dtxLlcsQZohjn2N0imuhNcDjc7Jm2Nvm4sLrash23s1Uac8E+n/
         ZVvbHpNTpPcPXTuN1+vn+XbYOO6G5ThGMX/sW/gYQJ4MTLkne4wbr+9PH8DtvPt4lfze
         dSiM+B4aAq4oJhKJiGStGxuGBT25yHDUuBm1ft7xHs0XvpMGwBjk/qBOnfWBHgLEeKaN
         MRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SgQA4sgoGYvD/Uf9j6zkKwcrUzZ+kjVzPsEd9qktWI0=;
        b=hMCtXxWyJYrDGledCrMi0BUuJVU4/MEKm1iai/23c7IL8YvBCKRU7Gnz4nxYxLstiQ
         J72ZFYI9wN1iiEECsBGSRpebaEUaGSPWD8nDNQLcJAWJI/1XG9SFxPEtWp3QwjPwBsIM
         IjKPfPH4m+lNB9yFhI8Xd6GtFGH6xIs+v9AdcDiOUCayb6hGtCjC1hEa3Ar1zAv4+sC2
         nvonIVTXc1gQaNE9hTSAxzWOHWHSY6LBaQqguM49xOP0nUiKcVoOdBE7opYFIAh1ewQX
         Gi/fs5oIXGACLhMCHc3SXsP0aaRHmurkSIRN9L2EjXW7ZtMq9KHvJBsgV0y7viXgslIq
         5L0w==
X-Gm-Message-State: AOAM533CcvzCfKb+gzpZtp95E9R1sfB5ZQ9oJ/ny249QVirQP8l/TW4y
        sPX1D/PSjFkt+HU8EOKHlqCvcW2dLC5kMYw00RycDw==
X-Google-Smtp-Source: ABdhPJwA/Ade66bad0qB4t8nKvutT0zN/4+AR2s7p6M5ohcTnlPbZ3JWMGZuT5x4DWm3k6zmybs78WYMYeh+sVHLiLo=
X-Received: by 2002:a0c:f189:: with SMTP id m9mr3692284qvl.152.1596198732095;
 Fri, 31 Jul 2020 05:32:12 -0700 (PDT)
MIME-Version: 1.0
References: <1595927918-19845-1-git-send-email-grzegorz.jaszczyk@linaro.org>
 <1595927918-19845-6-git-send-email-grzegorz.jaszczyk@linaro.org> <015909fa-794c-c938-d944-897985475d20@lechnology.com>
In-Reply-To: <015909fa-794c-c938-d944-897985475d20@lechnology.com>
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
Date:   Fri, 31 Jul 2020 14:32:01 +0200
Message-ID: <CAMxfBF6UrB7ppTrKpsCiczQv2Xyk9_Up3tF9eDGT6+DmKegQ_w@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] irqchip/irq-pruss-intc: Add support for ICSSG INTC
 on K3 SoCs
To:     David Lechner <david@lechnology.com>, Marc Zyngier <maz@kernel.org>
Cc:     tglx@linutronix.de, jason@lakedaemon.net,
        "Anna, Suman" <s-anna@ti.com>, robh+dt@kernel.org,
        Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        "Mills, William" <wmills@ti.com>,
        "Bajjuri, Praneeth" <praneeth@ti.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 29 Jul 2020 at 21:28, David Lechner <david@lechnology.com> wrote:
>
> On 7/28/20 4:18 AM, Grzegorz Jaszczyk wrote:
> > From: Suman Anna <s-anna@ti.com>
> >
> > The K3 AM65x and J721E SoCs have the next generation of the PRU-ICSS IP,
> > commonly called ICSSG. The PRUSS INTC present within the ICSSG supports
> > more System Events (160 vs 64), more Interrupt Channels and Host Interrupts
> > (20 vs 10) compared to the previous generation PRUSS INTC instances. The
> > first 2 and the last 10 of these host interrupt lines are used by the
> > PRU and other auxiliary cores and sub-modules within the ICSSG, with 8
> > host interrupts connected to MPU. The host interrupts 5, 6, 7 are also
> > connected to the other ICSSG instances within the SoC and can be
> > partitioned as per system integration through the board dts files.
> >
> > Enhance the PRUSS INTC driver to add support for this ICSSG INTC
> > instance.
> >
> > Signed-off-by: Suman Anna <s-anna@ti.com>
> > Signed-off-by: Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
> > ---
>
> There is not much left in this patch. Might as well squash this into
> "irqchip/irq-pruss-intc: Add a PRUSS irqchip driver for PRUSS interrupts".

This is what was suggested in v3. IMO even for commit log it is worth
keeping it as a separate patch but if Marc wants to see it squashed,
no problem I will do that.

Best regards,
Grzegorz
