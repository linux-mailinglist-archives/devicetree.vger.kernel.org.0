Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F4E626E775
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 23:35:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725900AbgIQVf0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 17:35:26 -0400
Received: from mga04.intel.com ([192.55.52.120]:43989 "EHLO mga04.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725844AbgIQVfX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 17 Sep 2020 17:35:23 -0400
IronPort-SDR: VtNHeK/IEKAw35sRnwxfdpjzVRm8z+Fj4P6j1ES+MiGd9/7zByi2GE+GdbwpNjjjuUAzlzIyHz
 wGBg7OS/Uj4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="157184423"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; 
   d="scan'208";a="157184423"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 14:35:20 -0700
IronPort-SDR: Q9dXyvDnpLJrDbIMCfVjW0S0GMnX5iGEkiwByOun0p3b/BedA2YB+zHByRuX8thjy2H13dfdqa
 XhO/7GHPuxdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; 
   d="scan'208";a="307628762"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
  by orsmga006.jf.intel.com with SMTP; 17 Sep 2020 14:35:16 -0700
Received: by stinkbox (sSMTP sendmail emulation); Fri, 18 Sep 2020 00:35:15 +0300
Date:   Fri, 18 Sep 2020 00:35:15 +0300
From:   Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCHv2] dt-bindings: dp-connector: add binding for DisplayPort
 connector
Message-ID: <20200917213515.GE6112@intel.com>
References: <20200917055210.22868-1-tomi.valkeinen@ti.com>
 <20200917112229.GR6112@intel.com>
 <5265c620-ee51-3896-4c5a-9e3284c52327@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5265c620-ee51-3896-4c5a-9e3284c52327@ti.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 17, 2020 at 03:39:38PM +0300, Tomi Valkeinen wrote:
> On 17/09/2020 14:22, Ville Syrjälä wrote:
> > On Thu, Sep 17, 2020 at 08:52:10AM +0300, Tomi Valkeinen wrote:
> >> Add binding for DisplayPort connector. A few notes:
> >>
> >> * Similar to hdmi-connector, it has hpd-gpios as an optional property,
> >>   as the HPD could also be handled by, e.g., the DP bridge.
> >>
> >> * dp-pwr-supply, which provides 3.3V on DP_PWR pin, is optional, as it
> >>   is not strictly required: standard DP cables do not even have the pin
> >>   connected.
> >>
> >> * Connector type. Full size and mini connectors are identical except for
> >>   the connector size and form, so I believe there is no functional need
> >>   for this property. But similar to 'label' property, it might be used
> >>   to present information about the connector to the userspace.
> >>
> >> * No eDP. There's really no "eDP connector", as it's always a custom
> >>   made connection between the DP and the DP panel. So possibly there is
> >>   no need for edp-connector binding, but even if there is, I don't want
> >>   to guess what it could look like, and could it be part of the
> >>   dp-connector binding.
> >>
> >> * No DP++. I'm not familiar with DP++, but I think it's all handled by
> >>   the DP bridge, and does not need any new properties to the dp-connector.
> > 
> > You might need an i2c bus for this. It's up to the source device
> > to either hook up just AUX CH, or both AUX CH and DDC to a DP++
> > connector. If just AUX CH is wired up you are limited to using
> > only type2 DP dual mode adapters, whereas if you also have DDC
> > the crappier type1 adapters will also work.
> 
> Ok, thanks for the clarifications on this.
> 
> > I guess it's possible some bridges might handle all that for you.
> > But eg. on i915 we always set up both AUX CH and DDC, and some
> > extra circuitry on the board will isolate one or the other
> > depending on what kind of dongle/cable gets plugged in
> > (identified via the CONFIG pins).
> 
> Is that automatic on i915? I could imagine a gpio-controlled mux doing the isolation, and then we
> need some driver controlling the gpio.

Yeah, we don't even get the state of that pin in the driver.
We just blindly probe both DDC and AUX CH. Due to the isolation
only one goes through, the other other just times out.

> 
> I could add the ddc bus the same way as on hdmi-connector.yaml, but perhaps it's better to leave
> that for someone with a DP++ board. Afaics, there should be no problems adding this later.

Another option might be to declare both dp and hdmi connectors for
the same physical connector. That's the approach we use for
drm_connectors in i915. But dunno if that's a good idea for dt.

-- 
Ville Syrjälä
Intel
