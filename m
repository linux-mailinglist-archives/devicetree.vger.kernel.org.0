Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7909226DA32
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 13:30:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726673AbgIQLaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 07:30:25 -0400
Received: from mga09.intel.com ([134.134.136.24]:39149 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726653AbgIQL36 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 17 Sep 2020 07:29:58 -0400
X-Greylist: delayed 431 seconds by postgrey-1.27 at vger.kernel.org; Thu, 17 Sep 2020 07:29:57 EDT
IronPort-SDR: rq/WQvOVO2iX4ztDDdhZQM+Mfr7VO9+8GM9GsUE/8DK7+FCHU3Nw2eklJSebb27Hf00U7Yls0G
 qY4lRzprIDVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="160602055"
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; 
   d="scan'208";a="160602055"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 04:22:34 -0700
IronPort-SDR: b6f6ypwXNkw37cWiv2QOecnwap/0iMn8kmsNNzYKlwqLdfK/cZCblr2p+H3H+FObkRtS9gjV9n
 Q2J+9mgahjEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; 
   d="scan'208";a="307433097"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
  by orsmga006.jf.intel.com with SMTP; 17 Sep 2020 04:22:30 -0700
Received: by stinkbox (sSMTP sendmail emulation); Thu, 17 Sep 2020 14:22:29 +0300
Date:   Thu, 17 Sep 2020 14:22:29 +0300
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
Message-ID: <20200917112229.GR6112@intel.com>
References: <20200917055210.22868-1-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200917055210.22868-1-tomi.valkeinen@ti.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 17, 2020 at 08:52:10AM +0300, Tomi Valkeinen wrote:
> Add binding for DisplayPort connector. A few notes:
> 
> * Similar to hdmi-connector, it has hpd-gpios as an optional property,
>   as the HPD could also be handled by, e.g., the DP bridge.
> 
> * dp-pwr-supply, which provides 3.3V on DP_PWR pin, is optional, as it
>   is not strictly required: standard DP cables do not even have the pin
>   connected.
> 
> * Connector type. Full size and mini connectors are identical except for
>   the connector size and form, so I believe there is no functional need
>   for this property. But similar to 'label' property, it might be used
>   to present information about the connector to the userspace.
> 
> * No eDP. There's really no "eDP connector", as it's always a custom
>   made connection between the DP and the DP panel. So possibly there is
>   no need for edp-connector binding, but even if there is, I don't want
>   to guess what it could look like, and could it be part of the
>   dp-connector binding.
> 
> * No DP++. I'm not familiar with DP++, but I think it's all handled by
>   the DP bridge, and does not need any new properties to the dp-connector.

You might need an i2c bus for this. It's up to the source device
to either hook up just AUX CH, or both AUX CH and DDC to a DP++
connector. If just AUX CH is wired up you are limited to using
only type2 DP dual mode adapters, whereas if you also have DDC
the crappier type1 adapters will also work.

I guess it's possible some bridges might handle all that for you.
But eg. on i915 we always set up both AUX CH and DDC, and some
extra circuitry on the board will isolate one or the other
depending on what kind of dongle/cable gets plugged in
(identified via the CONFIG pins).

-- 
Ville Syrjälä
Intel
