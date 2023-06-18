Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE2C8734737
	for <lists+devicetree@lfdr.de>; Sun, 18 Jun 2023 19:30:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbjFRRaN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jun 2023 13:30:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjFRRaM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jun 2023 13:30:12 -0400
Received: from mailrelay6-1.pub.mailoutpod2-cph3.one.com (mailrelay6-1.pub.mailoutpod2-cph3.one.com [46.30.211.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FB1EE4C
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 10:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=vG7sqVWtMF5VuXJqEO+23Khmg6kDKBBpVF/2bD8xXYI=;
        b=BvIbBOVm2GyNkHeIoITTHmii1o0VDJJchx9+/wmJGMuwSo/aaTwoeGCx31BVoe2PpoYalgMInmsMT
         9skWHS5xA/IpC4oqoCuoUn5ZQF1cNerBWAjeNPAGIim/AmcS0KBYLGjSVBCLGdRlcPfXDQphcP+UMK
         QmVJWFoYWQzJBMoakyK4b4uLW3hRbB2XNdgJV1XBNj6U9gZxzIUSrCztuJpvVfGcnQeidBuy7oryh2
         9ZqFGsuoaJDGyWCU/cHn6oMsEWh5uGK4SuqQESM7lYsoJLLXqTcJ+vFNEvqtjFfd/rylsGbEjXxscS
         pHA3HPBaePnwfICzoYqclq4DkdmHx3Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=vG7sqVWtMF5VuXJqEO+23Khmg6kDKBBpVF/2bD8xXYI=;
        b=6dU47njDUKpt0LUz5p1kycpETnpqrJz5uCy66LvPBlYGJlqr52zoHIWQkkXSSU/sDTSHs4AEatljr
         nL3Nr9+Bw==
X-HalOne-ID: 9902f0ff-0dfd-11ee-84b3-6f01c1d0a443
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
        by mailrelay6 (Halon) with ESMTPSA
        id 9902f0ff-0dfd-11ee-84b3-6f01c1d0a443;
        Sun, 18 Jun 2023 17:28:55 +0000 (UTC)
Date:   Sun, 18 Jun 2023 19:28:54 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        dri-devel@lists.freedesktop.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Thomas Weber <thomas.weber@corscience.de>
Subject: Re: [PATCH 2/2] drm/panel: simple: Add support for Mitsubishi
 AA084XE01
Message-ID: <20230618172854.GA1952539@ravnborg.org>
References: <20230616164524.2806421-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230616164524.2806421-1-miquel.raynal@bootlin.com>
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

On Fri, Jun 16, 2023 at 06:45:24PM +0200, Miquel Raynal wrote:
> From: Thomas Weber <thomas.weber@corscience.de>
> 
> Add support for the Mitsubishi AA084XE01 panel which is an 8.4 inch XGA
> TFT-LCD module for industrial use.
> 
> Link: https://www.mouser.fr/datasheet/2/274/aa084xe01_e-364171.pdf
> Signed-off-by: Thomas Weber <thomas.weber@corscience.de>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  drivers/gpu/drm/panel/panel-simple.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 8a3b685c2fcc..f79c9f9124a0 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2670,6 +2670,30 @@ static const struct panel_desc mitsubishi_aa070mc01 = {
>  	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
>  };
>  
> +static const struct drm_display_mode mitsubishi_aa084xe01_mode = {
> +	.clock = 80000,
> +	.hdisplay = 1024,
> +	.hsync_start = 1024 + 24,
> +	.hsync_end = 1024 + 24 + 63,
> +	.htotal = 1024 + 24 + 63 + 1,
> +	.vdisplay = 768,
> +	.vsync_start = 768 + 3,
> +	.vsync_end = 768 + 3 + 6,
> +	.vtotal = 768 + 3 + 6 + 1,
> +	.flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC,
> +};
> +
> +static const struct panel_desc mitsubishi_aa084xe01 = {
> +	.modes = &mitsubishi_aa084xe01_mode,
> +	.num_modes = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 1024,
> +		.height = 768,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB565_1X16,
> +};
The .connector_type must be set.
Also consider if .bus_flags needs to be specified.

	Sam
