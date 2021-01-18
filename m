Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 429232F9CF1
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 11:40:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388444AbhARKhz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 05:37:55 -0500
Received: from mail-lf1-f47.google.com ([209.85.167.47]:39450 "EHLO
        mail-lf1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388775AbhARKXL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 05:23:11 -0500
Received: by mail-lf1-f47.google.com with SMTP id a12so23310020lfl.6
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 02:22:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=etHR2nUpbx7OfSX6dc0Gj4zCnf0F4dHWRck6e+5f6Aw=;
        b=KjaldxHeJ+wwX+LmwDzuC3zKQ2jRn3yDURX4EM5eGCQiblvdP1TpU0VAwdLf3MFvmu
         H0QhmhnZsgK6f0VyqjL00U9SzCfXbbAZAlotlIrPfwM750mTu9aXe3p388LKJfSm3Rxg
         rM9l6aFI800LPrA+XdOG+/rgVzWhJIaU+ME9bp4DFGjmIirMXFu5q1EIaD2mYQhXF7Mg
         l7wgMtgBDNwUndincvl/VCJaj/oeI94/akNo4uCnS7uAxKcgCH4stT8jFU/VXV3nADWC
         iDMDqNUZgS4WflQrUunZ25m7unXZpbOqYvSuRzaenWPZCGa0s3ecJba5gmTQMU+QWW1P
         aNeg==
X-Gm-Message-State: AOAM531mFTBVLTtB1KIfhE7288jxGXpu0+XOt77YGg+inbEazZzSg3+w
        eyJL2ta8gtTqr3mRre05gHgnUMBBhZJEUQ==
X-Google-Smtp-Source: ABdhPJyvEz1tTDV3jNLzukIL2PzapKWCdCILD2LekJp9U6qNLySVQ/2APMNqdjLf2h4jxTTe/c/bqQ==
X-Received: by 2002:a19:801:: with SMTP id 1mr11356273lfi.113.1610965348421;
        Mon, 18 Jan 2021 02:22:28 -0800 (PST)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id y24sm1640917ljm.125.2021.01.18.02.22.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 02:22:28 -0800 (PST)
Received: by mail-lf1-f54.google.com with SMTP id o10so23236957lfl.13
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 02:22:27 -0800 (PST)
X-Received: by 2002:a19:8041:: with SMTP id b62mr11440556lfd.496.1610965347757;
 Mon, 18 Jan 2021 02:22:27 -0800 (PST)
MIME-Version: 1.0
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-4-maxime@cerno.tech>
 <YAFBTt6MsFCy1Hkl@pendragon.ideasonboard.com> <20210118100321.ktbnfpsxka2icbaa@gilmour>
In-Reply-To: <20210118100321.ktbnfpsxka2icbaa@gilmour>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Mon, 18 Jan 2021 18:22:15 +0800
X-Gmail-Original-Message-ID: <CAGb2v64o84POSVAHMeRkKrAtd7gPr6-4H133RfsjJAnfwQNSjw@mail.gmail.com>
Message-ID: <CAGb2v64o84POSVAHMeRkKrAtd7gPr6-4H133RfsjJAnfwQNSjw@mail.gmail.com>
Subject: Re: [PATCH 04/19] dt-bindings: bridge: simple: Add corpro,gm7123 compatible
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 18, 2021 at 6:03 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Laurent,
>
> On Fri, Jan 15, 2021 at 09:16:30AM +0200, Laurent Pinchart wrote:
> > Thank you for the patch.
> >
> > On Thu, Jan 14, 2021 at 12:35:23PM +0100, Maxime Ripard wrote:
> > > The corpro,gm7123 was in use in a DT but was never properly documented,
> > > let's add it.
> > >
> > > Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  .../devicetree/bindings/display/bridge/simple-bridge.yaml     | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> > > index 64e8a1c24b40..97ca07b56cbc 100644
> > > --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> > > +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> > > @@ -22,6 +22,10 @@ properties:
> > >                - ti,ths8134a
> > >                - ti,ths8134b
> > >            - const: ti,ths8134
> > > +      - items:
> > > +          - const: corpro,gm7123
> > > +          - const: adi,adv7123
> >
> > Do we need adi,adv7123 ?
>
> I'm not sure: it looks like having both the adv7123 and the dumb-vga-dac
> compatible was never an option, so we can also change the DT to have
> corpro,gm7123, dumb-vga-dac

FYI I used the adi,adv7123 fallback because the gm7123 datasheet compares
the two, with the gm7123 having lower standby current, but only limited to
3.3V power supply. Maximum resolution, conversion rate, and the range of
output current are all the same. The package is the same as well. I
believe the gm7123 is intended as a drop-in clone of the adv7123.

ChenYu
