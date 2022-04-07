Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B5974F7A61
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 10:51:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243438AbiDGIxX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 04:53:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243539AbiDGIxI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 04:53:08 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7882021A1
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 01:51:09 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1ncNqz-0004iY-2X; Thu, 07 Apr 2022 10:50:57 +0200
Message-ID: <245623b25bfc6de8ef76bcbbbce5a2d8fbad7b74.camel@pengutronix.de>
Subject: Re: [PATCH v0 01/10] drm/bridge: dw-hdmi: add low-active PHY reset
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Neil Armstrong <narmstrong@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
Date:   Thu, 07 Apr 2022 10:50:55 +0200
In-Reply-To: <b3abd199-0acb-a2d3-bd53-aa26182aa0c9@baylibre.com>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
         <20220406160123.1272911-2-l.stach@pengutronix.de>
         <b3abd199-0acb-a2d3-bd53-aa26182aa0c9@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
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

Hi Neil,

Am Donnerstag, dem 07.04.2022 um 10:30 +0200 schrieb Neil Armstrong:
> Hi Lucas,
> 
> On 06/04/2022 18:01, Lucas Stach wrote:
> > Allow vendor PHY implementations to reset PHYs with different polarity
> > than the current Gen2 reset.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 7 +++++++
> >   include/drm/bridge/dw_hdmi.h              | 1 +
> >   2 files changed, 8 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > index 4befc104d220..7600f26aab27 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> > @@ -1365,6 +1365,13 @@ void dw_hdmi_phy_reset(struct dw_hdmi *hdmi)
> >   }
> >   EXPORT_SYMBOL_GPL(dw_hdmi_phy_reset);
> >   
> > +void dw_hdmi_phy_reset_active_low(struct dw_hdmi *hdmi)
> > +{
> > +	hdmi_writeb(hdmi, 0, HDMI_MC_PHYRSTZ);
> > +	hdmi_writeb(hdmi, HDMI_MC_PHYRSTZ_PHYRSTZ, HDMI_MC_PHYRSTZ);
> > +}
> > +EXPORT_SYMBOL_GPL(dw_hdmi_phy_reset_active_low);
> > +
> >   void dw_hdmi_phy_i2c_set_addr(struct dw_hdmi *hdmi, u8 address)
> >   {
> >   	hdmi_phy_test_clear(hdmi, 1);
> > diff --git a/include/drm/bridge/dw_hdmi.h b/include/drm/bridge/dw_hdmi.h
> > index 2a1f85f9a8a3..9b3d52a1e62a 100644
> > --- a/include/drm/bridge/dw_hdmi.h
> > +++ b/include/drm/bridge/dw_hdmi.h
> > @@ -190,6 +190,7 @@ void dw_hdmi_phy_i2c_write(struct dw_hdmi *hdmi, unsigned short data,
> >   void dw_hdmi_phy_gen2_pddq(struct dw_hdmi *hdmi, u8 enable);
> >   void dw_hdmi_phy_gen2_txpwron(struct dw_hdmi *hdmi, u8 enable);
> >   void dw_hdmi_phy_reset(struct dw_hdmi *hdmi);
> > +void dw_hdmi_phy_reset_active_low(struct dw_hdmi *hdmi);
> >   
> >   enum drm_connector_status dw_hdmi_phy_read_hpd(struct dw_hdmi *hdmi,
> >   					       void *data);
> 
> This has already been submitted at https://lore.kernel.org/r/800262112191a720639ba321be18f0926d4e1d2a.1649230434.git.Sandor.yu@nxp.com

Thanks for the pointer, seems I missed this series. I'll switch to this
function instead.

Regards,
Lucas


