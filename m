Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1474435DE5
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 11:27:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231443AbhJUJ3r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 05:29:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231320AbhJUJ3q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 05:29:46 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9382C06161C
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 02:27:30 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id r18so6934wrg.6
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 02:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+JsLBqOtN8jWIN5hd80dCSXGNAJeE7h94mhSjt1Avcc=;
        b=0FdUXdHtn3y3Ie65uFdS9gMMxOT9jkdlA46yMbRJCXfct6FEeB5tjDHgeX0/kfFnTC
         NFivbJXuG1e7CzqP5tbOWBNop8USuAfBhpoZ0oBZy2lwya5x4opPLviFtLL/3pko6G0K
         9TwCqqucCr/dbebJIZR0vr6VzJObVu2aoYi+BWD0vPw5eemPiPniUl0JiKB+kkTqBdAB
         WtwLvaZtWnYFJZ0E089fbW6ZQO7CzuPPBj4Kf1zjTG1BG3Nc1aBg4932MGgxTacUDf03
         MC5dCw95K4mFbYFJdv7yS6cqJ04gyuB3pY8/YLv+Kh10Pdzndu7ok3BuilAp+6lV8aRf
         AJ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+JsLBqOtN8jWIN5hd80dCSXGNAJeE7h94mhSjt1Avcc=;
        b=D+tX9unCVs0U1mIKNTE7l8zsRqEcm1Il4hUfh/LA85cyyniyI6G7jlEczi1Ad2BBwt
         36r4q5XQM9ONIaM73yBijrRUz+FT60M24nsyLMQq4zMq4oInuy/uoOTDaxZ7N92RaJ7p
         tKwlUnIU2XX51R5B5LJ4PSiUwB0uF/6BGWDCMyjQia+MrIqFMkBSz9t6dDkqFULdxA3H
         rHayqUDaG7g4q3xmS85yJrKc8I4vrFv9SEkWfvWXRV0t6at4F2tp84eTF7HgjGU3Ul5q
         5wfdF/1KpAm0FkC9Sid2EgnAAfB9CVroEevB8nUFs23EtCFULYJZwy3h8Rp2oBruh3DV
         nrIA==
X-Gm-Message-State: AOAM532MmJXVlF/jshd7y6WMp3sGoRyfTiS+OUjA09rup+a1V5RFkoCl
        a7kDbcakt21DxYg46ec5sttnJQ==
X-Google-Smtp-Source: ABdhPJwY3cRMWF8ZI8tlo6vZ5aVn7nYQDQ/mn1Cb7sbVZVx5ZBYah3z3ySJ+EjCT9h8x6d4NufXXaQ==
X-Received: by 2002:adf:e584:: with SMTP id l4mr5652585wrm.173.1634808449364;
        Thu, 21 Oct 2021 02:27:29 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
        by smtp.gmail.com with ESMTPSA id d3sm4538468wrb.36.2021.10.21.02.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 02:27:29 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v5 5/7] drm/mediatek: dpi: Add dpintf support
Date:   Thu, 21 Oct 2021 11:27:05 +0200
Message-Id: <20211021092707.3562523-6-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211021092707.3562523-1-msp@baylibre.com>
References: <20211021092707.3562523-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dpintf is the displayport interface hardware unit. This unit is similar
to dpi and can reuse most of the code.

This patch adds support for mt8195-dpintf to this dpi driver. Main
differences are:
 - Some features/functional components are not available for dpintf
   which are now excluded from code execution once is_dpintf is set
 - dpintf can and needs to choose between different clockdividers based
   on the clockspeed. This is done by choosing a different clock parent.
 - There are two additional clocks that need to be managed. These are
   only set for dpintf and will be set to NULL if not supplied. The
   clk_* calls handle these as normal clocks then.
 - Some register contents differ slightly between the two components. To
   work around this I added register bits/masks with a DPINTF_ prefix
   and use them where different.

