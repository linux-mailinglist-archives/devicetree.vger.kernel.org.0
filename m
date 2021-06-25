Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B93083B403B
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 11:21:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230326AbhFYJX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 05:23:58 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:37581 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbhFYJX5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 05:23:57 -0400
Received: from mail-ej1-f70.google.com ([209.85.218.70])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lwi1o-0002eb-BC
        for devicetree@vger.kernel.org; Fri, 25 Jun 2021 09:21:36 +0000
Received: by mail-ej1-f70.google.com with SMTP id p5-20020a17090653c5b02903db1cfa514dso2887546ejo.13
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 02:21:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QsPyFBqPfdmelbWnXguclm9JevGGaBII5W3HvpNQ+C8=;
        b=V9LOX8/NEepKh1VuP5FqvjhYYmZgLEgaBUeu957DlBoHc/eVFfzj9jE6k4IB7HQBAO
         zlLfoGx0EDh33hJooalrwNQL2f7Vbr0mE+Xo5FzoF6xZFDCHRnDgFRjzraRb8Oa7GARU
         P4ro5pI3fvJWntWphKgQkHuYHpIVj4gWo9IE7F6tXeJ4GEVEmTvySVch6gdIaWlrv3np
         s/mqatnLZAgWWngBjfXl2BLSOVVZ7na28bpto+NqLJVEg9Du2+RtPpTn299yvVAxda6d
         njO1yfb7T4FlkMiIPcBb5DrpAzTnZkrJgitfR+RmHZf0acF5rr5j4/4VF/xB/oJOgCku
         TtwQ==
X-Gm-Message-State: AOAM531vvHVXP5bVDifjn8nZp2CwxIg02l1THVEzKYuBD6SCC5fM86A5
        btq9v/A0SK3Jp8qjCjpJggqKfnFHgcwfDR74UpIx8KdYrM3CznQ45ObNFP7OfaAMv+PkZjmAqYO
        oDGekBr4y0VV/9JCmSh3jte9EvQZoJc64NSpJ70Y=
X-Received: by 2002:aa7:d34f:: with SMTP id m15mr12772180edr.311.1624612896126;
        Fri, 25 Jun 2021 02:21:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw+TM38F4Yr0eNdERAI2zb41U3+ytlASbW0YpW0+yf9XGf8E0tFDX/OQzorcP9sXyGgE3SWQg==
X-Received: by 2002:aa7:d34f:: with SMTP id m15mr12772163edr.311.1624612895982;
        Fri, 25 Jun 2021 02:21:35 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id hz14sm2415400ejc.107.2021.06.25.02.21.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jun 2021 02:21:35 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge
 driver
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        Fabio Estevam <festevam@gmail.com>,
        Michael Tretter <m.tretter@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Francis Laniel <francis.laniel@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Robert Foss <robert.foss@linaro.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        DRI mailing list <dri-devel@lists.freedesktop.org>,
        Milco Pratesi <milco.pratesi@engicam.com>,
        Anthony Brandon <anthony@amarulasolutions.com>,
        linux-phy@lists.infradead.org, Fancy Fang <chen.fang@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        NXP Linux Team <linux-imx@nxp.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com>
 <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
 <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
 <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
Message-ID: <fdd446c6-c8ce-9dae-f7ac-e06241f76250@canonical.com>
Date:   Fri, 25 Jun 2021 11:21:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YNR37NWkxq0mZyq5@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 24 Jun 2021 at 14:19, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> On Thu, Jun 24, 2021 at 05:42:43PM +0530, Jagan Teki wrote:
> > On Thu, Jun 24, 2021 at 8:18 AM Fabio Estevam wrote:
> > > On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart wrote:
> > >
> > > > Looking at the register set, it seems to match the Exynos 5433,
> > > > supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
> > > > that driver instead of adding a new one for the same IP core ?
> > >
> > > Yes. there was an attempt from Michael in this direction:
> > > https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/
> >
> > Thanks for the reference, I will check it out and see I can send any
> > updated versions wrt my i.MX8MM platform.
>
> Thanks.
>
> I had a brief look at the exynos driver, and I think it should be turned
> into a DRM bridge as part of this rework to be used with the i.MX8MM.
>
> Is there someone from Samsung who could assist, at least to test the
> changes ?

Yes, I mentioned few guys in reply to PHY. Around the DRM drivers you
can get in touch with:
Inki Dae <inki.dae@samsung.com>
Seung-Woo Kim <sw0312.kim@samsung.com>
Marek Szyprowski <m.szyprowski@samsung.com>
Andrzej Hajda <a.hajda@samsung.com>

The easiest testing of the display stack would be on Hardkernel's Odroid
XU4 (https://www.hardkernel.com/shop/odroid-xu4-special-price/) however
you will not test the DSI/DSIM directly (it has only HDMI port).

Best regards,
Krzysztof
Best regards,
Krzysztof
