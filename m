Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53AD73B1DC3
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 17:44:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231282AbhFWPqv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 11:46:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231133AbhFWPqv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 11:46:51 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DECF4C061756
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 08:44:31 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id ji1so4753728ejc.4
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 08:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pWTQT9hqz+DhdHnOIzqiipB68pLsb96pnxhgmji3vzI=;
        b=X9VJDJSMEjzSv5poRhninV0Ko6KwWKOuAF5hxrAzwbxUtKkcPOumHqjO3c1VmRbsDM
         qICfLsc8OPQEzKrrAzOxlQtrnL1nG5MCwKYxpCozXGTwyuWw8Ap1bD00/G2en4x8mRKi
         Eps/Bl6EXlrpDJ+lEJWC49zq7b/WBPVrzLUgM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pWTQT9hqz+DhdHnOIzqiipB68pLsb96pnxhgmji3vzI=;
        b=psIS244DA5KpB6DrfC9ZzjTfR4yxORytDMebqZvWo9nrgUYG3JKpFcsAaof40E2DDP
         YKcwEv5b2SXTuyk/svlKgMKonIQbeXDmPQ1VkF8MjiNPb9+AlwWBC0GgZQ6b5Q8szr8X
         0gTJtELpVcx5D/MweqPjOqnrUcfvqom2gec/lGN8elE9Y6YieBfI2ISptHXsQ9nmMI1I
         fUHbZP1WIVV2Ew/TCJ8udBpmnYQRSXufpLJkKhCXSKJmdI0vSmF5qh0d+5nzfOxaHmdb
         pO/RxQqiljYCz8iWhrp55kLumesmP181CHJgAJ6CbA0mqQtW3W5r2FAYsQmbvuCwfqU2
         wGiw==
X-Gm-Message-State: AOAM533PvBqU3pxEN6r7s58OKPflmSxCUb9VHqExDBTxJHo/NH8yWMEL
        YY9DDL++rMo+nrK0vPoa/lk0jHUN1XpZRJBzy4x0cg==
X-Google-Smtp-Source: ABdhPJxs1ynO88wXheyf2VPD1FkNJ7s8VcqhwpyUGgxU32FDfbf4AgGMZjAswMZGjJH+ka9QUIvnYyYkKU9gCG/7UDQ=
X-Received: by 2002:a17:906:b887:: with SMTP id hb7mr709041ejb.252.1624463070457;
 Wed, 23 Jun 2021 08:44:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-2-jagan@amarulasolutions.com> <YNDSpAJdI3OKugSL@pendragon.ideasonboard.com>
In-Reply-To: <YNDSpAJdI3OKugSL@pendragon.ideasonboard.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 23 Jun 2021 21:14:19 +0530
Message-ID: <CAMty3ZDy+zAFgRW2OA5srsYNc-Qd8JCp3uLTWWkLRZJQKEMpAA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/9] dt-bindings: display: bridge: Add Samsung SEC
 MIPI DSIM bindings
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Tomasz Figa <t.figa@samsung.com>,
        Fancy Fang <chen.fang@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-phy@lists.infradead.org,
        linux-kernel <linux-kernel@vger.kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Anthony Brandon <anthony@amarulasolutions.com>,
        Francis Laniel <francis.laniel@amarulasolutions.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Milco Pratesi <milco.pratesi@engicam.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

On Mon, Jun 21, 2021 at 11:26 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> Thank you for the patch.
>
> On Mon, Jun 21, 2021 at 12:54:16PM +0530, Jagan Teki wrote:
> > Samsung SEC MIPI DSIM Bridge controller is MIPI DSI bridge
> > available in NXP's i.MX8M Mini and Nano Processors.
> >
> > Add dt-bingings for it.
> >
> > Cc: Andrzej Hajda <a.hajda@samsung.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Robert Foss <robert.foss@linaro.org>
> > Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../display/bridge/samsung,sec-dsim.yaml      | 184 ++++++++++++++++++
> >  1 file changed, 184 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> > new file mode 100644
> > index 000000000000..32f67f313dfd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> > @@ -0,0 +1,184 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/samsung,sec-dsim.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung SEC MIPI DSIM Bridge controller on i.MX8M Mini and Nano SoCs
> > +
> > +maintainers:
> > +  - Jagan Teki <jagan@amarulasolutions.com>
> > +
> > +description: |
> > +  NWL MIPI-DSI host controller found on i.MX8 platforms. This is a dsi bridge for
> > +  the SOCs NWL MIPI-DSI host controller.
> > +
> > +allOf:
> > +  - $ref: ../dsi-controller.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx8mm-sec-dsim
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> > +
> > +  assigned-clock-parents: true
> > +  assigned-clock-rates: true
> > +  assigned-clocks: true
> > +
> > +  clocks:
> > +    items:
> > +      - description: DSI bus clock
> > +      - description: PHY_REF clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: phy_ref
> > +
> > +  phys:
> > +    maxItems: 1
> > +    description: phandle to the phy module representing the DPHY
> > +
> > +  phy-names:
> > +    items:
> > +      - const: dphy
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +    description: phandle to the associated power domain
> > +
> > +  samsung,burst-clock-frequency:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      DSIM high speed burst mode frequency.
> > +
> > +  samsung,esc-clock-frequency:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      DSIM escape mode frequency.
> > +
> > +  samsung,pll-clock-frequency:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      DSIM oscillator clock frequency.
>
> Why do you need those three properties ? They look like configuration
> information to me, not system description. If they are needed, their
> description needs to explain how to set them. Looking at the three
> descriptions above I have no idea what to select for those frequencies.

DSIM PLLOutput PMS values are computed based on these clock values as
per exynos dsi code is concern. Look like there is other way to
compute PMS in SEC DSIM(at least on i.MX8MM) unlike exynos. Let me
come back with new changes, thanks!

Jagan.
