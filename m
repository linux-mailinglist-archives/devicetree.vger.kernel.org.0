Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E42D27D64E
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 21:00:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728210AbgI2TA6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 15:00:58 -0400
Received: from mail-oo1-f67.google.com ([209.85.161.67]:42115 "EHLO
        mail-oo1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728172AbgI2TA6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 15:00:58 -0400
Received: by mail-oo1-f67.google.com with SMTP id g26so1554937ooa.9
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 12:00:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6sxjm/h53ZlWGhKVi/BI1snEk9zxjIfEAdpeaGtQZss=;
        b=FpMNqWQXFCswxIheQIXip051Dew5S8VVmx8CLG0OVbf++29fOC1tamgPh+cs2kYNdS
         UiBj69KnC9UIszpU4M2h1Bw7uLDYO9j3eAoA7ZZZYUW8q+31LxKbJJA5wmzQ9Vkg04hk
         TtOKldryIKg2fpn7vBoP6Zp5wEk6wcqcDCkRHDe3kceKpvUcI82o9Gl8xUtP5P2CQU/5
         SKxPSzWKKnidiMGfWYOiKNAdtxy4yfASNovIK5I0EZXyhRfp7lZHxQRrbhhQLq41wcm8
         IyiYd0E+j8Ti7RtAcGrwsfstO3C2yjUiuDVy9m28TXmGeYGBAJabKBJLru1SFN7V6ZsD
         eUPg==
X-Gm-Message-State: AOAM531GUhrWo9s8idNh5DZJEbo0N6vysyAPCoOZbdTzBV7kP3TdMyqK
        AizlC/IJs/AfVX2C4LrIFg==
X-Google-Smtp-Source: ABdhPJygoarE7ZwUXPOTJGxm/lFQ5wLlJdb3eJvCxODi77a6glDpIAOe4kc8T1X/FTVh57MwugQfSA==
X-Received: by 2002:a4a:d38c:: with SMTP id i12mr5643217oos.81.1601406057182;
        Tue, 29 Sep 2020 12:00:57 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id c12sm1194876otm.61.2020.09.29.12.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 12:00:56 -0700 (PDT)
Received: (nullmailer pid 968417 invoked by uid 1000);
        Tue, 29 Sep 2020 19:00:55 -0000
Date:   Tue, 29 Sep 2020 14:00:55 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Eric Anholt <eric@anholt.net>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH 1/2] drm/vc4: hdmi: Disable Wifi Frequencies
Message-ID: <20200929190055.GA962101@bogus>
References: <20200925130744.575725-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200925130744.575725-1-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 25, 2020 at 03:07:43PM +0200, Maxime Ripard wrote:
> There's cross-talk on the RPi4 between the 2.4GHz channels used by the WiFi
> chip and some resolutions, most notably 1440p at 60Hz.
> 
> In such a case, we can either reject entirely the mode, or lower slightly
> the pixel frequency to remove the overlap. Let's go for the latter.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/brcm,bcm2711-hdmi.yaml        |  6 ++++++
>  drivers/gpu/drm/vc4/vc4_hdmi.c                     | 14 +++++++++++++-
>  drivers/gpu/drm/vc4/vc4_hdmi.h                     |  8 ++++++++
>  3 files changed, 27 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> index 03a76729d26c..63e7fe999c0a 100644
> --- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> @@ -76,6 +76,12 @@ properties:
>    resets:
>      maxItems: 1
>  
> +  raspberrypi,disable-wifi-frequencies:
> +    type: boolean
> +    description: >
> +      Should the pixel frequencies in the WiFi frequencies range be
> +      avoided?

Based on googling the issue, perhaps should be a common property?
