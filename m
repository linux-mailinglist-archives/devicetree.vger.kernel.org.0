Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5A2E5FF112
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 17:20:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230266AbiJNPUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 11:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230150AbiJNPUQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 11:20:16 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B22C75384
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 08:20:12 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id v130-20020a1cac88000000b003bcde03bd44so5570537wme.5
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 08:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DSYD3hSXr5dSGBwwFhgmPY+Jg1epD5ze6gJ/T99kUGE=;
        b=ekqWtXslf7At5Ea6OpJQLQVV7s78wmP9onNaVuxJ3jjwJzCyCK1WVwQ5H4sxdVKRDF
         caFQ8kO3SYuJvxYea71BwUF6uYy8GYsWwLo/6mmQOWj2L+bsRz6k9mhvbPecYjOEA9Xg
         Pq9zQD6J76O9oX1Pw2ataew4ZUnj8esopyd/vDEVfN0jR1eEoSo9fKGXw3kECjRy/Faj
         k2oauWgT+j/8aus8zy2SCIULtrOHyTyhPjcrciYPHvwcEwKRfqlgETLUxd4WL1b9Ekba
         J0lfgNFDLRqr7AEYqmLYEKfMn2uQBjD8b9kRQZY2umPihAuN1/jyhfN3HlR7sbyBNePz
         KDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DSYD3hSXr5dSGBwwFhgmPY+Jg1epD5ze6gJ/T99kUGE=;
        b=kMuiOCF4Gep7wURRO6jcZCV2SFjvz5ANOyWQ97/iZmQ+uz2U5CFiFRqR8i4b9dEEQC
         FPNQRZKn1DGLBqqrVVR/WV87ZyS8fo3N9c3PAJB8BNK6ev1uoP2iroCsBYCeg7RtNj31
         iAo/ae943t+9/Wt0uG5cM8AcqHuJj1//LtME9lpjkUNJFY7qTnYxT58J2UjqgbqB1CN5
         ArtmcnMmOe8GAngNX5Oew+Nj7v5IU4meeh1F2X5EZ8cSCI4cMJ/LGEaMFIO5G99cWZHX
         etruQDBY87v7xTu81xjAyQg8CTgrqMVTEqLRIppQVGxlKJcIVYpjVeCJSaAqx/JcXQbZ
         iRbw==
X-Gm-Message-State: ACrzQf1OrqYovNOM/h+/a2sDBuxyAPAZwPo5Kk9y5LxqAXpUU5aumVkR
        AzDvV7XTVeS9S2DNenPph87Vjw==
X-Google-Smtp-Source: AMsMyM5XuHi7AW9wwUe6mQ82tH2bVQm0eF90ywEnv+rb0RPIPcUHbvH6OzD+beMuhBr2PVbLwyrZWw==
X-Received: by 2002:a05:600c:4e01:b0:3c6:eba6:75a3 with SMTP id b1-20020a05600c4e0100b003c6eba675a3mr1574023wmq.4.1665760811060;
        Fri, 14 Oct 2022 08:20:11 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6241-7429-3074-96af-9642-0004.rev.sfr.net. [2a02:8440:6241:7429:3074:96af:9642:4])
        by smtp.gmail.com with ESMTPSA id z11-20020a05600c0a0b00b003c6bd91caa5sm2818223wmp.17.2022.10.14.08.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 08:20:10 -0700 (PDT)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Fri, 14 Oct 2022 17:15:58 +0200
