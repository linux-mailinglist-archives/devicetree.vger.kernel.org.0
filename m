Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A31D66E7A6
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 21:22:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230262AbjAQUWe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 15:22:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235136AbjAQUT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 15:19:26 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5C5B37B46
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 11:12:43 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id cm26-20020a056830651a00b00684e5c0108dso4648628otb.9
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 11:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=80bwH3PdcEqWS0i5bj0Uz5hjcHgKhjQVkRmxgcbVfhY=;
        b=IBrVVbtOCUjC9hclLLfP4FFVNrV7UFzIGSIOKPU5y6paCxRPwVmewmHt29J+YEWuGe
         MZf06d/xeUMOmHCqfKXDEkvYPAY9zZB++NbMb4THHASchpgLWYluVZZxEgoirIwRKXnR
         k9SLK3vBmJK6q7mg0U/VaSrVuYvmOWU3M7BRyBhErBlGKuaClHxiMfI2cMR3WeuUZoPC
         UwOq9Cz71vPR33N2WUivEMDer/lFtMyIQN5Vsm1OJmkJ5CQvBtbqJJM36DVdU5EDuflM
         uCDRy/08l47+YGuCCl16wxs2t5G1gfyyQD09ujHZ+Nbw7UfemY0/DgX4YmIPn+uBzV2R
         YiCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=80bwH3PdcEqWS0i5bj0Uz5hjcHgKhjQVkRmxgcbVfhY=;
        b=stvHoC+/W2fyAewnO58Nn44SOf3aMyTu4mjRge/ElGFDJZw6UQg28qkAPgjykYMe8K
         JiagK0euOGWBVMC8gBoXPgRJc9MjAY6vEz+Fpk1gXmpswzq/Noa3XVvsOQeMNkWv3Tys
         ADVscGB6gRQ99QmcTQ4l4HbigbPtOh1cZQL/g6aHU+TDcdt3IufZ7ck4fGuCyDcO6+rt
         sWRMy/wx1Cu5M4U0KiOfVtdk3pHoMKorEM/gjVED40GhmAeQ00b+AfQN3lSFx9+Dllwt
         scPjp5SJGvRLF3Fsb9pkbONy8OVKWj+X59ToWZshSC+PunM0ZwDp3edm6oIF6hvULhSs
         010g==
X-Gm-Message-State: AFqh2kr4UE1f8aahrMZhRed7chTlJ8glMNrcxL7BRTjxSP9qZ+N7Cmg9
        niV1iCu2L5sUK7Lyn7lBmkU=
X-Google-Smtp-Source: AMrXdXvcvuSbNFy7h8FLfriSySZqOtZ6eUDxi/hd1E30h1H0DeDFOeM9yGYwwCLn5UIeJjWCt3qDvQ==
X-Received: by 2002:a9d:6742:0:b0:684:a1e5:4e with SMTP id w2-20020a9d6742000000b00684a1e5004emr2170194otm.14.1673982762290;
        Tue, 17 Jan 2023 11:12:42 -0800 (PST)
Received: from neuromancer. (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r11-20020a056830134b00b0067781a9292asm2317141otq.2.2023.01.17.11.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 11:12:41 -0800 (PST)
Message-ID: <63c6f329.050a0220.82479.85d4@mx.google.com>
X-Google-Original-Message-ID: <Y8bzJwrWO/+z8sdh@neuromancer.>
Date:   Tue, 17 Jan 2023 13:12:39 -0600
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linus.walleij@linaro.org, maccraft123mc@gmail.com,
        tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V10 1/4] drm: of: Add drm_of_get_dsi_bus helper function
References: <20230112175358.421975-1-macroalpha82@gmail.com>
 <20230112175358.421975-2-macroalpha82@gmail.com>
 <20230117165819.4rx7aucvyp5e2rj6@houat>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117165819.4rx7aucvyp5e2rj6@houat>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 17, 2023 at 05:58:19PM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Thu, Jan 12, 2023 at 11:53:55AM -0600, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add helper function to find DSI host for devices where DSI panel is not
