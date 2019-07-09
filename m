Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 81A6662D79
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 03:36:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726820AbfGIBf0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 21:35:26 -0400
Received: from mail.kernel.org ([198.145.29.99]:35064 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726784AbfGIBf0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 8 Jul 2019 21:35:26 -0400
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id DCAE0217D4
        for <devicetree@vger.kernel.org>; Tue,  9 Jul 2019 01:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562636125;
        bh=xPZoq9ebLBZ4qc4AlgGWCh4n4FLriLhzXe2xjvwKQy0=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=gb7yUgNA159Dz22SVpLI5lwlV8b7pFhUpaSLPjOqlk1uo0VJaVI1ls4rWq+Z9wwV8
         3fxkeR1sOqhAWaE4NUZrS7nyWoVPHqexCcZhfK8nYYLo5l5KVl9qjTJIEZZweTR89g
         NyrCv9I2B6J1ImzJYWTLPL25hutxBbJgWKCLjxuc=
Received: by mail-qt1-f180.google.com with SMTP id j19so20007549qtr.12
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 18:35:24 -0700 (PDT)
X-Gm-Message-State: APjAAAVBCM9rd1qYhDQdf/2kUZfOw5UUeDujzbxmv9EDDJAFz8slLeed
        vaNqDBuTbgEup0k4tc5LaIrmq3v4OYmymFyGFg==
X-Google-Smtp-Source: APXvYqyqmZeIkbto+17UZjfxGBJMlMWVcDAdvvmQ5T/erxPr9rb4UuIEp0K074iP8kNoQ+hmFRpW6TQL61jNAR0UsVY=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr16339056qtb.224.1562636124028;
 Mon, 08 Jul 2019 18:35:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190707180852.5512-1-laurent.pinchart@ideasonboard.com>
 <20190707181937.6250-1-laurent.pinchart@ideasonboard.com> <20190707181937.6250-14-laurent.pinchart@ideasonboard.com>
 <CAL_JsqLJy=UCeQ_Ex7tFh2OjtitNFVjT4v=PDZSbseva+ZrGDQ@mail.gmail.com> <20190709010004.GD4819@pendragon.ideasonboard.com>
In-Reply-To: <20190709010004.GD4819@pendragon.ideasonboard.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 8 Jul 2019 19:35:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ0ABZ_Qg_uHoZJU6krV7VB5rwyYWhcFoxDVhiYFpPS5Q@mail.gmail.com>
Message-ID: <CAL_JsqJ0ABZ_Qg_uHoZJU6krV7VB5rwyYWhcFoxDVhiYFpPS5Q@mail.gmail.com>
Subject: Re: [PATCH 17/60] dt-bindings: Add legacy 'toppoly' vendor prefix
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        devicetree@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 8, 2019 at 7:00 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Rob,
>
> On Mon, Jul 08, 2019 at 01:00:35PM -0600, Rob Herring wrote:
> > On Sun, Jul 7, 2019 at 12:25 PM Laurent Pinchart wrote:
> > >
> > > The 'toppoly' vendor prefix is in use and refers to TPO, whose DT vendor
> > > prefix is already defined as 'tpo'. Add 'toppoly' as an alternative and
> > > document it as legacy.
> > >
> > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > ---
> > >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > index 2514463f2c63..d78527eb8254 100644
> > > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > @@ -867,6 +867,8 @@ patternProperties:
> > >      description: Tecon Microprocessor Technologies, LLC.
> > >    "^topeet,.*":
> > >      description: Topeet
> > > +  "^toppoly,.*":
> > > +    description: TPO (legacy prefix, see 'tpo')
> >
> > Add 'deprecated: true' also. That's a new property in json-schema
> > draft8. It's not used for anything yet other than documentation.
>
> Thank you for the pointer.
>
> By the way this series conflicts with your patches that move all panel
> bindings to yaml. I'll rebase it on top if yours gets merged first.

I committed the series today, but I don't see what conflicts though.

Rob
