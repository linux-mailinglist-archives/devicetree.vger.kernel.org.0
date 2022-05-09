Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56A0D51F8CD
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 12:00:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233643AbiEIJx2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 05:53:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236668AbiEIJup (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 05:50:45 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 296B1170667
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 02:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1652089610; x=1683625610;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=VPe5bQ0AH2k58Lhmif6E/vGhwkVh6E3gGg8UK1RI4KI=;
  b=QNLz1m0mcptM2q+PFuJsRK4zi2Bou2oJ+AuiOjeEKmr78IDVBFTZ20OZ
   6Q8Y1ug2Ko0wNQVoyw1TxGSa+VL9UIuwM8lPFcMqbuqPoZrCQgDQT5cak
   HTSDcFKr0IJHgzkyppfleN7yNGvzAASDjzEO4MSyjbCj9FCfc36vQXIN0
   Cemr41UdksSsSMbHzG1lkpKEAZqGJh7ODYhWKlxaaADMvjUdwJmJgPvBX
   KKTqfEQl2YzNhCOOQ+N0inUK2GL0CUpyrMyRahC+Ot4cVTJ+nJmNhaLVU
   PKDcYQeobUaIedxlvOMXKlhM0dGg8jf7eX0wfDhPcwaFXgQRF+hrkSzEe
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,211,1647298800"; 
   d="scan'208";a="23749691"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 May 2022 11:44:43 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 09 May 2022 11:44:43 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 09 May 2022 11:44:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1652089483; x=1683625483;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=VPe5bQ0AH2k58Lhmif6E/vGhwkVh6E3gGg8UK1RI4KI=;
  b=HF9WAV9C1P6/xdmxozWgl/PPvOVckycJNxQj3yOj3fAIQXSFg69E/Acz
   PLQvWoOYqAv3fSEQDDrcW4YG90O0bICHl9okbbCpZEPg2i22DZlAZRk/u
   GTrS/7liHoJyvoEfXvx/VQBqvt2xhIgHbGBLXQ8e+k07pdVPtcdPbX2Tj
   +Trexs2Gu482B9ap302r2QF7RsP5hcm20YcfkAh0+qVQnzQxUhM/0GitJ
   nKixUTPAY38Kpy0uJhmzmtQqbBLh8rIkmaWIuTUwY6KR5pXefbn/XSKMZ
   ofxLcLpHCIUsPcve0+4xAI0EceF7eyCbIZQPACWs7ABNCvFrRmFT1RYAf
   w==;
X-IronPort-AV: E=Sophos;i="5.91,211,1647298800"; 
   d="scan'208";a="23749690"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 May 2022 11:44:43 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0504C280070;
        Mon,  9 May 2022 11:44:43 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>, patchwork-lst@pengutronix.de,
        Sandor Yu <Sandor.yu@nxp.com>, linux-phy@lists.infradead.org,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: (EXT) [PATCH v0.5 0/9] i.MX8MP HDMI support
Date:   Mon, 09 May 2022 11:44:42 +0200
Message-ID: <2112379.Mh6RI2rZIc@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220506181034.2001548-1-l.stach@pengutronix.de>
References: <20220506181034.2001548-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

Am Freitag, 6. Mai 2022, 20:10:25 CEST schrieb Lucas Stach:
> second round of the i.MX8MP HDMI work. Still not split up into proper
> parts for merging through the various trees this needs to go into, but
> should make it easy for people to test.
> 
> I've worked in the feedback I got from the last round, including fixing
> the system hang that could happen when the drivers were built as modules.
> 
> Series is based on linux-next/master, as there are some prerequisite
> patches in both the drm and imx tree already. The last patch from [1]
> and the patches from [2] need to be applied. Please note that this series
> expects the sync polarity from the LCDIF to be set according to the
> comments I made in [2]. Please test and provide feedback.

Thanks for the 2nd round of HDMI support patches. Sorry I wasn't able to reply 
to your questions, but the PLL locking seems to be gone on my system.

I still get the error
> imx-lcdif 32fc6000.display-controller: Unknown media bus format 0x200f

To answer the other question on the last patchset
> Do have a 4k HDMI display connected that wants to do YUV input? That's
> something I have to admit I didn't test yet and would be likely to
> cause this bus format selection.

This is a FullHD HDMI monitor, ASUS PB238Q. Apparently the color format is 
YCBCR422. From what I can see is that 
dw_hdmi_bridge_atomic_get_output_bus_fmts() adds MEDIA_BUS_FMT_UYVY8_1X16 
(0x200f) to the output formats. This is then passed to 
select_bus_fmt_recursive() on the bridge chain. For 0x200f 
dw_hdmi_bridge_atomic_get_input_bus_fmts() returns 3 input formats with 
MEDIA_BUS_FMT_UYVY8_1X16 being the 1st.
Each entry is then probed on pvi_bridge_get_input_bus_fmts(), which just 
forwards to dw_hdmi_bridge_atomic_get_input_bus_fmts().
Note: At this point it is only checked whether the input format can be output.
As 0x200f is supported by dw_hdmi this format will finally be selected, which 
is not supported by lcdif_kms, resulting in the error message above.

A quick&dirty hack to workaround is the following diff which just changes the 
order of the format to be tested:
---8<---
--- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
@@ -2816,9 +2816,9 @@ static u32 
*dw_hdmi_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
                input_fmts[i++] = MEDIA_BUS_FMT_RGB888_1X24;
                break;
        case MEDIA_BUS_FMT_UYVY8_1X16:
+               input_fmts[i++] = MEDIA_BUS_FMT_RGB888_1X24;
                input_fmts[i++] = MEDIA_BUS_FMT_UYVY8_1X16;
                input_fmts[i++] = MEDIA_BUS_FMT_YUV8_1X24;
-               input_fmts[i++] = MEDIA_BUS_FMT_RGB888_1X24;
                break;
 
        /* 10bit */
---8<---
With this MEDIA_BUS_FMT_RGB888_1X24 is probed 1st (and selected) which 
actually is supported by lcdif_kms.

For the records, I used this diff for lcdif driver to fix the polarity issue
---8<---
--- a/drivers/gpu/drm/mxsfb/lcdif_kms.c
+++ b/drivers/gpu/drm/mxsfb/lcdif_kms.c
@@ -89,12 +89,12 @@ static void lcdif_set_mode(struct lcdif_drm_private 
*lcdif, u32 bus_flags)
        struct drm_display_mode *m = &lcdif->crtc.state->adjusted_mode;
        u32 ctrl = 0;
 
-       if (m->flags & DRM_MODE_FLAG_PHSYNC)
+       if (m->flags & DRM_MODE_FLAG_NHSYNC)
                ctrl |= CTRL_INV_HS;
-       if (m->flags & DRM_MODE_FLAG_PVSYNC)
+       if (m->flags & DRM_MODE_FLAG_NVSYNC)
                ctrl |= CTRL_INV_VS;
        /* Make sure Data Enable is high active by default */
-       if (!(bus_flags & DRM_BUS_FLAG_DE_LOW))
+       if ((bus_flags & DRM_BUS_FLAG_DE_LOW))
                ctrl |= CTRL_INV_DE;
        if (bus_flags & DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE)
                ctrl |= CTRL_INV_PXCK;
---8<---

With both changes from above I can see the weston desktop.

Alexander

> [1]
> https://lore.kernel.org/all/20220406153402.1265474-1-l.stach@pengutronix.de
> / [2] https://lore.kernel.org/all/20220322142853.125880-1-marex@denx.de/
> 
> Lucas Stach (9):
>   dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
>   drm/imx: add bridge wrapper driver for i.MX8MP DWC HDMI
>   dt-bindings: display: imx: add binding for i.MX8MP HDMI PVI
>   drm/imx: add driver for HDMI TX Parallel Video Interface
>   dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
>   phy: freescale: add Samsung HDMI PHY
>   arm64: dts: imx8mp: add HDMI irqsteer
>   arm64: dts: imx8mp: add HDMI display pipeline
>   arm64: dts: imx8mp-evk: enable HDMI
> 
>  .../display/imx/fsl,imx8mp-hdmi-pvi.yaml      |   83 ++
>  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml |   73 ++
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     |   62 +
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts  |   19 +
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi     |   94 ++
>  drivers/gpu/drm/imx/Kconfig                   |    1 +
>  drivers/gpu/drm/imx/Makefile                  |    2 +
>  drivers/gpu/drm/imx/bridge/Kconfig            |   18 +
>  drivers/gpu/drm/imx/bridge/Makefile           |    4 +
>  drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c     |  201 +++
>  drivers/gpu/drm/imx/bridge/imx-hdmi.c         |  141 +++
>  drivers/phy/freescale/Kconfig                 |    6 +
>  drivers/phy/freescale/Makefile                |    1 +
>  drivers/phy/freescale/phy-fsl-samsung-hdmi.c  | 1078 +++++++++++++++++
>  14 files changed, 1783 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi-pvi.yaml
> create mode 100644
> Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml create
> mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> create mode 100644 drivers/gpu/drm/imx/bridge/Kconfig
>  create mode 100644 drivers/gpu/drm/imx/bridge/Makefile
>  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi-pvi.c
>  create mode 100644 drivers/gpu/drm/imx/bridge/imx-hdmi.c
>  create mode 100644 drivers/phy/freescale/phy-fsl-samsung-hdmi.c




