Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47BEE2A6FC7
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 22:40:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727098AbgKDVkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 16:40:45 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:37049 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726777AbgKDVkp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 16:40:45 -0500
Received: by mail-ot1-f67.google.com with SMTP id l36so172352ota.4
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 13:40:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vxoN1R9RfGCh3RGhg2wYE9qV8ZcxH+XD7kYhc9N9ioE=;
        b=GuiEgZzj0p0PXmEwsAzwQJ87pRvobxWt4TQbq+8uj2/DU6HutVm7Sjb9xAgjK5igas
         qXwRUJS7G5VitEWfXLzwkUIf9F0aIpaF4pCXT9EBuCjHkqzxtzQYT4CBHfDZhEAoeSmT
         bPgK1e4FbsebAk5ksZtwtsFB0l+CCvGGQ18BRic0NqsfP8hyDjP7XWL/WStgEM0Kh9Yo
         Ls8DGeqhGmruHDxa+ULTMOqzGzDN7Zve0R6WxGg5ZkbjOuTvN9vtMqukGCCg+3ZcsQGT
         SzNlCq/zXUMx73JJlS6av5MBm/g0714wTc3fRwc0k8kg0e6X94pErGQPLwQ8QH7sQMvD
         M87Q==
X-Gm-Message-State: AOAM532Eb0zkD2FsjN0orbLW5bGGvQAQ/6D+Tm7JPnGs5vhy7c+wHkdw
        6Y7HyVMroGLdetB2r7GaWw==
X-Google-Smtp-Source: ABdhPJyjkquJkQavca5dYB1F3bBim/u9ogfjjxUUyl649Lki08IW51tJRaxE54QlhHT8DgcgURU9YQ==
X-Received: by 2002:a9d:69c6:: with SMTP id v6mr8549539oto.138.1604526044195;
        Wed, 04 Nov 2020 13:40:44 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id f124sm767912oia.27.2020.11.04.13.40.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 13:40:43 -0800 (PST)
Received: (nullmailer pid 4170255 invoked by uid 1000);
        Wed, 04 Nov 2020 21:40:42 -0000
Date:   Wed, 4 Nov 2020 15:40:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Tim Gover <tim.gover@raspberrypi.com>, devicetree@vger.kernel.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        linux-arm-kernel@lists.infradead.org,
        Daniel Vetter <daniel.vetter@intel.com>,
        Eric Anholt <eric@anholt.net>,
        bcm-kernel-feedback-list@broadcom.com,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel@lists.freedesktop.org,
        Frank Rowand <frowand.list@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: Add a property to deal with
 WiFi coexistence
Message-ID: <20201104214042.GA4170221@bogus>
References: <20201029134018.1948636-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201029134018.1948636-1-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 29 Oct 2020 14:40:16 +0100, Maxime Ripard wrote:
> The RaspberryPi4 has both a WiFi chip and HDMI outputs capable of doing
> 4k. Unfortunately, the 1440p resolution at 60Hz has a TMDS rate on the
> HDMI cable right in the middle of the first Wifi channel.
> 
> Add a property to our HDMI controller, that could be reused by other
> similar HDMI controllers, to allow the OS to take whatever measure is
> necessary to avoid that crosstalk.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Renamed the property
>   - Split it into a separate patch
> ---
>  .../devicetree/bindings/display/brcm,bcm2711-hdmi.yaml      | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
