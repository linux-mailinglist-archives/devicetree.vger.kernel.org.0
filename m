Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBAA4667DD2
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 19:20:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240634AbjALSU2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 13:20:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230496AbjALSTL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 13:19:11 -0500
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CD6CB4B5
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 09:54:05 -0800 (PST)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-15085b8a2f7so19710774fac.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 09:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tbQtC6VR/FF2nTlwiIZ/sGihRVBeIvN5iTfkeWtgBLM=;
        b=qPTD6c3rS1AIGdJd/IqwreRStSbgDKPzxdzC184rjfwMWhuSAyM+9w6ZlOnS18n5Ac
         Ur5lWfjTQpEn6+CjmmWae26MLrYu/Mm1MC5GHtyb2l8Lwji+JZzBG6JXDbL3BFisoZuO
         xUanSW2hmFOJ1mYsDeQ5wElTceOuKCkqGF03Ny/zR9PtsZhuLPXrODXy82BwbFL8gs1+
         qK/MPEa8VfwCRl9hMLlz4dE/0wo/LraqHGrjFFJg7Rqo3Nw4oyalzSpyVm7wiMI0Za5U
         mSsfdgEgjLMhZBN8OwcXOwpSJAY648bSybKLME8kZ/zA+94/bwebwd6LzXu8PDvVcyDv
         K3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tbQtC6VR/FF2nTlwiIZ/sGihRVBeIvN5iTfkeWtgBLM=;
        b=0iCAzE1NzE/dRJjaXn/W0j+F7Zt+D3DCYVH/tsTJoVLB6tju8xEEgvco+xY+1U5MkT
         ggk7BjcOoL8piz+dfOtU/R0eJQDW3BsfP1i22lKDolnb4oTCqEKp2jVsO/kvL7Pf8tlO
         5wi8Ov8K+V6iEwxGrN+AKlgx2IgFrsb6YyZyOKnnCitqtQZpi6d/YlbWoKW/X1ENtJcm
         GX+wJAcY0tfhUjykn34ffW8F5SrqCA7V01EVVuR6DmI5K5qnmLGawA4DlKGADPGBFnqy
         f27uSo+NrGvM975BtqRq5puRUgaBIydgV/S77+DZM9GMDAUjKnd1WD39+xMxi4gYeLr7
         /IFw==
X-Gm-Message-State: AFqh2kpE0KrvwXj2NKHbY13ihToBHwUXddkDEfLGEYRZ/O2XBfpwsf1C
        IemuuyRsKSkmEeFXiPdtfZc=
X-Google-Smtp-Source: AMrXdXuatgeeWB+YNvfU20Yql1rz5X827vbxrDwe2VY8Li5QrKB8iTXVl6QQLGb8ofIMG+3MqP+4vg==
X-Received: by 2002:a05:6870:9f0d:b0:15e:ae80:4733 with SMTP id xl13-20020a0568709f0d00b0015eae804733mr2519457oab.6.1673546044553;
        Thu, 12 Jan 2023 09:54:04 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v17-20020a05687105d100b0014866eb34cesm9317049oan.48.2023.01.12.09.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 09:54:04 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linus.walleij@linaro.org, maccraft123mc@gmail.com,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V10 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Date:   Thu, 12 Jan 2023 11:53:55 -0600
Message-Id: <20230112175358.421975-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112175358.421975-1-macroalpha82@gmail.com>
References: <20230112175358.421975-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add helper function to find DSI host for devices where DSI panel is not
a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
official Raspberry Pi touchscreen display).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 drivers/gpu/drm/drm_of.c | 70 ++++++++++++++++++++++++++++++++++++++++
 include/drm/drm_of.h     | 10 ++++++
 2 files changed, 80 insertions(+)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 7bbcb999bb75..6c2c97a716fe 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -10,6 +10,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_encoder.h>
+#include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 
@@ -493,3 +494,72 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
 	return ret;
 }
 EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
+
+#if IS_ENABLED(CONFIG_DRM_MIPI_DSI)
+
+/**
+ * drm_of_get_dsi_bus - find the DSI bus for a given device
+ * @dev: parent device of display (SPI, I2C)
+ * @info: DSI device info to be updated with DSI node. This is optional
+ * and if not needed can be NULL.
+ *
+ * Gets parent DSI bus for a DSI device controlled through a bus other
+ * than MIPI-DCS (SPI, I2C, etc.) using the Device Tree.
+ *
+ * Returns pointer to mipi_dsi_host if successful, -EINVAL if the
+ * request is unsupported, -EPROBE_DEFER if the DSI host is found but
+ * not available, or -ENODEV otherwise.
+ */
+struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
+					 struct mipi_dsi_device_info *info)
+{
+	struct mipi_dsi_host *dsi_host;
+	struct device_node *endpoint, *dsi_host_node;
+
+	/*
+	 * Get first endpoint child from device.
+	 */
+	endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
+	if (!endpoint)
+		return ERR_PTR(-ENODEV);
+
+	/*
+	 * Follow the first endpoint to get the DSI host node.
+	 */
+	dsi_host_node = of_graph_get_remote_port_parent(endpoint);
+	if (!dsi_host_node)
+		goto error;
+
+	/*
+	 * Get the DSI host from the DSI host node. If we get an error
+	 * or the return is null assume we're not ready to probe just
+	 * yet. Release the DSI host node since we're done with it.
+	 */
+	dsi_host = of_find_mipi_dsi_host_by_node(dsi_host_node);
+	of_node_put(dsi_host_node);
+	if (IS_ERR_OR_NULL(dsi_host)) {
+		of_node_put(endpoint);
+		return ERR_PTR(-EPROBE_DEFER);
+	}
+
+	/*
+	 * Set the node of the mipi_dsi_device_info to the correct node
+	 * and then release the endpoint node since we're done with it.
+	 * since this is optional, check if the info is NULL first.
+	 */
+	if (info) {
+		info->node = of_graph_get_remote_port(endpoint);
+		if (IS_ERR_OR_NULL(info->node))
+			goto error;
+	}
+
+	of_node_put(endpoint);
+	return dsi_host;
+
+error:
+	of_node_put(endpoint);
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL_GPL(drm_of_get_dsi_bus);
+
+#endif /* CONFIG_DRM_MIPI_DSI */
diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index 10ab58c40746..705ea2caa494 100644
--- a/include/drm/drm_of.h
+++ b/include/drm/drm_of.h
@@ -15,6 +15,8 @@ struct drm_encoder;
 struct drm_panel;
 struct drm_bridge;
 struct device_node;
+struct mipi_dsi_device_info;
+struct mipi_dsi_host;
 
 /**
  * enum drm_lvds_dual_link_pixels - Pixel order of an LVDS dual-link connection
@@ -56,6 +58,8 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
 				   int port_reg, int reg,
 				   const unsigned int min,
 				   const unsigned int max);
+struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
+					 struct mipi_dsi_device_info *info);
 #else
 static inline uint32_t drm_of_crtc_port_mask(struct drm_device *dev,
 					  struct device_node *port)
@@ -127,6 +131,12 @@ drm_of_get_data_lanes_count_ep(const struct device_node *port,
 {
 	return -EINVAL;
 }
+static inline struct
+mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
+					 struct mipi_dsi_device_info *info)
+{
+	return ERR_PTR(-EINVAL);
+}
 #endif
 
 /*
-- 
2.34.1

