Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D635F43C3E0
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 09:29:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238668AbhJ0Hbh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Oct 2021 03:31:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231849AbhJ0Hbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Oct 2021 03:31:34 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF2B2C061570
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 00:29:09 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id DE546596;
        Wed, 27 Oct 2021 09:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1635319747;
        bh=L3CMcbS3fGWaQu9xZukxn3KKXNQfGZlAosDA6YC9Ms4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=e5ora38kEU71meETND8yPFJih1WbBB8fiOgrvI/uLb+DXcOJH7+JTqhstqJ/cqZJY
         5vQgjFEF/pN7iNLZ+F9WjAL7Kx3Yk74CU31jTi0WPLWMsWmm2yTpWUMc5a9lob8Oku
         xZ2rMO+Xl80TxkPq3ClFTF1hDWG5YfpFkjUjwV5o=
Date:   Wed, 27 Oct 2021 10:28:43 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, Maxime Ripard <maxime@cerno.tech>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/4] dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc
 supply bindings
Message-ID: <YXj/q3apPR8qTliU@pendragon.ideasonboard.com>
References: <20211012064843.298104-4-alexander.stein@ew.tq-group.com>
 <20211013074722.7y7ug3eri4euknza@gilmour>
 <YWao69+QEK8Fhi/x@pendragon.ideasonboard.com>
 <20211014074110.ym6mzugde2m5ak22@gilmour>
 <YWo6U1juhMsHnQYU@pendragon.ideasonboard.com>
 <20211018152013.e3kmbm2lszb652gi@gilmour>
 <YW2zhFX9krzbHlpL@pendragon.ideasonboard.com>
 <20211019073728.7a3rmp3fz62rxh6w@gilmour>
 <YW6f8U2BC/6WQoVx@pendragon.ideasonboard.com>
 <YW8e43/rG7l5uraH@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YW8e43/rG7l5uraH@ravnborg.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Could you please share your opinion on this ?

On Tue, Oct 19, 2021 at 09:39:15PM +0200, Sam Ravnborg wrote:
> > > > 
> > > > That will not help validating that new DTs are compliant with the last
> > > > version of the bindings.
> > > > 
> > > > We have one tool, and two needs. The tool should be extended to cover
> > > > both, but today it can only support one. Which of these two is the most
> > > > important:
> > > > 
> > > > - Documentating old behaviour, to helper driver authors on other
> > > >   operating systems implement backward compatibility without having to
> > > >   look at the history ?
> > > > 
> > > > - Validating all new device trees to ensure they implement the latest
> > > >   recommended version of the bindings ?
> > > > 
> > > > I think the second one is much more frequent, and is also where most of
> > > > the issues will arise.
> > > 
> > > I understand the drive for the latter, but we shouldn't be dropping the
> > > former in the process, which has been what we've been doing for the last
> > > decade or so.
> > 
> > That point is debatable :-) I've repeatedly asked during review of DT
> > bindings for new properties to be made required, based on the above
> > rationale. This is the first time I see a push back.
> > 
> > I believe we need to address both of the above problems. In the very
> > short term, we have to pick which of the two we care about most, as we
> > can't have both yet. I have made my personal preference clear, but I'll
> > apply the official decision in further reviews. Maybe Rob could share
> > his point of view ?
> 
> The bindings are there to make sure the device trees are OK, and the
> bindings shall do their best to make sure the device trees are as
> correct as possible.
> 
> This will break existing device trees when we realise something is
> not correct in bindings files.
> 
> In such a case the ideal workflow would be to:
> 1) Fix the device tree files so they match the new and more correct
> bindings
> 2) Update the bindings with the latest fixes
> 
> As we have different trees for device trees and for bindings this is a
> bit difficult at the moment. But the above would be the ideal ways of
> working IMO.
> 
> Compare this to updating a header file in the kernel that results in new
> warnings/errors. The ways of working here is to fix the warnings/errors
> before adding the change to the header file. (For example when adding a
> must-check attribute).
> 
> My take - but then I seldom checks the device tree files as keeping the
> bindings free of errors was the challenge in the past. Rob does a
> fantastic jobs to keep the kernel error free here and I assume focus may
> change to device trees soon.

-- 
Regards,

Laurent Pinchart
