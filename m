Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C946666085
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 17:31:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239328AbjAKQbi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 11:31:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239258AbjAKQbC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 11:31:02 -0500
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00FB01DDE0
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 08:30:22 -0800 (PST)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-142b72a728fso16043964fac.9
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 08:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VwwjqZEQqL89o5Qipfs68ekF4SEARAAb31h873uGu3I=;
        b=hxuqHlBEX31XNEWNJ+lm4PxdAIlQCZFI7ze5ekEKhFo2PWDiLXr74ofVv85JSx131G
         x5pZUFKj/hW0Jya0xSeCxx/KAPhdMeO+uB/eiDrmkbVLXyueDWI9bNRMRnftLC+QGz64
         7AagSqFyIYhSINUL0g1XDTDHZVna4bfcPEI3ryF+3k2dwWIk+q3kLURd8IRlq0ZmjlyU
         3U/HYiRwLe2I6mP3FCGs5xxxOpZ1YhKlxoNUdjWcakNRad6kue/dGEmTv0IAmiCD7veT
         PJXraOkFFuRfFmnPoP3USo1RLWovdYucTk0E5J+pq0CRzekoRSV35S2TSChkqf5+YAQ0
         6/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VwwjqZEQqL89o5Qipfs68ekF4SEARAAb31h873uGu3I=;
        b=4/fnmVB9iPMuRVlDVkPZRvCJLIlissxOH1Jrub3PfqZ2gf6GDVvYbI8/mjey0dGkAN
         J0pZNn3ohBFE4ndeYQkSXHA1JY39iULnVZ84/5qjpWCET9ZVQC3au2nKrXvYRKjoN9yD
         2P/cbeT+1s62zgvyqxexQZ5QQoMBKlsK5deyMkHEwnmRdnyqPEQmZQJJmyMfAisznYOJ
         RI9hSR/rbdshEFcw9EZ6e7kUXutwIg4f/1ITuzm39hxWcSjPbe4q7j/vB/i9sN1Ly8mC
         3x/HHzxr+LA3vfEcF992t+PIU+dPVjXiso3mca3gbR4QsJk6l7ml8sIX18UFRZGLRVCj
         +j/w==
X-Gm-Message-State: AFqh2kpxP7GpnX9nIErny4GaEnYPHoIIMQ080GHslamWgHES/2nQhDTU
        DBugJmM9LnrrfgG7cj6n1io=
X-Google-Smtp-Source: AMrXdXvqNvSS3oc3c4CMTnNdq7QvBogO9tkNBknq7QRo9gqFPE2Dni9QdPYtZ5sETlMRWwtu1ZqpJw==
X-Received: by 2002:a05:6871:152:b0:155:37ac:d907 with SMTP id z18-20020a056871015200b0015537acd907mr1876320oab.18.1673454622331;
        Wed, 11 Jan 2023 08:30:22 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z13-20020a056870738d00b0013ae39d0575sm7629003oam.15.2023.01.11.08.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 08:30:22 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v9 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Date:   Wed, 11 Jan 2023 10:30:09 -0600
Message-Id: <20230111163012.310945-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111163012.310945-1-macroalpha82@gmail.com>
References: <20230111163012.310945-1-macroalpha82@gmail.com>
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
index 7bbcb999bb75..4ebb5bc4b595 100644
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
+/**
+ * drm_of_get_dsi_bus - find the DSI bus for a given device
+ * @dev: parent device of display (SPI, I2C)
+ * @info: DSI device info to be updated with correct DSI node
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
+	 * Exit immediately if we attempt to call this function when
+	 * DRM_MIPI_DSI is not enabled, in the event CONFIG_OF is
+	 * enabled.
+	 */
+	if (!IS_ENABLED(CONFIG_DRM_MIPI_DSI))
+		return ERR_PTR(-EINVAL);
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
+	 */
+	info->node = of_graph_get_remote_port(endpoint);
+	if (IS_ERR_OR_NULL(info->node))
+		goto error;
+
+	of_node_put(endpoint);
+	return dsi_host;
+
+error:
+	of_node_put(endpoint);
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL_GPL(drm_of_get_dsi_bus);
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