Based on a separate driver for dpintf created by
Jason-JH.Lin <jason-jh.lin@mediatek.com>.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes v4 -> v5:
    - Add several fields to characterize what is supported and what isn't in dpintf
      vs dpi.
    - Remove false bool field assignments where not necessary.
    - Removed specific clocks and reduced them to the standard engine and pixel
      clocks.
    - Remove extra set of bridge functions and define output formats for mt8195
    - Define register masks to avoid using is_dpintf variable.
    - Extract the limits into mtk_dpi_conf to avoid using is_dpintf.
    
    Changes RFC -> v1:
    - Remove setting parents and fully rely on the clock tree instead which already
      models a mux at the important place.
    - Integrated mtk_dpi dpintf changes into the mediatek drm driver.

 drivers/gpu/drm/mediatek/mtk_dpi.c          | 199 +++++++++++++++-----
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h     |  12 ++
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c |   4 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |   1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c      |   5 +-
 include/linux/soc/mediatek/mtk-mmsys.h      |   2 +
 6 files changed, 176 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 4554e2de1430..384074f69111 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -125,6 +125,17 @@ struct mtk_dpi_conf {
 	bool edge_sel_en;
 	const u32 *output_fmts;
 	u32 num_output_fmts;
+	bool is_ck_de_pol;
+	bool is_dpintf;
+	bool csc_support;
+	bool swap_input_support;
+	// Mask used for HWIDTH, HPORCH, VSYNC_WIDTH and VSYNC_PORCH (no shift)
+	u32 dimension_mask;
+	// Mask used for HSIZE and VSIZE (no shift)
+	u32 hvsize_mask;
+	u32 channel_swap_shift;
+	u32 yuv422_en_bit;
+	const struct mtk_dpi_yc_limit *limit;
 };
 
 static void mtk_dpi_mask(struct mtk_dpi *dpi, u32 offset, u32 val, u32 mask)
@@ -153,30 +164,30 @@ static void mtk_dpi_disable(struct mtk_dpi *dpi)
 static void mtk_dpi_config_hsync(struct mtk_dpi *dpi,
 				 struct mtk_dpi_sync_param *sync)
 {
-	mtk_dpi_mask(dpi, DPI_TGEN_HWIDTH,
-		     sync->sync_width << HPW, HPW_MASK);
-	mtk_dpi_mask(dpi, DPI_TGEN_HPORCH,
-		     sync->back_porch << HBP, HBP_MASK);
+	mtk_dpi_mask(dpi, DPI_TGEN_HWIDTH, sync->sync_width << HPW,
+		     dpi->conf->dimension_mask << HPW);
+	mtk_dpi_mask(dpi, DPI_TGEN_HPORCH, sync->back_porch << HBP,
+		     dpi->conf->dimension_mask << HBP);
 	mtk_dpi_mask(dpi, DPI_TGEN_HPORCH, sync->front_porch << HFP,
-		     HFP_MASK);
+		     dpi->conf->dimension_mask << HFP);
 }
 
 static void mtk_dpi_config_vsync(struct mtk_dpi *dpi,
 				 struct mtk_dpi_sync_param *sync,
 				 u32 width_addr, u32 porch_addr)
 {
-	mtk_dpi_mask(dpi, width_addr,
-		     sync->sync_width << VSYNC_WIDTH_SHIFT,
-		     VSYNC_WIDTH_MASK);
 	mtk_dpi_mask(dpi, width_addr,
 		     sync->shift_half_line << VSYNC_HALF_LINE_SHIFT,
 		     VSYNC_HALF_LINE_MASK);
+	mtk_dpi_mask(dpi, width_addr,
+		     sync->sync_width << VSYNC_WIDTH_SHIFT,
+		     dpi->conf->dimension_mask << VSYNC_WIDTH_SHIFT);
 	mtk_dpi_mask(dpi, porch_addr,
 		     sync->back_porch << VSYNC_BACK_PORCH_SHIFT,
-		     VSYNC_BACK_PORCH_MASK);
+		     dpi->conf->dimension_mask << VSYNC_BACK_PORCH_SHIFT);
 	mtk_dpi_mask(dpi, porch_addr,
 		     sync->front_porch << VSYNC_FRONT_PORCH_SHIFT,
-		     VSYNC_FRONT_PORCH_MASK);
+		     dpi->conf->dimension_mask << VSYNC_FRONT_PORCH_SHIFT);
 }
 
 static void mtk_dpi_config_vsync_lodd(struct mtk_dpi *dpi,
@@ -210,13 +221,20 @@ static void mtk_dpi_config_pol(struct mtk_dpi *dpi,
 			       struct mtk_dpi_polarities *dpi_pol)
 {
 	unsigned int pol;
+	unsigned int mask;
 
-	pol = (dpi_pol->ck_pol == MTK_DPI_POLARITY_RISING ? 0 : CK_POL) |
-	      (dpi_pol->de_pol == MTK_DPI_POLARITY_RISING ? 0 : DE_POL) |
-	      (dpi_pol->hsync_pol == MTK_DPI_POLARITY_RISING ? 0 : HSYNC_POL) |
+	mask = HSYNC_POL | VSYNC_POL;
+	pol = (dpi_pol->hsync_pol == MTK_DPI_POLARITY_RISING ? 0 : HSYNC_POL) |
 	      (dpi_pol->vsync_pol == MTK_DPI_POLARITY_RISING ? 0 : VSYNC_POL);
-	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, pol,
-		     CK_POL | DE_POL | HSYNC_POL | VSYNC_POL);
+	if (dpi->conf->is_ck_de_pol) {
+		mask |= CK_POL | DE_POL;
+		pol |= (dpi_pol->ck_pol == MTK_DPI_POLARITY_RISING ?
+			0 : CK_POL) |
+		       (dpi_pol->de_pol == MTK_DPI_POLARITY_RISING ?
+			0 : DE_POL);
+	}
+
+	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, pol, mask);
 }
 
 static void mtk_dpi_config_3d(struct mtk_dpi *dpi, bool en_3d)
