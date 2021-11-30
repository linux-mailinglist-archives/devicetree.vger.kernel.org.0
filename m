Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 392C0463332
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 12:47:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234687AbhK3LuY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 06:50:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241180AbhK3Ltm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 06:49:42 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCD29C061377
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 03:46:01 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 0B6B1CE18B8
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 11:46:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B290C53FD2;
        Tue, 30 Nov 2021 11:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638272758;
        bh=NaJPt5ZfhcOqGwPuUoJxkdXpkvIfXMuvm1EjiLlhrA8=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=l6SVrj96Z9TEcxscLwygYJqGqnP8XY6ccBjU5L1bUR0Xu+aCdPbem7raqQp1lWlj3
         zyjudDEyIVFZ4AggYGgiY3bT1/KgrszWwdWGwY6ifHsyaOm3Ojxrmc0o7GfOflxJ/U
         zcU6cu6hqs1uyOJraEnZKJiu3bI/j/7EKsJXAEBCWcuW32wNZfq1jUq7Y6Xfl+jrA+
         rEfivr+GXb8t0jthTGX8x5nfZxPGd8oKGba6Bv6gh1U3fO8L1asf8sNAPIUX9Zgwlv
         GZ2wlmvH/taqmPK+IxH90TobtHa1yWSSdiOmOoj565egkY0sgto89YFvVuFXIYWfv4
         kblF0b/QpOLaQ==
Message-ID: <cad0e66b5cb88f224bbbe54e7ed8552275864733.camel@kernel.org>
Subject: Re: [PATCH 0/5] drm/vc4: Use the firmware to stop the display
 pipeline
From:   nicolas saenz julienne <nsaenz@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>
Cc:     linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Date:   Tue, 30 Nov 2021 12:45:49 +0100
In-Reply-To: <20211117145040.334827-1-maxime@cerno.tech>
References: <20211117145040.334827-1-maxime@cerno.tech>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

On Wed, 2021-11-17 at 15:50 +0100, Maxime Ripard wrote:
> Hi,
> 
> The VC4 driver has had limited support to disable the HDMI controllers and
> pixelvalves at boot if the firmware has enabled them.
> 
> However, this proved to be limited, and a bit unreliable so a new firmware
> command has been introduced some time ago to make it free all its resources and
> disable any display output it might have enabled.
> 
> This series takes advantage of that command to call it once the transition from
> simplefb to the KMS driver has been done.

I think it would make sense to integrate this funtionality into
'reset/reset-raspberrypi.c' and pass it to VC4 as a reset controller. It fits
the same startup situation as the one we have with the USB controller. Also, it
would contain the firmware weirdness in a single spot.

Otherwise, please use 'devm_rpi_firmware_get()'.

Regards,
Nicolas
