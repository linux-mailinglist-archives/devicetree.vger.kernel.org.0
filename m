Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03C2430A58C
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 11:39:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233287AbhBAKj1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 05:39:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233278AbhBAKjD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 05:39:03 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46347C061794
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 02:37:48 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id b17so9732012plz.6
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 02:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bmlVZxRAeFFue/kiN8+5f974mHTD70ZbhDvKpUk4Gzs=;
        b=f0pALAO8VmIYrpoeT3/Gzaw9jnKwBfItRcJVJK6bGkcbC0gNJCuZe/oCZGrynzA46w
         M52kvJWVt6V0JS2KrKMpVReScojO0m/mC2n8N5v2nmb8Ny3sKr8CfCAJrFIeD43Ko3sn
         /mJar9R/i/bJ/VnUpjS89f9Kkbsn4ST/FdFPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bmlVZxRAeFFue/kiN8+5f974mHTD70ZbhDvKpUk4Gzs=;
        b=Z5Hiyq99P2E/hm4vgJo8kMVQMbz/8w19QC58+ZK8nGe9ph5AEsP7+3sTecz7PC8WRq
         n/ZsIwslPVnwjf0JdqvgvIjeH8Cm14JFrtZTwJL7mhmop/WjCzfC4iUKfFIBl/uwjITu
         ibe85/ajermocS7v+DXpdk0P0jycOoH56HoTZLuDq9FG9ILV42ZOFs5yI9MHq0npIprZ
         N1fu46YFhJ9rOb+r9pOq04m/63M+187XVACAdrqgwTrHRW0U1Lvmm/CYna6XRr/l1XcO
         CjilJD53Ei+laZzEfTfVp8yPpoV36ZpyNzBI7yqpQ1/4IscJOyzmsWaYYMvusgGU8HGw
         aYkA==
X-Gm-Message-State: AOAM531BSNynXGKsv/MGNRMHyjwAJexEX1JbIWbgk+/SwLs6LaBT5SVJ
        Fn1IPNN6idWBqwZWyWhJ3nxeuQ==
X-Google-Smtp-Source: ABdhPJyevrQLko0WXEGY9fNaysu7Q70Imh1x0kXORk9gQmwkyhIgPr5rgBQQ3Et8G8Cx6xxCiLsfBg==
X-Received: by 2002:a17:90b:4004:: with SMTP id ie4mr3233169pjb.114.1612175867800;
        Mon, 01 Feb 2021 02:37:47 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:a0cd:1b84:6d56:68e1])
        by smtp.gmail.com with ESMTPSA id 76sm17610356pfz.174.2021.02.01.02.37.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Feb 2021 02:37:47 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v5 6/8] drm/mediatek: add matrix_bits private data for ccorr
Date:   Mon,  1 Feb 2021 18:37:25 +0800
Message-Id: <20210201103727.376721-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
In-Reply-To: <20210201103727.376721-1-hsinyi@chromium.org>
References: <20210201103727.376721-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

Add matrix_bits and coeffs_precision to ccorr private data:
- matrix bits of mt8183 is 10
- matrix bits of mt8192 is 11

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_disp_ccorr.c | 34 ++++++++++++++++-------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c b/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
index 6c86673a835c3..fb86f3a8b3a18 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ccorr.c
@@ -29,8 +29,10 @@
 #define DISP_CCORR_COEF_3			0x008C
 #define DISP_CCORR_COEF_4			0x0090
 
+#define CCORR_MATRIX_BITS			10
+
 struct mtk_disp_ccorr_data {
-	u32 reserved;
+	u32 matrix_bits;
 };
 
 /**
@@ -85,21 +87,22 @@ void mtk_ccorr_stop(struct device *dev)
 	writel_relaxed(0x0, ccorr->regs + DISP_CCORR_EN);
 }
 
-/* Converts a DRM S31.32 value to the HW S1.10 format. */
-static u16 mtk_ctm_s31_32_to_s1_10(u64 in)
+/* Converts a DRM S31.32 value to the HW S1.n format. */
+static u16 mtk_ctm_s31_32_to_s1_n(u64 in, u32 n)
 {
 	u16 r;
 
 	/* Sign bit. */
-	r = in & BIT_ULL(63) ? BIT(11) : 0;
+	r = in & BIT_ULL(63) ? BIT(n + 1) : 0;
 
 	if ((in & GENMASK_ULL(62, 33)) > 0) {
-		/* identity value 0x100000000 -> 0x400, */
+		/* identity value 0x100000000 -> 0x400(mt8183), */
+		/* identity value 0x100000000 -> 0x800(mt8192), */
 		/* if bigger this, set it to max 0x7ff. */
-		r |= GENMASK(10, 0);
+		r |= GENMASK(n, 0);
 	} else {
-		/* take the 11 most important bits. */
-		r |= (in >> 22) & GENMASK(10, 0);
+		/* take the n+1 most important bits. */
+		r |= (in >> (32 - n)) & GENMASK(n, 0);
 	}
 
 	return r;
@@ -114,6 +117,7 @@ void mtk_ccorr_ctm_set(struct device *dev, struct drm_crtc_state *state)
 	uint16_t coeffs[9] = { 0 };
 	int i;
 	struct cmdq_pkt *cmdq_pkt = NULL;
+	u32 matrix_bits;
 
 	if (!blob)
 		return;
@@ -121,8 +125,13 @@ void mtk_ccorr_ctm_set(struct device *dev, struct drm_crtc_state *state)
 	ctm = (struct drm_color_ctm *)blob->data;
 	input = ctm->matrix;
 
+	if (ccorr->data)
+		matrix_bits = ccorr->data->matrix_bits;
+	else
+		matrix_bits = CCORR_MATRIX_BITS;
+
 	for (i = 0; i < ARRAY_SIZE(coeffs); i++)
-		coeffs[i] = mtk_ctm_s31_32_to_s1_10(input[i]);
+		coeffs[i] = mtk_ctm_s31_32_to_s1_n(input[i], matrix_bits);
 
 	mtk_ddp_write(cmdq_pkt, coeffs[0] << 16 | coeffs[1],
 		      &ccorr->cmdq_reg, ccorr->regs, DISP_CCORR_COEF_0);
@@ -199,8 +208,13 @@ static int mtk_disp_ccorr_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct mtk_disp_ccorr_data mt8183_ccorr_driver_data = {
+	.matrix_bits = CCORR_MATRIX_BITS,
+};
+
 static const struct of_device_id mtk_disp_ccorr_driver_dt_match[] = {
-	{ .compatible = "mediatek,mt8183-disp-ccorr"},
+	{ .compatible = "mediatek,mt8183-disp-ccorr",
+	  .data = &mt8183_ccorr_driver_data},
 	{},
 };
 MODULE_DEVICE_TABLE(of, mtk_disp_ccorr_driver_dt_match);
-- 
2.30.0.365.g02bc693789-goog