@@ -231,13 +249,16 @@ static void mtk_dpi_config_interface(struct mtk_dpi *dpi, bool inter)
 
 static void mtk_dpi_config_fb_size(struct mtk_dpi *dpi, u32 width, u32 height)
 {
-	mtk_dpi_mask(dpi, DPI_SIZE, width << HSIZE, HSIZE_MASK);
-	mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE, VSIZE_MASK);
+	mtk_dpi_mask(dpi, DPI_SIZE, width << HSIZE,
+		     dpi->conf->hvsize_mask << HSIZE);
+	mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE,
+		     dpi->conf->hvsize_mask << VSIZE);
 }
 
-static void mtk_dpi_config_channel_limit(struct mtk_dpi *dpi,
-					 struct mtk_dpi_yc_limit *limit)
+static void mtk_dpi_config_channel_limit(struct mtk_dpi *dpi)
 {
+	const struct mtk_dpi_yc_limit *limit = dpi->conf->limit;
+
 	mtk_dpi_mask(dpi, DPI_Y_LIMIT, limit->y_bottom << Y_LIMINT_BOT,
 		     Y_LIMINT_BOT_MASK);
 	mtk_dpi_mask(dpi, DPI_Y_LIMIT, limit->y_top << Y_LIMINT_TOP,
@@ -332,12 +353,14 @@ static void mtk_dpi_config_channel_swap(struct mtk_dpi *dpi,
 		break;
 	}
 
-	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, val << CH_SWAP, CH_SWAP_MASK);
+	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, val << CH_SWAP,
+		     CH_SWAP_MASK << dpi->conf->channel_swap_shift);
 }
 
 static void mtk_dpi_config_yuv422_enable(struct mtk_dpi *dpi, bool enable)
 {
-	mtk_dpi_mask(dpi, DPI_CON, enable ? YUV422_EN : 0, YUV422_EN);
+	mtk_dpi_mask(dpi, DPI_CON, enable ? dpi->conf->yuv422_en_bit : 0,
+		     dpi->conf->yuv422_en_bit);
 }
 
 static void mtk_dpi_config_csc_enable(struct mtk_dpi *dpi, bool enable)
@@ -367,19 +390,25 @@ static void mtk_dpi_config_color_format(struct mtk_dpi *dpi,
 	if ((format == MTK_DPI_COLOR_FORMAT_YCBCR_444) ||
 	    (format == MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL)) {
 		mtk_dpi_config_yuv422_enable(dpi, false);
-		mtk_dpi_config_csc_enable(dpi, true);
-		mtk_dpi_config_swap_input(dpi, false);
+		if (dpi->conf->csc_support)
+			mtk_dpi_config_csc_enable(dpi, true);
+		if (dpi->conf->swap_input_support)
+			mtk_dpi_config_swap_input(dpi, false);
 		mtk_dpi_config_channel_swap(dpi, MTK_DPI_OUT_CHANNEL_SWAP_BGR);
 	} else if ((format == MTK_DPI_COLOR_FORMAT_YCBCR_422) ||
 		   (format == MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL)) {
 		mtk_dpi_config_yuv422_enable(dpi, true);
-		mtk_dpi_config_csc_enable(dpi, true);
-		mtk_dpi_config_swap_input(dpi, true);
+		if (dpi->conf->csc_support)
+			mtk_dpi_config_csc_enable(dpi, true);
+		if (dpi->conf->swap_input_support)
+			mtk_dpi_config_swap_input(dpi, true);
 		mtk_dpi_config_channel_swap(dpi, MTK_DPI_OUT_CHANNEL_SWAP_RGB);
 	} else {
 		mtk_dpi_config_yuv422_enable(dpi, false);
-		mtk_dpi_config_csc_enable(dpi, false);
-		mtk_dpi_config_swap_input(dpi, false);
+		if (dpi->conf->csc_support)
+			mtk_dpi_config_csc_enable(dpi, false);
+		if (dpi->conf->swap_input_support)
+			mtk_dpi_config_swap_input(dpi, false);
 		mtk_dpi_config_channel_swap(dpi, MTK_DPI_OUT_CHANNEL_SWAP_RGB);
 	}
 }
