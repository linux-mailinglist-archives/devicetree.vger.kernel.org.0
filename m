Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 496DE4F7D19
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 12:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244402AbiDGKjS convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 7 Apr 2022 06:39:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245129AbiDGKjC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 06:39:02 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 711DB3B2AC
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 03:37:03 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncPVR-0006uR-6o; Thu, 07 Apr 2022 12:36:49 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncPVQ-001apD-H0; Thu, 07 Apr 2022 12:36:47 +0200
Received: from pza by lupine with local (Exim 4.94.2)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncPVO-0005T6-6E; Thu, 07 Apr 2022 12:36:46 +0200
Message-ID: <4b2f47a4870fbec9da5d7a6ad1b8a9bb9ff68e83.camel@pengutronix.de>
Subject: Re: [PATCH v0 05/10] drm/imx: add driver for HDMI TX Parallel Video
 Interface
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
Date:   Thu, 07 Apr 2022 12:36:46 +0200
In-Reply-To: <20220406160123.1272911-6-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
         <20220406160123.1272911-6-l.stach@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mi, 2022-04-06 at 18:01 +0200, Lucas Stach wrote:
> This IP block is found in the HDMI subsystem of the i.MX8MP SoC. It has a
> full timing generator and can switch between different video sources. On
> the i.MX8MP however the only supported source is the LCDIF. The block
> just needs to be powered up and told about the polarity of the video
> sync signals to act in bypass mode.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
[...]
> +static void imx_hdmi_pvi_bridge_enable(struct drm_bridge *bridge,
> +				       struct drm_bridge_state *bridge_state)
> +{
> +	struct drm_atomic_state *state = bridge_state->base.state;
> +	struct imx_hdmi_pvi *pvi = to_imx_hdmi_pvi(bridge);
> +	struct drm_connector_state *conn_state;
> +	const struct drm_display_mode *mode;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_connector *connector;
> +	u32 bus_flags, val;
> +
> +	connector = drm_atomic_get_new_connector_for_encoder(state, bridge->encoder);
> +	if (WARN_ON(!connector))
> +		return;
> +
> +	conn_state = drm_atomic_get_new_connector_state(state, connector);
> +	if (WARN_ON(!conn_state))
> +		return;
> +
> +	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
> +	if (WARN_ON(!crtc_state))
> +		return;

Can those happen at all, and if so, should they be caught at
atomic_check time?

> +
> +	if (WARN_ON(pm_runtime_resume_and_get(pvi->dev)))
> +		return;

Should be pm_runtime_get_sync(), since the error is ignored.

Otherwise the pm_runtime_put() in imx_hdmi_pvi_bridge_disable() will
double-decrement the usage counter in case this failed.

regards
Philipp
