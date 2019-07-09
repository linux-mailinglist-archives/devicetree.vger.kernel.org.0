Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5401062D3C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2019 03:00:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725905AbfGIBAd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 21:00:33 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:60226 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725886AbfGIBAd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 21:00:33 -0400
Received: from pendragon.ideasonboard.com (softbank126163157105.bbtec.net [126.163.157.105])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A1EEA56A;
        Tue,  9 Jul 2019 03:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1562634030;
        bh=JcoNvT6UrNwEt+JAKB+7zeJTg9CMTlg7f+WQ+ug96XA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JJ0dnaeWZoBDMj0jnrK99OHQkR2NJ0rWC5xGY2fL7nW9Cl7NDb0ePwDHRPL56kUR6
         u2Wiqg1TbBPafN9RBiuGxFkbZzixD1txIm1yJHrrm751ziIsNMSOUErN2BN76ci26w
         1D+6jM1yyDMJ/NlGZCCH1Ht9P9E2UVwrXPh0a5aU=
Date:   Tue, 9 Jul 2019 04:00:04 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>, Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        devicetree@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 17/60] dt-bindings: Add legacy 'toppoly' vendor prefix
Message-ID: <20190709010004.GD4819@pendragon.ideasonboard.com>
References: <20190707180852.5512-1-laurent.pinchart@ideasonboard.com>
 <20190707181937.6250-1-laurent.pinchart@ideasonboard.com>
 <20190707181937.6250-14-laurent.pinchart@ideasonboard.com>
 <CAL_JsqLJy=UCeQ_Ex7tFh2OjtitNFVjT4v=PDZSbseva+ZrGDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAL_JsqLJy=UCeQ_Ex7tFh2OjtitNFVjT4v=PDZSbseva+ZrGDQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Mon, Jul 08, 2019 at 01:00:35PM -0600, Rob Herring wrote:
> On Sun, Jul 7, 2019 at 12:25 PM Laurent Pinchart wrote:
> >
> > The 'toppoly' vendor prefix is in use and refers to TPO, whose DT vendor
> > prefix is already defined as 'tpo'. Add 'toppoly' as an alternative and
> > document it as legacy.
> >
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index 2514463f2c63..d78527eb8254 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -867,6 +867,8 @@ patternProperties:
> >      description: Tecon Microprocessor Technologies, LLC.
> >    "^topeet,.*":
> >      description: Topeet
> > +  "^toppoly,.*":
> > +    description: TPO (legacy prefix, see 'tpo')
> 
> Add 'deprecated: true' also. That's a new property in json-schema
> draft8. It's not used for anything yet other than documentation.

Thank you for the pointer.

By the way this series conflicts with your patches that move all panel
bindings to yaml. I'll rebase it on top if yours gets merged first.

-- 
Regards,

Laurent Pinchart