@@ -449,7 +478,6 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 				    struct drm_display_mode *mode)
 {
-	struct mtk_dpi_yc_limit limit;
 	struct mtk_dpi_polarities dpi_pol;
 	struct mtk_dpi_sync_param hsync;
 	struct mtk_dpi_sync_param vsync_lodd = { 0 };
@@ -472,32 +500,34 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	pll_rate = clk_get_rate(dpi->tvd_clk);
 
 	vm.pixelclock = pll_rate / factor;
-	if ((dpi->output_fmt == MEDIA_BUS_FMT_RGB888_2X12_LE) ||
-	    (dpi->output_fmt == MEDIA_BUS_FMT_RGB888_2X12_BE))
+	if (dpi->conf->is_dpintf)
+		clk_set_rate(dpi->pixel_clk, vm.pixelclock / 4);
+	else if ((dpi->output_fmt == MEDIA_BUS_FMT_RGB888_2X12_LE) ||
+		 (dpi->output_fmt == MEDIA_BUS_FMT_RGB888_2X12_BE))
 		clk_set_rate(dpi->pixel_clk, vm.pixelclock * 2);
 	else
 		clk_set_rate(dpi->pixel_clk, vm.pixelclock);
 
-
 	vm.pixelclock = clk_get_rate(dpi->pixel_clk);
 
 	dev_dbg(dpi->dev, "Got  PLL %lu Hz, pixel clock %lu Hz\n",
 		pll_rate, vm.pixelclock);
 
-	limit.c_bottom = 0x0010;
-	limit.c_top = 0x0FE0;
-	limit.y_bottom = 0x0010;
-	limit.y_top = 0x0FE0;
-
 	dpi_pol.ck_pol = MTK_DPI_POLARITY_FALLING;
 	dpi_pol.de_pol = MTK_DPI_POLARITY_RISING;
 	dpi_pol.hsync_pol = vm.flags & DISPLAY_FLAGS_HSYNC_HIGH ?
 			    MTK_DPI_POLARITY_FALLING : MTK_DPI_POLARITY_RISING;
 	dpi_pol.vsync_pol = vm.flags & DISPLAY_FLAGS_VSYNC_HIGH ?
 			    MTK_DPI_POLARITY_FALLING : MTK_DPI_POLARITY_RISING;
-	hsync.sync_width = vm.hsync_len;
-	hsync.back_porch = vm.hback_porch;
-	hsync.front_porch = vm.hfront_porch;
+	if (dpi->conf->is_dpintf) {
+		hsync.sync_width = vm.hsync_len / 4;
+		hsync.back_porch = vm.hback_porch / 4;
+		hsync.front_porch = vm.hfront_porch / 4;
+	} else {
+		hsync.sync_width = vm.hsync_len;
+		hsync.back_porch = vm.hback_porch;
+		hsync.front_porch = vm.hfront_porch;
+	}
 	hsync.shift_half_line = false;
 	vsync_lodd.sync_width = vm.vsync_len;
 	vsync_lodd.back_porch = vm.vback_porch;
@@ -536,14 +566,19 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	else
 		mtk_dpi_config_fb_size(dpi, vm.hactive, vm.vactive);
 
-	mtk_dpi_config_channel_limit(dpi, &limit);
+	mtk_dpi_config_channel_limit(dpi);
 	mtk_dpi_config_bit_num(dpi, dpi->bit_num);
 	mtk_dpi_config_channel_swap(dpi, dpi->channel_swap);
-	mtk_dpi_config_yc_map(dpi, dpi->yc_map);
 	mtk_dpi_config_color_format(dpi, dpi->color_format);
-	mtk_dpi_config_2n_h_fre(dpi);
-	mtk_dpi_dual_edge(dpi);
-	mtk_dpi_config_disable_edge(dpi);
+	if (dpi->conf->is_dpintf) {
+		mtk_dpi_mask(dpi, DPI_CON, DPINTF_INPUT_2P_EN,
+			     DPINTF_INPUT_2P_EN);
+	} else {
+		mtk_dpi_config_yc_map(dpi, dpi->yc_map);
+		mtk_dpi_config_2n_h_fre(dpi);
+		mtk_dpi_dual_edge(dpi);
+		mtk_dpi_config_disable_edge(dpi);
+	}
 	mtk_dpi_sw_reset(dpi, false);
 
 	return 0;
@@ -667,7 +702,7 @@ mtk_dpi_bridge_mode_valid(struct drm_bridge *bridge,
 {
 	struct mtk_dpi *dpi = bridge_to_dpi(bridge);
 
-	if (mode->clock > dpi->conf->max_clock_khz)
+	if (dpi->conf->max_clock_khz && mode->clock > dpi->conf->max_clock_khz)
 		return MODE_CLOCK_HIGH;
 
 	return MODE_OK;
@@ -781,6 +816,16 @@ static unsigned int mt8183_calculate_factor(int clock)
 		return 2;
 }
 
+static unsigned int mt8195_dpintf_calculate_factor(int clock)
+{
+	if (clock < 70000)
+		return 4;
+	else if (clock < 200000)
+		return 2;
+	else
+		return 1;
+}
+
 static const u32 mt8173_output_fmts[] = {
 	MEDIA_BUS_FMT_RGB888_1X24,
 };
@@ -790,12 +835,34 @@ static const u32 mt8183_output_fmts[] = {
 	MEDIA_BUS_FMT_RGB888_2X12_BE,
 };
 
+static const struct mtk_dpi_yc_limit mtk_dpi_limit = {
+	.c_bottom = 0x0010,
+	.c_top = 0x0FE0,
+	.y_bottom = 0x0010,
+	.y_top = 0x0FE0,
+};
+
+static const struct mtk_dpi_yc_limit mtk_dpintf_limit = {
+	.c_bottom = 0x0000,
+	.c_top = 0xFFF,
+	.y_bottom = 0x0000,
+	.y_top = 0xFFF,
+};
+
 static const struct mtk_dpi_conf mt8173_conf = {
 	.cal_factor = mt8173_calculate_factor,
 	.reg_h_fre_con = 0xe0,
 	.max_clock_khz = 300000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_ck_de_pol = true,
+	.csc_support = true,
+	.swap_input_support = true,
+	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
+	.channel_swap_shift = CH_SWAP,
+	.yuv422_en_bit = YUV422_EN,
+	.limit = &mtk_dpi_limit,
 };
 
 static const struct mtk_dpi_conf mt2701_conf = {
@@ -805,6 +872,14 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.max_clock_khz = 150000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_ck_de_pol = true,
+	.csc_support = true,
+	.swap_input_support = true,
+	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
+	.channel_swap_shift = CH_SWAP,
+	.yuv422_en_bit = YUV422_EN,
+	.limit = &mtk_dpi_limit,
 };
 
 static const struct mtk_dpi_conf mt8183_conf = {
@@ -813,6 +888,14 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.max_clock_khz = 100000,
 	.output_fmts = mt8183_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8183_output_fmts),
+	.is_ck_de_pol = true,
+	.csc_support = true,
+	.swap_input_support = true,
+	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
+	.channel_swap_shift = CH_SWAP,
+	.yuv422_en_bit = YUV422_EN,
+	.limit = &mtk_dpi_limit,
 };
 
 static const struct mtk_dpi_conf mt8192_conf = {
@@ -821,6 +904,26 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.max_clock_khz = 150000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_ck_de_pol = true,
+	.csc_support = true,
+	.swap_input_support = true,
+	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
+	.channel_swap_shift = CH_SWAP,
+	.yuv422_en_bit = YUV422_EN,
+	.limit = &mtk_dpi_limit,
+};
+
+static const struct mtk_dpi_conf mt8195_dpintf_conf = {
+	.cal_factor = mt8195_dpintf_calculate_factor,
+	.output_fmts = mt8173_output_fmts,
+	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_dpintf = true,
+	.dimension_mask = DPINTF_HPW_MASK,
+	.hvsize_mask = DPINTF_HSIZE_MASK,
+	.channel_swap_shift = DPINTF_CH_SWAP,
+	.yuv422_en_bit = DPINTF_YUV422_EN,
+	.limit = &mtk_dpintf_limit,
 };
 
 static int mtk_dpi_probe(struct platform_device *pdev)
@@ -870,7 +973,8 @@ static int mtk_dpi_probe(struct platform_device *pdev)
 	if (IS_ERR(dpi->engine_clk)) {
 		ret = PTR_ERR(dpi->engine_clk);
 		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Failed to get engine clock: %d\n", ret);
+			dev_err(dev, "Failed to get engine clock: %d\n",
+				ret);
 
 		return ret;
 	}
@@ -945,6 +1049,9 @@ static const struct of_device_id mtk_dpi_of_ids[] = {
 	{ .compatible = "mediatek,mt8192-dpi",
 	  .data = &mt8192_conf,
 	},
+	{ .compatible = "mediatek,mt8195-dpintf",
+	  .data = &mt8195_dpintf_conf,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, mtk_dpi_of_ids);
diff --git a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
index 3a02fabe1662..72efe6ee2584 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
+++ b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
@@ -40,10 +40,14 @@
 #define FAKE_DE_LEVEN			BIT(21)
 #define FAKE_DE_RODD			BIT(22)
 #define FAKE_DE_REVEN			BIT(23)
+#define DPINTF_YUV422_EN		BIT(24)
+#define DPINTF_INPUT_2P_EN		BIT(29)
 
 #define DPI_OUTPUT_SETTING	0x14
 #define CH_SWAP				0
+#define DPINTF_CH_SWAP			BIT(1)
 #define CH_SWAP_MASK			(0x7 << 0)
+#define DPINTF_CH_SWAP_MASK		(0x7 << 1)
 #define SWAP_RGB			0x00
 #define SWAP_GBR			0x01
 #define SWAP_BRG			0x02
@@ -80,8 +84,10 @@
 #define DPI_SIZE		0x18
 #define HSIZE				0
 #define HSIZE_MASK			(0x1FFF << 0)
+#define DPINTF_HSIZE_MASK		(0xFFFF << 0)
 #define VSIZE				16
 #define VSIZE_MASK			(0x1FFF << 16)
+#define DPINTF_VSIZE_MASK		(0xFFFF << 16)
 
 #define DPI_DDR_SETTING		0x1C
 #define DDR_EN				BIT(0)
@@ -93,24 +99,30 @@
 #define DPI_TGEN_HWIDTH		0x20
 #define HPW				0
 #define HPW_MASK			(0xFFF << 0)
+#define DPINTF_HPW_MASK			(0xFFFF << 0)
 
 #define DPI_TGEN_HPORCH		0x24
 #define HBP				0
 #define HBP_MASK			(0xFFF << 0)
+#define DPINTF_HBP_MASK			(0xFFFF << 0)
 #define HFP				16
 #define HFP_MASK			(0xFFF << 16)
+#define DPINTF_HFP_MASK			(0xFFFF << 16)
 
 #define DPI_TGEN_VWIDTH		0x28
 #define DPI_TGEN_VPORCH		0x2C
 
 #define VSYNC_WIDTH_SHIFT		0
 #define VSYNC_WIDTH_MASK		(0xFFF << 0)
+#define DPINTF_VSYNC_WIDTH_MASK		(0xFFFF << 0)
 #define VSYNC_HALF_LINE_SHIFT		16
 #define VSYNC_HALF_LINE_MASK		BIT(16)
 #define VSYNC_BACK_PORCH_SHIFT		0
 #define VSYNC_BACK_PORCH_MASK		(0xFFF << 0)
+#define DPINTF_VSYNC_BACK_PORCH_MASK	(0xFFFF << 0)
 #define VSYNC_FRONT_PORCH_SHIFT		16
 #define VSYNC_FRONT_PORCH_MASK		(0xFFF << 16)
+#define DPINTF_VSYNC_FRONT_PORCH_MASK	(0xFFFF << 16)
 
 #define DPI_BG_HCNTL		0x30
 #define BG_RIGHT			(0x1FFF << 0)
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
index 99cbf44463e4..da9e059312a5 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
@@ -317,6 +317,7 @@ static const char * const mtk_ddp_comp_stem[MTK_DDP_COMP_TYPE_MAX] = {
 	[MTK_DISP_UFOE] = "ufoe",
 	[MTK_DSI] = "dsi",
 	[MTK_DPI] = "dpi",
+	[MTK_DP_INTF] = "dp-intf",
 	[MTK_DISP_PWM] = "pwm",
 	[MTK_DISP_MUTEX] = "mutex",
 	[MTK_DISP_OD] = "od",
@@ -339,6 +340,8 @@ static const struct mtk_ddp_comp_match mtk_ddp_matches[DDP_COMPONENT_ID_MAX] = {
 	[DDP_COMPONENT_DITHER]	= { MTK_DISP_DITHER,	0, &ddp_dither },
 	[DDP_COMPONENT_DPI0]	= { MTK_DPI,		0, &ddp_dpi },
 	[DDP_COMPONENT_DPI1]	= { MTK_DPI,		1, &ddp_dpi },
+	[DDP_COMPONENT_DP_INTF0]= { MTK_DP_INTF,	0, &ddp_dpi },
+	[DDP_COMPONENT_DP_INTF1]= { MTK_DP_INTF,	1, &ddp_dpi },
 	[DDP_COMPONENT_DSI0]	= { MTK_DSI,		0, &ddp_dsi },
 	[DDP_COMPONENT_DSI1]	= { MTK_DSI,		1, &ddp_dsi },
 	[DDP_COMPONENT_DSI2]	= { MTK_DSI,		2, &ddp_dsi },
@@ -476,6 +479,7 @@ int mtk_ddp_comp_init(struct device_node *node, struct mtk_ddp_comp *comp,
 	    type == MTK_DISP_COLOR ||
 	    type == MTK_DISP_GAMMA ||
 	    type == MTK_DPI ||
+	    type == MTK_DP_INTF ||
 	    type == MTK_DSI ||
 	    type == MTK_DISP_OVL ||
 	    type == MTK_DISP_OVL_2L ||
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index bb914d976cf5..ee9d853cfa1c 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -30,6 +30,7 @@ enum mtk_ddp_comp_type {
 	MTK_DISP_UFOE,
 	MTK_DSI,
 	MTK_DPI,
+	MTK_DP_INTF,
 	MTK_DISP_PWM,
 	MTK_DISP_MUTEX,
 	MTK_DISP_OD,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index aec39724ebeb..1ff4e31c8634 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -459,6 +459,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
 	  .data = (void *)MTK_DPI },
 	{ .compatible = "mediatek,mt8183-dpi",
 	  .data = (void *)MTK_DPI },
+	{ .compatible = "mediatek,mt8195-dpintf",
+	  .data = (void *)MTK_DP_INTF },
 	{ .compatible = "mediatek,mt2701-disp-mutex",
 	  .data = (void *)MTK_DISP_MUTEX },
 	{ .compatible = "mediatek,mt2712-disp-mutex",
@@ -569,7 +571,8 @@ static int mtk_drm_probe(struct platform_device *pdev)
 		    comp_type == MTK_DISP_OVL_2L ||
 		    comp_type == MTK_DISP_RDMA ||
 		    comp_type == MTK_DSI ||
-		    comp_type == MTK_DPI) {
+		    comp_type == MTK_DPI ||
+		    comp_type == MTK_DP_INTF) {
 			dev_info(dev, "Adding component match for %pOF\n",
 				 node);
 			drm_of_component_match_add(dev, &match, compare_of,
diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
index 2228bf6133da..920e19968f38 100644
--- a/include/linux/soc/mediatek/mtk-mmsys.h
+++ b/include/linux/soc/mediatek/mtk-mmsys.h
@@ -19,6 +19,8 @@ enum mtk_ddp_comp_id {
 	DDP_COMPONENT_DITHER,
 	DDP_COMPONENT_DPI0,
 	DDP_COMPONENT_DPI1,
+	DDP_COMPONENT_DP_INTF0,
+	DDP_COMPONENT_DP_INTF1,
 	DDP_COMPONENT_DSI0,
 	DDP_COMPONENT_DSI1,
 	DDP_COMPONENT_DSI2,
-- 
2.33.0