> > a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> > official Raspberry Pi touchscreen display).
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> > ---
> >  drivers/gpu/drm/drm_of.c | 70 ++++++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_of.h     | 10 ++++++
> >  2 files changed, 80 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > index 7bbcb999bb75..6c2c97a716fe 100644
> > --- a/drivers/gpu/drm/drm_of.c
> > +++ b/drivers/gpu/drm/drm_of.c
> > @@ -10,6 +10,7 @@
> >  #include <drm/drm_crtc.h>
> >  #include <drm/drm_device.h>
> >  #include <drm/drm_encoder.h>
> > +#include <drm/drm_mipi_dsi.h>
> >  #include <drm/drm_of.h>
> >  #include <drm/drm_panel.h>
> >  
> > @@ -493,3 +494,72 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
> >  	return ret;
> >  }
> >  EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
> > +
> > +#if IS_ENABLED(CONFIG_DRM_MIPI_DSI)
> > +
> > +/**
> > + * drm_of_get_dsi_bus - find the DSI bus for a given device
> > + * @dev: parent device of display (SPI, I2C)
> > + * @info: DSI device info to be updated with DSI node. This is optional
> > + * and if not needed can be NULL.
> > + *
> > + * Gets parent DSI bus for a DSI device controlled through a bus other
> > + * than MIPI-DCS (SPI, I2C, etc.) using the Device Tree.
> > + *
> > + * Returns pointer to mipi_dsi_host if successful, -EINVAL if the
> > + * request is unsupported, -EPROBE_DEFER if the DSI host is found but
> > + * not available, or -ENODEV otherwise.
> > + */
> > +struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
> > +					 struct mipi_dsi_device_info *info)
> > +{
> > +	struct mipi_dsi_host *dsi_host;
> > +	struct device_node *endpoint, *dsi_host_node;
> > +
> > +	/*
> > +	 * Get first endpoint child from device.
> > +	 */
> > +	endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
> > +	if (!endpoint)
> > +		return ERR_PTR(-ENODEV);
> > +
> > +	/*
> > +	 * Follow the first endpoint to get the DSI host node.
> > +	 */
> > +	dsi_host_node = of_graph_get_remote_port_parent(endpoint);
> > +	if (!dsi_host_node)
> > +		goto error;
> > +
> > +	/*
> > +	 * Get the DSI host from the DSI host node. If we get an error
> > +	 * or the return is null assume we're not ready to probe just
> > +	 * yet. Release the DSI host node since we're done with it.
> > +	 */
> > +	dsi_host = of_find_mipi_dsi_host_by_node(dsi_host_node);
> > +	of_node_put(dsi_host_node);
> > +	if (IS_ERR_OR_NULL(dsi_host)) {
> > +		of_node_put(endpoint);
> > +		return ERR_PTR(-EPROBE_DEFER);
> > +	}
> > +
> > +	/*
> > +	 * Set the node of the mipi_dsi_device_info to the correct node
> > +	 * and then release the endpoint node since we're done with it.
> > +	 * since this is optional, check if the info is NULL first.
> > +	 */
> > +	if (info) {
> > +		info->node = of_graph_get_remote_port(endpoint);
> 
> it looks to me that the info->node is actually the DSI device OF node,
> not its host port. Which begs the question, why should we even return it
> there, since there's a pretty big chance that dev->of.node ==
> info->node, and you obviously don't care about the channel and type fields.
> 
> I've had a look and node of the current users of
> mipi_dsi_device_register_full actually register a mipi_dsi_device_info
> with a node pointer set to !NULL, including the driver in this series.
> 
> So, why do we care about the device info at all?
> 

I honestly thought it might be useful, but I can try without it.

> > +		if (IS_ERR_OR_NULL(info->node))
> 
> of_graph_get_remote_port doesn't return an error pointer.
> 
> > --- a/include/drm/drm_of.h
> > +++ b/include/drm/drm_of.h
> > @@ -15,6 +15,8 @@ struct drm_encoder;
> >  struct drm_panel;
> >  struct drm_bridge;
> >  struct device_node;
> > +struct mipi_dsi_device_info;
> > +struct mipi_dsi_host;
> >  
> >  /**
> >   * enum drm_lvds_dual_link_pixels - Pixel order of an LVDS dual-link connection
> > @@ -56,6 +58,8 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
> >  				   int port_reg, int reg,
> >  				   const unsigned int min,
> >  				   const unsigned int max);
> > +struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
> > +					 struct mipi_dsi_device_info *info);
> >  #else
> >  static inline uint32_t drm_of_crtc_port_mask(struct drm_device *dev,
> >  					  struct device_node *port)
> > @@ -127,6 +131,12 @@ drm_of_get_data_lanes_count_ep(const struct device_node *port,
> >  {
> >  	return -EINVAL;
> >  }
> > +static inline struct
> > +mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
> > +					 struct mipi_dsi_device_info *info)
> > +{
> > +	return ERR_PTR(-EINVAL);
> > +}
> >  #endif
> 
> So it looks to me that if CONFIG_OF is defined, we'll define an external
> symbol declared for drm_of_get_dsi_bus, but that function will only be
> compiled if CONFIG_DRM_MIPI_DSI is enabled.
> 
> What happens if we have CONFIG_OF but not CONFIG_DRM_MIPI_DSI?
> 

Will do, thank you.

> If think you need to have here something like:
> 
> #ifdef IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_DRM_MIPI_DSI)
> struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
>        					 struct mipi_dsi_device_info *info);
> #else
> static inline struct
> mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
> 				  struct mipi_dsi_device_info *info)
> {
> 	return ERR_PTR(-EINVAL);
> }
> #endif
> 
> Maxime


