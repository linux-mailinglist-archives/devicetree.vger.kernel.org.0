Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B8F3619908
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 15:14:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231854AbiKDOOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 10:14:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231324AbiKDOO3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 10:14:29 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8B6327174
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 07:14:19 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id bg9-20020a05600c3c8900b003bf249616b0so3253454wmb.3
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 07:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6zHUtmTd6RGvQvohicUDo1+C3cWxOXttYxoZ7C1AyNM=;
        b=sZpvZ48ZfL7ZHUcpdBGfIoKduwmTvL5EhX1uFBCa2jEXcfr8mcna8xs2xPZJpfBmCq
         mKRUawmP8LzwcDAHLdITjH8mTdt2rR/RHm1wZbUujLSRnEaBYxYpn8k2tVgkyGqcQHXZ
         V3C4NsMONBKoa75jZtvRtV2C9MrRVBEZzGCdJ8s56Uwi3/Lddwv3enOncogOyPK1oHB6
         rsOArGEyYJi+GvlMMLK73qYd9vDx/0+mDExpKhenqU3UezG2QL2qCgSZgsJLuUh4zEs4
         zmr8dooJSIFg7feKCmSZNEit3n9En4LRHKD0xhcwlvot+bE9rHyuuqSiZ9Zm+n/EpSJE
         qCyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6zHUtmTd6RGvQvohicUDo1+C3cWxOXttYxoZ7C1AyNM=;
        b=rTz3VAh/bjmOWNbfJ+2P/beG5E5t/qF1CPgeSewQLrkjDskoH3/0qFyvOKW3zQbmyx
         AAarlE4D99P4L8uL5Rr/4Gfng6h3L8V03Dphlar3v+3GdEOmZyhg0+YsfcQzw8ZgS0ER
         oXgyeJBbIB2pr3iRy9s6Vx+b72YmGkseh9Xrb10oOrpPUR2CqxbAWkdeV8TQJ+KaXskz
         WJPr9DhWUbyG8mKrgccBur45axCMSvyaTk7Q/peLfBH6p/S5Q6hqXRJNteYQyT+WoWTK
         x0NewCqBpMYesCNMxX1SKctyY6lj3BMiLGko4Kg8vLMOdq03xty1eACWIpbGVS6Gv/W/
         CbKQ==
X-Gm-Message-State: ACrzQf3MlGUwbPsZ0CbltjiZfohvh3XJW6d4BAVgYB1p6ZIpTeL/jHVS
        ca1XKTA7zwhkHOYmYGI7pWelBg==
X-Google-Smtp-Source: AMsMyM5si9XfQzNepR9daWPGFME2Q9Ye8oPRfuLmG8pAZT/Jkr0RR5GB/3hFkZ2l/aquOD99c3P13A==
X-Received: by 2002:a05:600c:4252:b0:3cf:678a:d189 with SMTP id r18-20020a05600c425200b003cf678ad189mr23153902wmm.51.1667571258161;
        Fri, 04 Nov 2022 07:14:18 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6440-7fff-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6440:7fff:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id bj9-20020a0560001e0900b002365cd93d05sm3594512wrb.102.2022.11.04.07.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 07:14:17 -0700 (PDT)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Fri, 04 Nov 2022 15:09:52 +0100
Subject: [PATCH v3 06/12] drm/mediatek: hdmi: add frame_colorimetry flag
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220919-v3-6-a803f2660127@baylibre.com>
References: <20220919-v3-0-a803f2660127@baylibre.com>
In-Reply-To: <20220919-v3-0-a803f2660127@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Jitao shi <jitao.shi@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Vinod Koul <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Guillaume Ranquet <granquet@baylibre.com>,
        mac.shen@mediatek.com, linux-phy@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a flag to indicate support for frame colorimetry.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 11 +++++++++++
 drivers/gpu/drm/mediatek/mtk_hdmi_common.h |  1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
index 3635ca66817b..933c51b5f6d7 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
@@ -120,6 +120,17 @@ int mtk_hdmi_setup_avi_infoframe(struct mtk_hdmi *hdmi, u8 *buffer, size_t bufsz
 		return err;
 	}
 
+	if (hdmi->conf->has_frame_colorimetry) {
+		frame.colorimetry = hdmi->colorimtery;
+		if (frame.colorimetry == HDMI_COLORIMETRY_EXTENDED)
+			frame.extended_colorimetry = hdmi->extended_colorimetry;
+
+		/* quantiation range:limited or full */
+		if (frame.colorspace == HDMI_COLORSPACE_RGB)
+			frame.quantization_range = hdmi->quantization_range;
+		else
+			frame.ycc_quantization_range = hdmi->ycc_quantization_range;
+	}
 	err = hdmi_avi_infoframe_pack(&frame, buffer, bufsz);
 
 	if (err < 0) {
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.h b/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
index 921bde150e11..2e8e5feec377 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
@@ -32,6 +32,7 @@ struct mtk_hdmi_conf {
 	bool tz_disabled;
 	bool cea_modes_only;
 	bool has_cec;
+	bool has_frame_colorimetry;
 	unsigned long max_mode_clock;
 	const struct drm_bridge_funcs *bridge_funcs;
 	void (*mtk_hdmi_output_init)(struct mtk_hdmi *hdmi);

-- 
b4 0.11.0-dev
