Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04F4839888E
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 13:48:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbhFBLuU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 07:50:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229723AbhFBLuT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 07:50:19 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1959DC06174A
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 04:48:35 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id x9so1839782ilp.4
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 04:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1AE6CMh64N7YKZJf6x8sLxRgE3kDJg7CfrDj+vAQ8yY=;
        b=VKKIIXCN/WaVHDKgZbutFVr+k276GUR+xO3M4gXkc7s4LMnEWRdc6QWmULBZpebrkJ
         c8/I/JTM8MJyFhcK2cOnEsJYksTb/R6LqSm9/rmcQZ6eB0QpQJEVt15Mblu9WDFTRZQk
         zLI69Hwp2elv4H1P2PFbFVAT4UBz/HiQ0IjwyborfOxzXJ3wEXhB90WajB0VCHT8qOP9
         KIGFFshRFhbwYHjxm8Jmr3AjW6qb7VkVoGYy3pzRZOTHQ7MsVpni3B3bT0NnmLmQRy0F
         33Xq7KRv4PIuch6wubGC0YEbk2mkc2gn/dEgOqPF3x/L8XaQOmSqmdiYZyWlW45kxzve
         2zgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1AE6CMh64N7YKZJf6x8sLxRgE3kDJg7CfrDj+vAQ8yY=;
        b=PYKRAgYTO22m6ZVTl2CE9dMoNmJkbalccZxaW9KVmJJ8iWQeI/Ne1Tn4diBA4j045m
         kpT1zd7ITXBLdaxUDdyP4ROGBZac6kSIpyke0UlqsawGtSQk40RJrkdG0Hc0yPpSmKiI
         i4oTeEEZoffwqqyyoHrS9dbbf8b4uoVtQlLibL5ilH9S6CL3Z+EszBo075WSvHFXbRJ9
         RCHRUGS7EYzUv0mRw9T1WvUFVoJzG5sMRdyOCvivmL+dM6M41K8mknjHLoR8P8cLdwu6
         9eoacJQ7/Ombr4UnB24BxdaLCbEEbJlQiN8RA+Dv5ON7iyNzvGtx/y85G1p6WsP8cf4m
         mB/A==
X-Gm-Message-State: AOAM530+NS90KjpWlB6WOf2rZH9Qre7LD5f+pGwGXTgm+dXR7nfq6rXl
        4QYRdcoHHQvvY5tIXxTTOEVFiVzKvnlFocdH9hwxHg==
X-Google-Smtp-Source: ABdhPJzLLKFNTjaCiidAPhK0lyaBfj4HpIEdIRiXkJgFvVZwOHb/5hcMsc+hNd9tGh1NgTmazzTNI9ZJ/zk4kqlQwJo=
X-Received: by 2002:a92:c10a:: with SMTP id p10mr12643828ile.183.1622634514249;
 Wed, 02 Jun 2021 04:48:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210531125143.257622-1-robert.marko@sartura.hr>
 <20210531125143.257622-4-robert.marko@sartura.hr> <20210601153818.GA20254@pengutronix.de>
 <CA+HBbNG3O_QORj1NEKvoC4C5FfyfXyO_PMOZS0pHJimGn+HTUA@mail.gmail.com> <0601d2800a285b44271d2b5a5e28669aa913522b.camel@pengutronix.de>
In-Reply-To: <0601d2800a285b44271d2b5a5e28669aa913522b.camel@pengutronix.de>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Wed, 2 Jun 2021 13:48:23 +0200
Message-ID: <CA+HBbNFU=vORe-+py5c3QQP6Fr4EnrVG05Z1Gi-LJdiDLuMSBQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] reset: Add Delta TN48M CPLD reset controller
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        Luka Perkov <luka.perkov@sartura.hr>, jmp@epiphyte.org,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        Donald Buczek <buczek@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 2, 2021 at 10:47 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> On Tue, 2021-06-01 at 19:09 +0200, Robert Marko wrote:
> [...]
> > Yes, it's self-clearing, per spec they will be cleared after 100ms.
>
> Can you make sure the function only returns after the reset is
> deasserted again, for example by using regmap_read_poll_timeout() on the
> reset bit?

Yes, that is simple to implement.
>
> > Will drop assert then, I saw that reset was for self-clearing, but other
> > drivers I looked for example implemented both which was confusing.
>
> If you have full control over the reset line, you can implement .reset
> by manually asserting and deasserting (possibly after a delay). But if
> the reset is self-clearing, you can't properly implement .(de)assert,
> which have an expectation about the state of the reset line after the
> function returns.

Makes sense, I will drop the assert op.
>
> > > > +}
> > > > +
> > > > +static int tn48m_control_status(struct reset_controller_dev *rcdev,
> > > > +                             unsigned long id)
> > > > +{
> > > > +     struct tn48_reset_data *data = to_tn48_reset_data(rcdev);
> > > > +     unsigned int regval;
> > > > +     int ret;
> > > > +
> > > > +     ret = regmap_read(data->regmap, TN48M_RESET_REG, &regval);
> > > > +     if (ret < 0)
> > > > +             return ret;
> > > > +
> > > > +     if (BIT(tn48m_resets[id].bit) & regval)
> > > > +             return 0;
> > > > +     else
> > > > +             return 1;
> > > > +}
> > > > +
> > > > +static const struct reset_control_ops tn48_reset_ops = {
> > > > +     .reset          = tn48m_control_reset,
> > > > +     .assert         = tn48m_control_assert,
> > > > +     .status         = tn48m_control_status,
> > > > +};
> > > > +
> > > > +static int tn48m_reset_probe(struct platform_device *pdev)
> > > > +{
> > > > +     struct tn48_reset_data *data;
> > > > +     struct regmap *regmap;
> > > > +
> > > > +     if (!pdev->dev.parent)
> > > > +             return -ENODEV;
> > >
> > > That shouldn't be necessary.
> >
> > This driver depends on having a parent as it needs to get the
> > regmap from it.
> > The parent is a CPLD using simple-i2c-mfd.
> > So it's nice to check.
>
> pdev->dev.parent is always set to &platform_bus if there is no parent.

Ok, so it's useless to check.

Will send a new version today.

Regards,
Robert
>
> regards
> Philipp



-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