Subject: [PATCH v2 05/12] drm/mediatek: hdmi: make the cec dev optional
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220919-v2-5-8419dcf4f09d@baylibre.com>
References: <20220919-v2-0-8419dcf4f09d@baylibre.com>
In-Reply-To: <20220919-v2-0-8419dcf4f09d@baylibre.com>
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        David Airlie <airlied@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jitao shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     Guillaume Ranquet <granquet@baylibre.com>, stuart.lee@mediatek.com,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        mac.shen@mediatek.com, linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org
X-Mailer: b4 0.11.0-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make cec device optional in order to support newer versions of the
hdmi IP which doesn't require it

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c        |  8 +++--
 drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 54 ++++++++++++++++++++----------
 drivers/gpu/drm/mediatek/mtk_hdmi_common.h |  1 +
 3 files changed, 42 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 73bda2849196..85c6ebca36dd 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -927,10 +927,11 @@ void mtk_hdmi_clk_disable_audio_mt8183(struct mtk_hdmi *hdmi)
 static enum drm_connector_status
 mtk_hdmi_update_plugged_status(struct mtk_hdmi *hdmi)
 {
-	bool connected;
+	bool connected = true;
 
 	mutex_lock(&hdmi->update_plugged_status_lock);
-	connected = mtk_cec_hpd_high(hdmi->cec_dev);
+	if (hdmi->cec_dev)
+		connected = mtk_cec_hpd_high(hdmi->cec_dev);
 	if (hdmi->plugged_cb && hdmi->codec_dev)
 		hdmi->plugged_cb(hdmi->codec_dev, connected);
 	mutex_unlock(&hdmi->update_plugged_status_lock);
@@ -1025,7 +1026,8 @@ static int mtk_hdmi_bridge_attach(struct drm_bridge *bridge,
 			return ret;
 	}
 
-	mtk_cec_set_hpd_event(hdmi->cec_dev, mtk_hdmi_hpd_event, hdmi->dev);
+	if (hdmi->cec_dev)
+		mtk_cec_set_hpd_event(hdmi->cec_dev, mtk_hdmi_hpd_event, hdmi->dev);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
index 3f08d37b1af0..3635ca66817b 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
@@ -137,28 +137,18 @@ void mtk_hdmi_send_infoframe(struct mtk_hdmi *hdmi, u8 *buffer_spd, size_t bufsz
 	mtk_hdmi_setup_spd_infoframe(hdmi, buffer_spd, bufsz_spd, "mediatek", "On-chip HDMI");
 }
 
-int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi, struct platform_device *pdev,
-			    const char *const *clk_names, size_t num_clocks)
+static int mtk_hdmi_get_cec_dev(struct mtk_hdmi *hdmi, struct device *dev, struct device_node *np)
 {
-	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
-	struct device_node *cec_np, *remote, *i2c_np;
+	int ret;
+	struct device_node *cec_np;
 	struct platform_device *cec_pdev;
 	struct regmap *regmap;
-	struct resource *mem;
-	int ret;
-
-	ret = mtk_hdmi_get_all_clk(hdmi, np, clk_names, num_clocks);
-	if (ret) {
-		dev_err(dev, "Failed to get all clks\n");
-		return ret;
-	}
 
 	/* The CEC module handles HDMI hotplug detection */
 	cec_np = of_get_compatible_child(np->parent, "mediatek,mt8173-cec");
 	if (!cec_np) {
 		dev_err(dev, "Failed to find CEC node\n");
-		return -EINVAL;
+		return -ENOTSUPP;
 	}
 
 	cec_pdev = of_find_device_by_node(cec_np);
@@ -168,7 +158,6 @@ int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi, struct platform_device *pdev,
 		return -EPROBE_DEFER;
 	}
 	of_node_put(cec_np);
-	hdmi->cec_dev = &cec_pdev->dev;
 	/*
 	 * The mediatek,syscon-hdmi property contains a phandle link to the
 	 * MMSYS_CONFIG device and the register offset of the HDMI_SYS_CFG
@@ -177,12 +166,41 @@ int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi, struct platform_device *pdev,
 	regmap = syscon_regmap_lookup_by_phandle(np, "mediatek,syscon-hdmi");
 	ret = of_property_read_u32_index(np, "mediatek,syscon-hdmi", 1, &hdmi->sys_offset);
 	if (IS_ERR(regmap))
-		ret = PTR_ERR(regmap);
+		return PTR_ERR(regmap);
 	if (ret) {
-		dev_err(dev, "Failed to get system configuration registers: %d\n", ret);
-		goto put_device;
+		dev_err(dev,
+				"Failed to get system configuration registers: %d\n", ret);
+		return ret;
 	}
+
 	hdmi->sys_regmap = regmap;
+	hdmi->cec_dev = &cec_pdev->dev;
+
+	return 0;
+}
+
+int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi, struct platform_device *pdev,
+			    const char *const *clk_names, size_t num_clocks)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct device_node *remote, *i2c_np;
+	struct resource *mem;
+	int ret;
+
+	ret = mtk_hdmi_get_all_clk(hdmi, np, clk_names, num_clocks);
+	if (ret) {
+		dev_err(dev, "Failed to get all clks\n");
+		return ret;
+	}
+
+	ret = mtk_hdmi_get_cec_dev(hdmi, dev, np);
+	if (ret) {
+		if (ret == -ENOTSUPP)
+			dev_info(dev, "No CEC node found, continuing without");
+		else
+			goto put_device;
+	}
 
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	if (!mem) {
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.h b/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
index 7452bea91f9e..921bde150e11 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.h
@@ -31,6 +31,7 @@
 struct mtk_hdmi_conf {
 	bool tz_disabled;
 	bool cea_modes_only;
+	bool has_cec;
 	unsigned long max_mode_clock;
 	const struct drm_bridge_funcs *bridge_funcs;
 	void (*mtk_hdmi_output_init)(struct mtk_hdmi *hdmi);

-- 
b4 0.11.0-dev
