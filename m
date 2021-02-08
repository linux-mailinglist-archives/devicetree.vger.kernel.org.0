Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4DC6313D58
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 19:24:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231476AbhBHSX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 13:23:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235624AbhBHSWZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 13:22:25 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D77F5C0617A7
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 10:21:25 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id y199so14586040oia.4
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 10:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=/6qzm5KZjVpY/QzjBwjI8Vq6UfMUyCiZgQDTe4g04Js=;
        b=bxtDkLUWrKlJbPvM+jLfS8mCKCZwiI+jYVHmSbVHEdnMKKDWCwbDMx1u4JoCotMd86
         jpuHSVKLSdvYumtDRShyyRZWBOz6z1cwykOVpK90620JyQF79VJvkofMNFqpManNxZgK
         Ahm5BbXg9l8iodZB4CVJrKOEOct471xOuycq1+AMk7eywGux9yzCV47I2NLgn/HZKsA5
         Sy7fyEHXNhuJ/CE8ZxFso48MhgXsCdXqseuYphZGyOxMJ2ZSYXdt/j/v914THaZ7hNZY
         ywfaUDikqO1A3vCqtSn1xr0qTN1DunOOYGtqk90yICZeJ3xg/Bq2w6K+racW4OerdImi
         APlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/6qzm5KZjVpY/QzjBwjI8Vq6UfMUyCiZgQDTe4g04Js=;
        b=uNUxlz2ZP3UHS/NAWUD7EwnuC15gckXSKi0G0NML5Q8B3Ogysj7qyzhAZ7jUwRMQzM
         bGNQn6Z7Go90kNn8XJe9N5fCPl2hppuGTF6KZktO+EBiGRnuOjq7OZO2As5KcQ+9UAZz
         cZlWyvQ/3+c4Wm34tyg65B6cog2Hv+QpFkANn7hMTPEU3Wfn6t8D9ld+4XdUV1Uqw8ai
         f6fBKr27rrIc5HOnEc+Azh3Wd4zCrHjMy2TenxUupi/ogRVMj5T3GmbcvmndYdUIYsu6
         U9OZkIFGYmesQLc7j/3Clx1oDI58BH+LW/ShX6xX1zaV3n/Ky12QhR7uFOtZnexQ+Pn/
         1lRA==
X-Gm-Message-State: AOAM530NkkGiYf9n72kSO5Gn6Sg2cWJMd5Qr4Nh8WIjVCnI8NrTjkg98
        w6bmbUuSVqyFWIGcGWkp1NkxCPay/5eCtQ==
X-Google-Smtp-Source: ABdhPJzFxujF8FdJ9rDgJh66bsfw8Jea1OwoyzKak4GDomOyVWtD7WQiDcq3QdmAsvzxsDQBvxe4Qg==
X-Received: by 2002:aca:7541:: with SMTP id q62mr15579oic.143.1612808485225;
        Mon, 08 Feb 2021 10:21:25 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t2sm3937004otj.47.2021.02.08.10.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Feb 2021 10:21:24 -0800 (PST)
Date:   Mon, 8 Feb 2021 12:21:22 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Arnd Bergmann <arnd@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
        arm-soc <arm@kernel.org>, SoC Team <soc@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES" 
        <linux-samsung-soc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Maxime Ripard <mripard@kernel.org>
Subject: Re: [GIT PULL 2/3] ARM: dts: samsung: DTS for v5.12
Message-ID: <YCGBIvRfoP0BeyrP@builder.lan>
References: <20210125191240.11278-1-krzk@kernel.org>
 <20210125191240.11278-3-krzk@kernel.org>
 <20210206134531.l5vpzlmev4v3f3uo@kozik-lap>
 <CAK8P3a0Kgn9PTHjsU7MbJPC8vatvb9KYJJKWxrx7zQzTNgK10g@mail.gmail.com>
 <CAMuHMdWZ8QmiQCmiW9AvCpviNZeuaxThSo_4Xb2DGEs9hMTKMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdWZ8QmiQCmiW9AvCpviNZeuaxThSo_4Xb2DGEs9hMTKMQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 06 Feb 13:47 CST 2021, Geert Uytterhoeven wrote:

> Hi Arnd,
> 
> On Sat, Feb 6, 2021 at 3:36 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > That said, I'm still not happy about the patch we discussed in the
> > other email thread[1] and I'd like to handle it a little more strictly in
> > the future, but I agree this wasn't obvious and we have been rather
> > inconsistent about it in the past, with some platform maintainers
> > handling it way more strictly than others.
> >
> > I've added the devicetree maintainers and a few other platform
> > maintainers to Cc here, maybe they can provide some further
> > opinions on the topic so we can come to an approach that
> > works for everyone.
> >
> > My summary of the thread in [1] is there was a driver bug that
> > required a DT binding change. Krzysztof and the other involved
> > parties made sure the driver handles it in a backward-compatible
> > way (an old dtb file will still run into the bug but keep working
> > with new kernels), but decided that they did not need to worry
> > about the opposite case (running an old kernel with an updated
> > dtb). I noticed the compatibility break and said that I would
> > prefer this to be done in a way that is compatible both ways,
> > or at the minimum be alerted about the binding break in the
> > pull request, with an explanation about why this had to be done,
> > even when we don't think anyone is going to be affected.
> >
> > What do others think about this? Should we generally assume
> > that breaking old kernels with new dtbs is acceptable, or should
> > we try to avoid it if possible, the same way we try to avoid
> > breaking new kernels with old dtbs? Should this be a platform
> > specific policy or should we try to handle all platforms the same
> > way?
> 
> For Renesas SoCs, we typically only consider compatibility of new
> kernels with old DTBs, not the other way around.
> However, most DTB updates are due to new hardware support, so using the
> new DTB with an old kernel usually just means no newly documented
> hardware, or new feature, is being used by the old kernel.
> 

This is the case for the Qualcomm tree as well, it's expected that a new
kernel should work with older DT. But, while we don't actively try to
break it, there are plenty of examples where we don't/can't give the
promise in the other direction.

These examples ranges from advancements in power management
(implementation and binding) to DT validation forcing deprecation and
adoption of new bindings.

Regards,
Bjorn
