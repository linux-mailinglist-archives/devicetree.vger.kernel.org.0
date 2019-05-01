Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA5F110A55
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 17:57:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726289AbfEAP5E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 11:57:04 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:43711 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726224AbfEAP5E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 11:57:04 -0400
Received: by mail-pg1-f193.google.com with SMTP id t22so5461263pgi.10
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 08:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zougnS9BHWtiV86/fjUGFfiNYsjc2IiPUeZ1wHycv54=;
        b=pssZ8J+WWQRbOyrlcdWLjXFhkeJz2mZCR4QsTOuYI7FI22sBKiSlhvb3wBF22qLnkU
         5asc9y57ArgeAzDip7evbLaIGK6GwEJNYE+6j0X3kAlD6qVHt1nZy1H9mFpXxgKGImil
         /mfigmNKy1wPw0zdNXHuSmpzij9hHt9KqzOmuMMGE51opboEK/wVBjvVPxHRvepkbnAP
         iLtg/L9YCPrlkInULrqI1GOzKJjVi+ws+nwkOFj6ud3xxTkMIjASD0OMo+QRV60pTIJQ
         9dqOoRoqBQbM+oqSkKPY+5ryAm5YT6FjRbxgMwWTd1yo8EvGTHQRQfy/NOCTMFZXghcE
         t4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zougnS9BHWtiV86/fjUGFfiNYsjc2IiPUeZ1wHycv54=;
        b=LBb/HsEfWjl+Qje4Y8C/SfRAodSxVewG3/TeEdd0HF8rXaEPlVQtKTokyb83oZL7xg
         4AUfWjPuQ6dC7AXGC9boL6yXS1cAbANePdNn4qkSgy/zmwWdqkShg8g/AmMK/+9JUPey
         g1PjSnHfmjV7FJiUY7XLrDraIPdNsQ/AkFCJzd4itybJqJS7geunMyJsKvS0baTqrlk7
         6WgAL5Yi3AXQqwnta5VvbS4tCzYwNFd8BCXn3z4MX9Tu5ixA8K6TliErr50fxvoy32m2
         3KtzO02XfmL+MKADlWnUJ/8peFBQpWZMks1Oe9AeNLMDYWUg0VXK+Sme5t5uQ8bmczZl
         wPHg==
X-Gm-Message-State: APjAAAUVX/Zecs8lPcjFZDha/kCDnHo6CEK4IHbtoCl2ugeZvwr1CRhk
        rxQBPGNR+u1Q8x5vK503+xU+cxpeKZDDKoXw8ZHqLL1QQTE=
X-Google-Smtp-Source: APXvYqyVbB3PJlkYHkPrKxoEyC7Gmz2Tf4KUKj7+CETz3ajcYu09AZMjTbwENOvvHZUcd/CAt+vXIOTz1sm68Mek+eM=
X-Received: by 2002:a62:a513:: with SMTP id v19mr78314336pfm.212.1556726223921;
 Wed, 01 May 2019 08:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <1556724043-3961-1-git-send-email-Frank.Li@nxp.com>
 <1556724043-3961-2-git-send-email-Frank.Li@nxp.com> <20190501152437.GA28109@fuggles.cambridge.arm.com>
 <CAHrpEqQYhg_aRt7qukkTzT3pEzLqg-B0YJL1Z7T06iZV1JAxmQ@mail.gmail.com>
 <CAHrpEqQON_M3LC6KtZCaRt4ShhREyY-ZA=-_cRpHxAaz46bvQA@mail.gmail.com> <20190501154852.GB28109@fuggles.cambridge.arm.com>
In-Reply-To: <20190501154852.GB28109@fuggles.cambridge.arm.com>
From:   Zhi Li <lznuaa@gmail.com>
Date:   Wed, 1 May 2019 10:56:52 -0500
Message-ID: <CAHrpEqR9n=RnwttxP3x8UW3OZg7vYML3WRhwDmFkJmmDd9Ld8A@mail.gmail.com>
Subject: Re: [PATCH V11 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To:     Will Deacon <will.deacon@arm.com>
Cc:     Frank Li <frank.li@nxp.com>,
        "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 1, 2019 at 10:48 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, May 01, 2019 at 10:41:13AM -0500, Zhi Li wrote:
> > On Wed, May 1, 2019 at 10:35 AM Zhi Li <lznuaa@gmail.com> wrote:
> > >
> > > On Wed, May 1, 2019 at 10:24 AM Will Deacon <will.deacon@arm.com> wrote:
> > > >
> > > > On Wed, May 01, 2019 at 03:21:00PM +0000, Frank Li wrote:
> > > > > +static int ddr_perf_probe(struct platform_device *pdev)
> > > > > +{
> > > > > +     struct ddr_pmu *pmu;
> > > > > +     struct device_node *np;
> > > > > +     void __iomem *base;
> > > > > +     char *name;
> > > > > +     int num;
> > > > > +     int ret;
> > > > > +     int irq;
> > > > > +
> > > > > +     base = devm_platform_ioremap_resource(pdev, 0);
> > > > > +     if (IS_ERR(base))
> > > > > +             return PTR_ERR(base);
> > > > > +
> > > > > +     np = pdev->dev.of_node;
> > > > > +
> > > > > +     pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> > > > > +     if (!pmu)
> > > > > +             return -ENOMEM;
> > > > > +
> > > > > +     num = ddr_perf_init(pmu, base, &pdev->dev);
> > > > > +
> > > > > +     platform_set_drvdata(pdev, pmu);
> > > > > +
> > > > > +     name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "imx_ddr%d", num);
> > > >
> > > > Still not happy with this.
> > >
> > > is imx_ddr_pmu%d  okay?
> >
> > imx_ddr%d_pmu look like more reasonable.
>
> Sorry, it's a bit subtle, but please use "imx8" instead of "imx" since
> they may change the thing completely in a future revision of the SoC. That's
> why I suggested "imx8_ddr" in my reply on the previous version of the patch
> (although it appears I somehow managed to drop the CC line in my reply, so
> it only went to your gmail address).

I see.  I will update it.

best regards
Frank Li

>
> Will
