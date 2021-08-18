Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EED063F0537
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 15:49:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237168AbhHRNto (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 09:49:44 -0400
Received: from mail.kernel.org ([198.145.29.99]:43792 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237857AbhHRNte (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 09:49:34 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D35EA610C9
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 13:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629294539;
        bh=3d/r0rH82Ey9YBWihKynZopMtUG/4vN1LMoq18TvMS8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=rc38DWNtBDV7VojjFSXi7IbmxYaNytSXR1l7Hcww7UqG5JLo9+6MDUAtjECWeMT/+
         2hmo+hAxbGAhdOFbf3el4S29ogtpDC5uNFNQJq/mQ2/1IdZRPtRp343lRdhE681OD6
         5DJZMn+HsUOMKm3UIptiKfa6491obP5sWMiQHrurxqakgM1Q0uaUZsmv5557wpsSnG
         7Kg1bqBUeKIqjglfd+xbqWy8yip0b+k3GSjRO23khuBWvorOq99wLWkskgP/FvUJfH
         Emw+C1RVaLfm3xD3j0I/Sgoc8FWF8yqYcHQ8/0Izd6Sbspp71OkmlNh1dqqDlU4h6+
         4jUniSTbLVHRw==
Received: by mail-ed1-f47.google.com with SMTP id v2so3223745edq.10
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 06:48:59 -0700 (PDT)
X-Gm-Message-State: AOAM5319n1/N6Szd48KymbwP1eCfZRFhc0NctxdQ5DKy3fExm9Smhs0z
        59Fs3VzXXTe76/RYzc79YaJLNjuYngSwm5BDxg==
X-Google-Smtp-Source: ABdhPJyNyNVlAVmZYQ+7HoUkF0ChQiGO8tNXo0yVR4wbbxUAJsucTNHTT2Zlf9jpt5RmNIv1toalySAap6px4WTmfvs=
X-Received: by 2002:a05:6402:1215:: with SMTP id c21mr10340421edw.137.1629294538363;
 Wed, 18 Aug 2021 06:48:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-11-maxime@cerno.tech>
 <20210722022947.GA3168293@robh.at.kernel.org> <20210818124304.2jxsf44bcbprcvbk@gilmour>
In-Reply-To: <20210818124304.2jxsf44bcbprcvbk@gilmour>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 18 Aug 2021 08:48:46 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJjnGhXpfvPWU0HM8YHk5PyDup7ors3ewa17vc0bnVCmQ@mail.gmail.com>
Message-ID: <CAL_JsqJjnGhXpfvPWU0HM8YHk5PyDup7ors3ewa17vc0bnVCmQ@mail.gmail.com>
Subject: Re: [PATCH 10/54] dt-bindings: display: panel-lvds: Document panel compatibles
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@googlegroups.com,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 18, 2021 at 7:43 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Rob, Sam,
>
> On Wed, Jul 21, 2021 at 08:29:47PM -0600, Rob Herring wrote:
> > On Wed, Jul 21, 2021 at 04:03:40PM +0200, Maxime Ripard wrote:
> > > The binding mentions that all the drivers using that driver must use a
> > > vendor-specific compatible but never enforces it, nor documents the
> > > vendor-specific compatibles.
> > >
> > > Let's make we document all of them, and that the binding will create an
> > > error if we add one that isn't.
> > >
> > > Cc: dri-devel@lists.freedesktop.org
> > > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > Cc: Thierry Reding <thierry.reding@gmail.com>
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  .../bindings/display/panel/lvds.yaml           | 18 ++++++++++++------
> > >  1 file changed, 12 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> > > index 49460c9dceea..d1513111eb48 100644
> > > --- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
> > > +++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> > > @@ -31,12 +31,18 @@ allOf:
> > >
> > >  properties:
> > >    compatible:
> > > -    contains:
> > > -      const: panel-lvds
> > > -    description:
> > > -      Shall contain "panel-lvds" in addition to a mandatory panel-specific
> > > -      compatible string defined in individual panel bindings. The "panel-lvds"
> > > -      value shall never be used on its own.
> > > +    items:
> > > +      - enum:
> > > +          - advantech,idk-1110wr
> >
> > At least this one is documented elsewhere.
>
> Indeed, I missed it.
>
> > You can add 'minItems: 2' if you want to just enforce having 2 compatibles. Or do:
> >
> > items:
> >   - {}
> >   - const: panel-lvds
> >
> > Which also enforces the order.
>
> It's not just about the order since a missing compatible will also raise
> a warning.
>
> Some of those panels have a binding of their own, but some probably
> won't (and I can't find anything specific about the one I'm most
> interested in: tbs,a711-panel)
>
> Can we have something like:
>
> compatible:
>   oneOf:
>     - items:
>       - enum:
>         - tbs,a711-panel
>       - const: panel-lvds
>
>     - items:
>       - {}
>       - const: panel-lvds
>
> That would work for both cases I guess?

No, both conditions will be true. If you use 'anyOf', then we're never
really checking the specific compatible.

I think the problem here is trying to mix a common binding (aka an
incomplete collection of properties) and a specific binding. The
former is characterized with 'additionalProperties: true' as we have
here. You need to create a 'panel-simple-lvds.yaml' schema file that
references this one, defines all the 'simple' compatibles, and sets
'unevaluatedProperties: false'.

Rob
