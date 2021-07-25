Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C43273D4F18
	for <lists+devicetree@lfdr.de>; Sun, 25 Jul 2021 19:31:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229831AbhGYQuq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jul 2021 12:50:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbhGYQup (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jul 2021 12:50:45 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 277A5C061757
        for <devicetree@vger.kernel.org>; Sun, 25 Jul 2021 10:31:14 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id f13so4640360edq.13
        for <devicetree@vger.kernel.org>; Sun, 25 Jul 2021 10:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UkBtWhkl5JjlzgWjWjbI0oCul3smhswI+BT+jn3A+AY=;
        b=lBBlbVTgySrhfYF11i0DKiwn3+sSA7nyyo0yoTZTVFnYulOqwe3Wijrr0RpX8FDptS
         nDVJh/X1mD/yD8XHJOIaYurWvOcIO6GmVpnIcUqYI9L0pSi3Oq4H6TXmtA2Eu2EVDCt7
         ftUZ9aMRZdzcjyTEhRpFSadpe/L4hrOcUQ2fw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UkBtWhkl5JjlzgWjWjbI0oCul3smhswI+BT+jn3A+AY=;
        b=R/wgirweens+clFwugUi1iYjSH3o0WbfoHvWKVJMoW0rV0Pao0jsA29uM4fWovH+hE
         AnIGE+0/CNs8qwZKO6wYnLIyt+H8kXpfLi2V4zCzkuqGCUTXxc2utWvZ4uYYQ8qebW7T
         dROqnrrl2Y3V93bEeWGCYmVbQr6uDNwC+7wvgZwHM5hXXb6pAhbr7n1XZX6yIG0aIGID
         CihySZETcc+2upXA8A5ezioWxVwvcPrEXPHCb4H6aqYKeGBaaEgvzJ4LPJZJmZ5SWdw1
         mLHRjTJbL6yP9pZ3PIjHybcsBddb0KNEeoSP1XMHksdxWgPzhrE8mO4BmaEYfKGdZFdr
         cOzQ==
X-Gm-Message-State: AOAM533PDFARsaKUHLZUhGUMIlDwSlmVpEFRlaEJHY6mNoTaYXR7htWK
        toh/qSQMp9vS/FpNcAIKR7JKpUUpA+0w6xL2dcwAPQ==
X-Google-Smtp-Source: ABdhPJx151WxgS05DBXIbJnohD/dbKLDBEbx/smB09iPx/aNJsLqRY1rRPuWytgxhRRXNS+9iqhHYx5oieQg99TAJ7Q=
X-Received: by 2002:a05:6402:144f:: with SMTP id d15mr17294723edx.27.1627234271837;
 Sun, 25 Jul 2021 10:31:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210704090230.26489-1-jagan@amarulasolutions.com>
 <20210704090230.26489-7-jagan@amarulasolutions.com> <YP2el40V3K4R7ner@ravnborg.org>
In-Reply-To: <YP2el40V3K4R7ner@ravnborg.org>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Sun, 25 Jul 2021 23:01:00 +0530
Message-ID: <CAMty3ZAw9ZNYCm=LnETEoi8qHn3qc5_B2tewhOKw-TTPrU0xog@mail.gmail.com>
Subject: Re: [RFC PATCH 06/17] drm/exynos: dsi: Handle exynos specifics via driver_data
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Inki Dae <inki.dae@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Fabio Estevam <festevam@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-samsung-soc@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 25, 2021 at 10:55 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> On Sun, Jul 04, 2021 at 02:32:19PM +0530, Jagan Teki wrote:
> > Exynos DSI driver is actually a Samsung MIPI DSIM bridge
> > IP which is also used in i.MX8MM platforms.
> >
> > Right now the existing driver has some exynos drm specific
> > code bases like te_irq, crtc and component_ops.
> >
> > In order to switch this driver into a common bridge driver
> > We can see 2 options to handle the exynos specific code.
> >
> > A. Drop the component_ops, and rework other specifics.
> >    This may lead to more foundation work as it requires
> >    more changes in exynos drm drivers stack.
> >
> > B. Handle the exynos specifics via driver data, and make
> >    the common bridge work in different platforms and plan
> >    for option A in future.
> >
> > So, this patch is trying to add option B) changes to handle
> > exynos specifics via driver_data.
>
> We really should find someone that has the time, energy, knowledge and
> hardware that can include device_link support once anf for all for
> bridges.
> Then we would avoid hacks like this.
>
> I see no other options at the moment, but look forward for a better
> solution.

The real key problem here is hardware, unfortunately I'm unable to
find any proper exynos DSI hardware for myself to proceed atleast.

Thanks,
Jagan.
