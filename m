Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 414A9664CEE
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 21:03:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231593AbjAJUDL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 15:03:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231965AbjAJUDH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 15:03:07 -0500
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D691FAFB
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 12:03:05 -0800 (PST)
Received: by mail-oo1-xc32.google.com with SMTP id x15-20020a4ab90f000000b004e64a0a967fso3509101ooo.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 12:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pQpuQS1QwpsWJNNB2Pcp6i5pr8OVqWQOHJvu8GJa6A8=;
        b=iifeyFjbhbErxtEkst7eMNp/u+6oYV+B/X9T6WGm8+wruGGJb3mbPNc2SOvudx+sTH
         s7IgCpsRy3W4jtwp3wpGYYOfhFN+Yhg2tXqx7xNRPR+tj0NjiRXV1DxrGQW6kWhVtMm3
         bACAxiY1AhrWaSTEvMk8VX33sJkw582Tiq1ltKXbpdaL6ObeHcJ+3N3T4mT6WNLo4kOH
         Oi7gucF0xb0URmCF9xNAoVB/YCGwnaf8GufHWTqCp6t6isNtP3DuPloyQxHiKLArD1EF
         ZY2jz3cqRo/yWABoHzAPhPDTcOHhjQpKMUNMmbjtkgr6I/fAOYQ2WzDY8UMgVsdwejrQ
         6m4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pQpuQS1QwpsWJNNB2Pcp6i5pr8OVqWQOHJvu8GJa6A8=;
        b=Htm5RTWPz6O3eu3QhvR4mcBlz3B+lGRxVknWcD3rUM3rqNqeLimbPw+fQH6/uCaA/T
         UqXdhy26cda8YGCppMzRxPljasU1I+v/WjxnDqkxOWA/WfdDd3sszUijZWMwARvnMVOz
         cb6tLV9VR+W+Bnil9RyP9NR3RoAyEMSCc8t6sGjC2LWkT45RwcljLI+7TU3pODB9a7cP
         09m8ofrq0+OXGssQ1LyMF/+s7MPxMJCUOn2oQwWsajjMBMK2O2PGMs/7gv3X/CvaRpqW
         qwJCRuCm7p41pFKDBRlxAoMNJRDmEHZyG807HAWD8jVI8Vj7xx7TXoPjEgyH2c3bKLYC
         CEBw==
X-Gm-Message-State: AFqh2ko2au0n6cjPPmZA/+ub6YMygS6OKtS9P6KXJg3lmxFlK79+sRMv
        1dyaHAN3SmTbUE6vHBxUEKQ=
X-Google-Smtp-Source: AMrXdXu2c8nnvFwTe/hsnYmODEQB0lTEYVO0SgxROQwIL9ZtJ7J/gDc848lvgqe9fN6nfcf+CiQOnQ==
X-Received: by 2002:a4a:4f95:0:b0:4d5:695d:7ab5 with SMTP id c143-20020a4a4f95000000b004d5695d7ab5mr24764368oob.7.1673380984665;
        Tue, 10 Jan 2023 12:03:04 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r4-20020a4aad04000000b004a394578e14sm6089779oon.32.2023.01.10.12.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 12:03:04 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, linus.walleij@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v8 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Date:   Tue, 10 Jan 2023 14:02:52 -0600
Message-Id: <20230110200255.1218738-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230110200255.1218738-1-macroalpha82@gmail.com>
References: <20230110200255.1218738-1-macroalpha82@gmail.com>
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
 include/drm/drm_of.h     |  9 ++++++
 2 files changed, 79 insertions(+)

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
index 10ab58c40746..f5511e0d1822 100644
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
@@ -127,6 +131,11 @@ drm_of_get_data_lanes_count_ep(const struct device_node *port,
 {
 	return -EINVAL;
 }
+struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
+					 struct mipi_dsi_device_info *info)
+{
+	return ERR_PTR(-EINVAL);
+}
 #endif
 
 /*
-- 
2.34.1

