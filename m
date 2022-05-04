Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 120FE519B6B
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 11:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347065AbiEDJVu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 05:21:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347081AbiEDJUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 05:20:50 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E721025E87
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 02:16:31 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id z19so982309edx.9
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 02:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=da581RkMgZGvhZwLWVEWYBqPGlo/ZQ+aiTnsSHDQZvg=;
        b=VUu1PeIZgsLWQZcfyMt3xaF/2RYXrlQGuhDH4eIiWDqVVEoCEJv7VFKQmEjhGWnr0j
         VwVv8xFU6m+oPpjMrEE1y//U9kJjmLj3lJ2ueVmrDm9Rfibh+aLxLljdfCS3GXnEmU0B
         08c6HRmDCXtvWoohmXgdEKKJ2jkxHi/f4Qf5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=da581RkMgZGvhZwLWVEWYBqPGlo/ZQ+aiTnsSHDQZvg=;
        b=DEDs576uN7zZWgoe12umUm6LRNFNYjsnz1WSD3lKeH57dOsjXVMIa3ezlagGTdyMBw
         iccJmy2XOy9tdQdExrldDyVPzeeWMVO2YHo6nKGc1C387Jz4ppgfYIsLh3orOILbHWQE
         9abcGZcGfQUcGh2iNfd4UKVZ5l/amRyftP3ceq6A3FYupR5YRcxDMipgCr81aYWmchV9
         UCPcZXE449jKZDClqO4OiwA/oVicRplR3QB4kxmofvhUjn1/z9TVYCepeoCLnv3rwyil
         S5IuFs256yrZJASk0aNbEURieZYHV4Ik6C2Dd18WUgyWvx835BLL5Aps0RdgeMJJBako
         39zA==
X-Gm-Message-State: AOAM532RmE3uf5TfyAr0r6UZU0bfDfabhKZphLnZGw2GYvZuisccNdZI
        mx+WD7zAkNRNiUlBoYbSWUkvVffDCVC8Ew5CUmsUw65C0+hxRA==
X-Google-Smtp-Source: ABdhPJxPmefC2PO6Pp4JkUx8X+XPLZJi7VWWpgAVjdNtNFSLnP08fQm8AMIc2msy6Dv26Ew10hHVsT3InC1MV+jFK4g=
X-Received: by 2002:a05:6402:254a:b0:427:c112:6df9 with SMTP id
 l10-20020a056402254a00b00427c1126df9mr14754378edb.367.1651655790467; Wed, 04
 May 2022 02:16:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220408162108.184583-1-jagan@amarulasolutions.com>
 <CGME20220408162224eucas1p2a445493e9354f6ee72b348cb1c4ebc16@eucas1p2.samsung.com>
 <20220408162108.184583-2-jagan@amarulasolutions.com> <0146abe6-c588-820c-09f4-b12de2e734ac@samsung.com>
In-Reply-To: <0146abe6-c588-820c-09f4-b12de2e734ac@samsung.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 4 May 2022 14:46:19 +0530
Message-ID: <CAMty3ZBN=SPZze6n8=0hHPRc0jw6U+UJ7Ejv+8Bg3bkvwdY46w@mail.gmail.com>
Subject: Re: [PATCH 01/11] drm: bridge: Add Samsung DSIM bridge driver
To:     Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Inki Dae <inki.dae@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Fancy Fang <chen.fang@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>,
        Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
        Adam Ford <aford173@gmail.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Tue, Apr 12, 2022 at 3:15 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Hi Jagan,
>
> On 08.04.2022 18:20, Jagan Teki wrote:
> > Samsung MIPI DSIM controller is common DSI IP that can be used in various
> > SoCs like Exynos, i.MX8M Mini/Nano.
> >
> > In order to access this DSI controller between various platform SoCs, the
> > ideal way to incorporate this in the drm stack is via the drm bridge driver.
> >
> > This patch is trying to differentiate platform-specific and bridge driver
> > code and keep maintaining the exynos_drm_dsi.c code as platform-specific
> > glue code and samsung-dsim.c as a common bridge driver code.
> >
> > - Exynos specific glue code is exynos specific te_irq, host_attach, and
> >    detach code along with conventional component_ops.
> >
> > - Samsung DSIM is a bridge driver which is common across all platforms and
> >    the respective platform-specific glue will initialize at the end of the
> >    probe. The platform-specific operations and other glue calls will invoke
> >    on associate code areas.
> >
> > Updated MAINTAINERS file for this bridge with exynos drm maintainers along
> > with Andrzej as he is the original author.
> >
> > Tomasz Figa has been not included in MAINTAINERS as he is not available via
> > samsung.com.
> >
> > v1:
> > * Don't maintain component_ops in bridge driver
> > * Don't maintain platform glue code in bridge driver
> > * Add platform-specific glue code and make a common bridge
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> Well, it took me a while to make this working on Exynos. I'm not really
> happy of the design, although I didn't spent much time thinking how to
> improve it and clarify some ambiguities. It doesn't even look that one
> has compiled the Exynos code after this conversion.

Well, I was successfully built the each commit on exynos and non-exynos

>
> The following changes are needed to get it to the same working state as
> before this patch (the next patches however break it even further):
>
> commit e358ee6239305744062713c5aa2e8d44f740b81a (HEAD)
> Author: Marek Szyprowski <m.szyprowski@samsung.com>
> Date:   Tue Apr 12 11:30:26 2022 +0200
>
>      drm: exynos: dsi: fixup driver after conversion

What exactly it is fixing the existing conversion, could you point that out?

Jagan.
