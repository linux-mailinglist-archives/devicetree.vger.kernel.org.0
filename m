Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D667525A22E
	for <lists+devicetree@lfdr.de>; Wed,  2 Sep 2020 02:10:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726167AbgIBAKj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 20:10:39 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:34352 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726091AbgIBAKi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Sep 2020 20:10:38 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 07C1DAF2;
        Wed,  2 Sep 2020 02:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1599005431;
        bh=T0Od6j/YUk8kL37bcHcehkenphDRsmOWADvKVd8tMCE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=r4b7x/EOeZJlFBCgShmlvVyXdvsmYhRKg3LxXT23zS3bJC1WbCey8eOdoI66hpDHC
         xRXC6Q4wIatINWLCRpQYDiJZmUuEPRj9hxArv5rI28k4UHIxQyWYpa22Ds4Ls2fKAP
         GyQtUk21cZoUO0s0xJ5kYmxHxrFyD0xLAiTDwWUg=
Date:   Wed, 2 Sep 2020 03:10:09 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] drm/of: Change the prototype of
 drm_of_lvds_get_dual_link_pixel_order
Message-ID: <20200902001009.GC14351@pendragon.ideasonboard.com>
References: <cover.7029eefe5c5350920f91d4cd4cbc061466752f3c.1596101672.git-series.maxime@cerno.tech>
 <6169dd15782627c8415583881fa94ba39c4f5221.1596101672.git-series.maxime@cerno.tech>
 <20200831202852.GU16155@pendragon.ideasonboard.com>
 <20200901132340.tahqsx3sknl47ile@gilmour.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200901132340.tahqsx3sknl47ile@gilmour.lan>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

On Tue, Sep 01, 2020 at 03:23:40PM +0200, Maxime Ripard wrote:
> On Mon, Aug 31, 2020 at 11:28:52PM +0300, Laurent Pinchart wrote:
> > On Thu, Jul 30, 2020 at 11:35:01AM +0200, Maxime Ripard wrote:
> > > The drm_of_lvds_get_dual_link_pixel_order() function took so far the
> > > device_node of the two ports used together to make up a dual-link LVDS
> > > output.
> > > 
> > > This assumes that a binding would use an entire port for the LVDS output.
> > > However, some bindings have used endpoints instead and thus we need to
> > > operate at the endpoint level. Change slightly the arguments to allow that.
> > 
> > Is this still needed ? Unless I'm mistaken, the Allwinner platform now
> > uses two TCON instances for the two links, so there are two ports.
> 
> Yes, and no.
> 
> The two TCONs indeed have each a port of their own, so we do have two
> ports indeed. However, what we don't have is a port entirely dedicated
> to the LVDS output.
> 
> Our binding uses a single port for all its output (RGB, LVDS or TV/HDMI
> controllers) with different endpoints.

Good point. Then let's keep this patch :-) We can't fix existing
bindings, but for the future, let's model separate display outputs as
ports, not endpoints.

-- 
Regards,

Laurent Pinchart
