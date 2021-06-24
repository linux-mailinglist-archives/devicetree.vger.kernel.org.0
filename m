Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F27663B2EB2
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 14:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231162AbhFXMPP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 08:15:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhFXMPP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 08:15:15 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C92C061574
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 05:12:56 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id i24so8183954edx.4
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 05:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=00qJhUhsSLmie5on9fHVkXswl7GglVNf9S3IawNPKpM=;
        b=LFHTlf5beKsNbpsxpkkS7V5dXdKTpBIrVD4foDj+FdxKHL3klGfzF2ZNY8wPxslgv2
         b+q18nUxWppzyqAbC8zxa3HkuEqel6xx0h3CW75ZhmePnPERpOv3A/UK68F8D6pXZ7IN
         hhPXxXVWdAgEp3q7sAt2VrAtY/D3bz2rC8umk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=00qJhUhsSLmie5on9fHVkXswl7GglVNf9S3IawNPKpM=;
        b=F2H+kRLaF+KfJ5OxJwL8ybaM0z40VnBqqWKmHyGNcbXgpbqo/d+RLgO8/QAcXPkw4g
         jl0uaBE34Rx6yMUnWBtODPLx3oPYglQvYk4CYDdPMbYzo8EIDwcJoQrn1reMsIuIeZW7
         IAMCscibZC3yyaTLQfN9VnnpCw0OwGV98k/c/gAX10lAdt3GDqRTvTFX7nDlYaJ3a4kO
         MGDaW9Zr98kE1UuyHInLjghI382GXO9bwIWrkI4yVAO+1fC3F3TtkudNrDTgfSm81VFX
         UaYBP3iJqxtgScfoQXrXTITcZyLaxn26OlbzxE4F4/wTKV89v/wMaDBHhzsqvIqNnzqq
         BlvA==
X-Gm-Message-State: AOAM533cQsQRqj6SZuSSSwyA6+om6R97JIKIUEcot8u6UH0zPJMBz+CM
        AwHw2eI7ZKDcl4dtPCy4p2x/6Gucp/tSVLvGR5Qlsw==
X-Google-Smtp-Source: ABdhPJwH6wzxQh/EgARmUBUCU45D6SQC4arfqhFGQNZ2Zi25gX0SJv2dx4JOvDj7503wKBJOz/+Q/kaHBNGL0ZXDpfI=
X-Received: by 2002:a05:6402:1d55:: with SMTP id dz21mr6499192edb.338.1624536774634;
 Thu, 24 Jun 2021 05:12:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-3-jagan@amarulasolutions.com> <YNO0LHNVSWjrh1ZS@pendragon.ideasonboard.com>
 <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
In-Reply-To: <CAOMZO5Ahbu4mohtMDOQOv_y5B_TDesbdYEUZTF1RL7_y-bS+RA@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 24 Jun 2021 17:42:43 +0530
Message-ID: <CAMty3ZAtObU-bf6FuxvSBaZn2cotj_NxASW9g9on-kBJ7iW3OA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/9] drm: bridge: Add Samsung SEC MIPI DSIM bridge driver
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Michael Tretter <m.tretter@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Francis Laniel <francis.laniel@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Tomasz Figa <t.figa@samsung.com>,
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
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Fabio,

On Thu, Jun 24, 2021 at 8:18 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Jagan/Laurent,
>
> On Wed, Jun 23, 2021 at 7:23 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
>
> > Looking at the register set, it seems to match the Exynos 5433,
> > supported by drivers/gpu/drm/exynos/exynos_drm_dsi.c. Can we leverage
> > that driver instead of adding a new one for the same IP core ?
>
> Yes. there was an attempt from Michael in this direction:
> https://patchwork.kernel.org/project/dri-devel/cover/20200911135413.3654800-1-m.tretter@pengutronix.de/

Thanks for the reference, I will check it out and see I can send any
updated versions wrt my i.MX8MM platform.

Jagan.
