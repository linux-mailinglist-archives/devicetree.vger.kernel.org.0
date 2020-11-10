Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA20C2ACF48
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 06:53:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729801AbgKJFx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 00:53:29 -0500
Received: from asavdk3.altibox.net ([109.247.116.14]:42644 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729795AbgKJFx3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 00:53:29 -0500
Received: from ravnborg.org (unknown [188.228.123.71])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id 077672003B;
        Tue, 10 Nov 2020 06:53:25 +0100 (CET)
Date:   Tue, 10 Nov 2020 06:53:24 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Liu Ying <victor.liu@nxp.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: display: panel-simple: Allow optional
 'ports' property
Message-ID: <20201110055324.GA1993169@ravnborg.org>
References: <1604477017-17642-1-git-send-email-victor.liu@nxp.com>
 <20201104104735.GA1581328@ravnborg.org>
 <9a187307aa4f39c44a117f2b99a7f7fd4817e129.camel@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a187307aa4f39c44a117f2b99a7f7fd4817e129.camel@nxp.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VbvZwmh9 c=1 sm=1 tr=0
        a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
        a=kj9zAlcOel0A:10 a=Todku-sVb2SKgMi1d8kA:9 a=CjuIK1q_8ugA:10
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Liu Ying,
On Tue, Nov 10, 2020 at 10:37:27AM +0800, Liu Ying wrote:
> Hi Sam,
> 
> On Wed, 2020-11-04 at 11:47 +0100, Sam Ravnborg wrote:
> > Hi Liu Ying
> > 
> > On Wed, Nov 04, 2020 at 04:03:37PM +0800, Liu Ying wrote:
> > > Some simple panels have dual LVDS interfaces which receive even and
> > > odd
> > > pixels respectively, like 'nlt,nl192108ac18-02d' and
> > > 'koe,tx26d202vm0bwa'.
> > > So, let's allow optional 'ports' property so that pixel order can
> > > be got
> > > via drm_of_lvds_get_dual_link_pixel_order() if it's child nodes 
> > > 'port@0'
> > > and 'port@1' contain 'dual-lvds-even-pixels' and 'dual-lvds-odd-
> > > pixels'
> > > properties respectively.
> > 
> > A panel with dual LVDS interfaces is no longer in the "simple"
> > category.
> > The panel-simple binding shall be limited to the simple pnales only.
> > 
> > This is also why we have for example panel-simple-dsi binding.
> > 
> > Please consider either a binding dedicated for the dual port displays
> > or
> 
> Thanks for your review.
> 
> Does a new 'panel-simple-lvds-dual-ports.yaml' binding look ok?
> I assume it would inherit all properties of panel-simple.yaml and all
> existing compatibles of LVDS panels with dual ports in
> panel-simple.yaml can be moved to it.

Yes, that would be fine. If possible we shall have similar panels
described by the same binding.

Try to send out the binding for review early before starting to move too
much around - so we can get an early look at it at see if this is indeed
the right direction to go.

	Sam
