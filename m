Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CDF44773DB
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 15:00:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237487AbhLPOAW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 09:00:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237466AbhLPOAV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 09:00:21 -0500
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com [IPv6:2607:f8b0:4864:20::b34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74A01C06173E
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 06:00:21 -0800 (PST)
Received: by mail-yb1-xb34.google.com with SMTP id d10so64942714ybe.3
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 06:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u6OncGT5DH6LGjtg6Vfmos78FGM9/13B2AHVO5qFxzo=;
        b=yGu/21vZc2BZXDQ+5xlnnP2EyPY7ZJJn400mL6Vy5KUzv5UXUFyqxHAlE0rfczGIIa
         fCwLnxS1Z2EvrffUk1Qs1Dwn93SwpPREtMHfCnEuUDSbe00fcfz/V7K2DHorMmIT447l
         KkpprabH7UA1JK/SOqDiVhKRmDBKRNomtNwQB9UNcLHvygbRq6HqnEWd2K3dczUimB2e
         DdtafW3miFc65tmyvj6ForM4T80sbJnpMZyoDv7oBm5F4MKfXfHMk/q5I2ZemrHwg6um
         l3sd/Bl33z6+XqWapaWduxkg+PndrQehs4+hSADbA/1x1hoktDsnXKcRMHvxjpgEfYvM
         aAGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u6OncGT5DH6LGjtg6Vfmos78FGM9/13B2AHVO5qFxzo=;
        b=heQxb0S984wbneJm/0J2FopWQ/l1MT7oAJe0OIQPgbgUxeQPa9SdW9i8agariyMyld
         kn3M0MT7xPVBxZE+tmpY0kIfeJm5ASP5lxJUYrA5voif1wXlRVSPlkNh1uRY4V1AB+GL
         GJDLR/OidWb8QikOSOwXkODSimSTqNiE43B26NRtyfSRSv1FK+LCCzkIiBNqxYt+ieUD
         zxpQS7Aqqs3b5LaN/d1zEc+aZ8woxFn4FIC8xXu1OKWAHanO2jz1LfwxkzZzGgbZgmB1
         MIS9EIvxM6y1wGzlu1+XiP3lhUF7m3sf8yKuC32UT86T3iw4KERh5kbhn4afs41LKDDS
         g2Lw==
X-Gm-Message-State: AOAM530+EsBXH/33vFB7vHRX6OYuzO6rPjxThBSYMdebdQwDu6kyrsIY
        uQQfWgZKrnHDUZY6U68Qb8/pDqIpXbxu4hEGFv8/A2SSg6M=
X-Google-Smtp-Source: ABdhPJwXwKfOppuBxULwQYeRr4eAgVGntM2699eq0a0bjDi9ASHuoyFoltd12L8a9F6DoGRmCB2RyMqqsJvritZooBI=
X-Received: by 2002:a25:4c8:: with SMTP id 191mr13679935ybe.357.1639663220586;
 Thu, 16 Dec 2021 06:00:20 -0800 (PST)
MIME-Version: 1.0
References: <20211208104026.421-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20211208104026.421-1-biju.das.jz@bp.renesas.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Thu, 16 Dec 2021 14:00:09 +0000
Message-ID: <CAPj87rMUrB34jVMSdcMqVaf+aRJLq0okHtDjc-bHQ8BcQoqOkQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Add Mali-G31 GPU support for RZ/G2L SoC
To:     Biju Das <biju.das.jz@bp.renesas.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        tomeu.vizoso@collabora.com,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        dri-devel@lists.freedesktop.org,
        Steven Price <steven.price@arm.com>,
        linux-renesas-soc@vger.kernel.org,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Biju,

On Wed, 8 Dec 2021 at 10:40, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> RZ/G2L SoC embeds Mali-G31 bifrost GPU.
> This patch series aims to add support for the same
>
> It is tested with latest drm-misc-next + mesa 21.3.0 +
> out of tree patch for (du + DSI) +
> platform specific mesa configuration for RZ/G2L.

Could you please post the 'platform-specific Mesa configuration'
patches as a merge request to Mesa? Thanks.

Cheers,
Daniel
