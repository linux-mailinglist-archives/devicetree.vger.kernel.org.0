Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1B1932BF7F
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1579778AbhCCScR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:32:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241222AbhCCOjr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 09:39:47 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3900C061224
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 06:38:47 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id ci14so23619306ejc.7
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 06:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ck25IRRAzQRsE2FVn23n0Fb1oL1B65fMX3eO7JLfyO0=;
        b=JeFWotm8zb2Osqdclg+G/gulOOPrJbi4JobuhZ4JCIvS/VrzS9ABhcYsQcTENmrFM3
         nmaUhG9+fTbcDqHoykLtDuGX8AP4SicklyIt2yzHSY62OgKIyi8JC3CthKBfpJ9kf6Hi
         ZdOB9Zv0MbkYmClDfsewJXZr16AqVTC63bOI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ck25IRRAzQRsE2FVn23n0Fb1oL1B65fMX3eO7JLfyO0=;
        b=ak9xHL5nzLVAAHgeqSpd3nveHBh6joKbtvYNNLAJmXXxGfXLVnYVJEPgNxzTIVPoeX
         dHt1ufdNObi1N+YkLq3g/2RQ4Cvs8x/oGHkmDqSBcfZscDet78KOQGgPvA0GZugftle1
         FA9yjVysntW7RIP67IPfmxaBvcYw51rH90HOomVWO6aOmycr/O5Fj7P1IGpIuk0QDoNz
         KEq6fVeS8zZGflt7rZeMnOS98dj7iPomSZGludUIQ/jkI+N2QDMxIhEqDXx3ZUPCrRRs
         Mua65XJyifCrB74sqYBCNNNZAoQtrHSesBIMI4q4DVL+aF0Ajj5LTjfM4BWzAYyVvKGj
         bQwA==
X-Gm-Message-State: AOAM5325hEyH07hkIxIL1gR70YLAO0OyYaobg4ttdnZUPtnQn/Bi8hNU
        bEoCUDok7zT/HypX8Ji8D92OLWYxKcd9ja+c4mM/Vg==
X-Google-Smtp-Source: ABdhPJx72bf74kr4tzQv3XgUtVxlR5d6WMRhG3LbVaZcA0Hrldpowdd4mNb8kexGQSz/vQJSrcumxbjjEfv3yoF5x8U=
X-Received: by 2002:a17:906:b0d8:: with SMTP id bk24mr26433707ejb.252.1614782326494;
 Wed, 03 Mar 2021 06:38:46 -0800 (PST)
MIME-Version: 1.0
References: <20210214175211.105107-1-jagan@amarulasolutions.com>
 <YCpmZWRoiWULiANx@pendragon.ideasonboard.com> <CAMty3ZDt2EDB8E2nNLx_jfqE7-ActVYVoeFo2Eso+nVuUfVL+w@mail.gmail.com>
 <YDZRFeuzsamKyIJo@pendragon.ideasonboard.com>
In-Reply-To: <YDZRFeuzsamKyIJo@pendragon.ideasonboard.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 3 Mar 2021 20:08:35 +0530
Message-ID: <CAMty3ZBHKzksbrWoWapZb9h4hmbL9Lk1baqS_Lb7WPdmRr2hGQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: Add bindings for
 Chipone ICN6211
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 24, 2021 at 6:44 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> On Wed, Feb 24, 2021 at 06:07:43PM +0530, Jagan Teki wrote:
> > On Mon, Feb 15, 2021 at 5:48 PM Laurent Pinchart wrote:
> > > On Sun, Feb 14, 2021 at 11:22:10PM +0530, Jagan Teki wrote:
> > > > ICN6211 is MIPI-DSI to RGB Convertor bridge from Chipone.
> > > >
> > > > It has a flexible configuration of MIPI DSI signal input and
> > > > produce RGB565, RGB666, RGB888 output format.
> > > >
> > > > Add dt-bingings for it.
> > > >
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > ---
> > > > Changes for v3:
> > > > - updated to new dt-bindings style
> > > >
> > > >  .../display/bridge/chipone,icn6211.yaml       | 90 +++++++++++++++++++
> > > >  1 file changed, 90 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> > > > new file mode 100644
> > > > index 000000000000..13764f13fe46
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> > > > @@ -0,0 +1,90 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/display/bridge/chipone,icn6211.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Chipone ICN6211 MIPI-DSI to RGB Converter bridge
> > > > +
> > > > +maintainers:
> > > > +  - Jagan Teki <jagan@amarulasolutions.com>
> > > > +
> > > > +description: |
> > > > +  ICN6211 is MIPI-DSI to RGB Convertor bridge from chipone.
> > > > +
> > > > +  It has a flexible configuration of MIPI DSI signal input and
> > > > +  produce RGB565, RGB666, RGB888 output format.
> > >
> > > How does one select between the output formats ? Should the output
> > > connection option be described in the device tree ?
> >
> > I think that is a good option to select output formats via dts. what
> > if it makes it a generic property like data-lanes? since it is common
> > across many other bridges.
>
> Describing the output connection in the device tree sounds like a good
> idea indeed. The bus-width property could be used for this, maybe along
> the lines of
> https://lore.kernel.org/dri-devel/20201013020619.GG3942@pendragon.ideasonboard.com/.

I have seen an issue by passing bus-width where the same bus-with 24
can use by RGB888 and RGB666 according to
mipi_dsi_pixel_format_to_bpp. Having a default RGB888 format now and
update it when it supports properly, can be a good Idea I thought of.
Let me know if you have any comments?

Jagan.
