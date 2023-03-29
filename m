Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BC976CDA65
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 15:18:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230201AbjC2NSH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 09:18:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbjC2NSC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 09:18:02 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2334CC9
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:17:59 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id le6so14852572plb.12
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 06:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680095879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0wNTb2LrxaKFlmHgalrnrr3A4EG008KaVwysZvYEb6Q=;
        b=cqidfaD69QRlixQGDaMVrdpnuW4E/ueB+ta+aoaLu75jvjPTb6X8dXWmHB4iaw1Puf
         sA0xW5rf44dDAy0wFnUg6Z94f+i5ihDnYHtGWrSMB79e2IKvSUSnAty8f9XTn8263x+E
         rjUs3uFYzgM1UOkgvbYUPtQBmF6OKzdBEe78o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680095879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0wNTb2LrxaKFlmHgalrnrr3A4EG008KaVwysZvYEb6Q=;
        b=vVbFuMZEyFzPeKuKrrbdKkeDWl/KWh/Le4wUun4s9Qx0vE+kbLHQvrnsimWWRVwrTl
         Eq+/o44iEjqKxKU1ojSdfhCkB71XQz1P0a+Q3c5LtrZq+otQkIOwOOP+s2Jb6Bk2cvQz
         KX+Y5FHMXIb+0zd58WIGFKnTipVZOyYr+8IexCSQaSO3YT2Alg+mzuDTRESF9pQ8B/x3
         fX1ojeRK00wbL4TfGFKm42H7DGA7eXLLjhMQmShQ7jNCU5rHAcLe9AJjugrRLAUP9/cb
         Oi38N+gLULjU3LHROvPdycsi3s7Jlgls03SlbE8nilviyufcHJxcMvdsVOqObQYof5AM
         07FA==
X-Gm-Message-State: AAQBX9dumPYxfWFlypskT6CSBsBRSoKx7/KulH3yRI8DhDUihZbfEoag
        ATbTNw2nX+6lICabXUZ4ne2K+Q==
X-Google-Smtp-Source: AKy350Z0nRebQpUhm57vPD2Fu3xEl648nRwouk5XbwzGKAmjhBeobsc7CNU/OD8nrZMuYEE8Qi5lQA==
X-Received: by 2002:a17:90b:3511:b0:23f:a4da:1208 with SMTP id ls17-20020a17090b351100b0023fa4da1208mr21913619pjb.39.1680095879378;
        Wed, 29 Mar 2023 06:17:59 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a047:206d:4722:c4fa:e845])
        by smtp.gmail.com with ESMTPSA id s16-20020a17090b071000b0023f5c867f82sm1400192pjz.41.2023.03.29.06.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 06:17:58 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maxime Ripard <mripard@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v7 02/12] drm: bridge: panel: Implement drmm_of_dsi_get_bridge helper
Date:   Wed, 29 Mar 2023 18:46:08 +0530
Message-Id: <20230329131615.1328366-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230329131615.1328366-1-jagan@amarulasolutions.com>
References: <20230329131615.1328366-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Implement a DRM-managed action helper that returns the next DSI bridge
in the chain.

Unlike general bridge return helper drmm_of_get_bridge, this helper
uses the dsi specific panel_or_bridge helper to find the next DSI
device in the pipeline.

Helper lookup a given downstream DSI device that has been added via
child or OF-graph port or ports node.

Upstream DSI looks for downstream devices using drm pointer, port and
endpoint number. Downstream devices added via child node don't affect
the port and endpoint number arguments.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v7:
- new patch

 drivers/gpu/drm/bridge/panel.c | 34 ++++++++++++++++++++++++++++++++++
 include/drm/drm_bridge.h       | 10 ++++++++++
 2 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/bridge/panel.c b/drivers/gpu/drm/bridge/panel.c
index d4b112911a99..d047c7d9551d 100644
--- a/drivers/gpu/drm/bridge/panel.c
+++ b/drivers/gpu/drm/bridge/panel.c
@@ -501,4 +501,38 @@ struct drm_bridge *drmm_of_get_bridge(struct drm_device *drm,
 }
 EXPORT_SYMBOL(drmm_of_get_bridge);
 
+/**
+ * drmm_of_dsi_get_bridge - Return next DSI bridge in the chain
+ * @drm: device to tie the bridge lifetime to
+ * @np: device tree node containing DSI output ports
+ * @port: port in the device tree node
+ * @endpoint: endpoint in the device tree node
+ *
+ * Given a DT node's port and endpoint number, finds the connected node
+ * and returns the associated DSI bridge if any, or creates and returns
+ * a DSI panel bridge instance if a panel is connected.
+ *
+ * Returns a drmm managed pointer to the DSI bridge if successful, or
+ * an error pointer otherwise.
+ */
+struct drm_bridge *drmm_of_dsi_get_bridge(struct drm_device *drm,
+					  struct device_node *np,
+					  u32 port, u32 endpoint)
+{
+	struct drm_bridge *bridge;
+	struct drm_panel *panel;
+	int ret;
+
+	ret = drm_of_dsi_find_panel_or_bridge(np, port, endpoint,
+					      &panel, &bridge);
+	if (ret)
+		return ERR_PTR(ret);
+
+	if (panel)
+		bridge = drmm_panel_bridge_add(drm, panel);
+
+	return bridge;
+}
+EXPORT_SYMBOL(drmm_of_dsi_get_bridge);
+
 #endif
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index 42f86327b40a..a1a31704b917 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -931,6 +931,9 @@ struct drm_bridge *devm_drm_of_get_bridge(struct device *dev, struct device_node
 					  u32 port, u32 endpoint);
 struct drm_bridge *drmm_of_get_bridge(struct drm_device *drm, struct device_node *node,
 					  u32 port, u32 endpoint);
+struct drm_bridge *drmm_of_dsi_get_bridge(struct drm_device *drm,
+					  struct device_node *node,
+					  u32 port, u32 endpoint);
 #else
 static inline struct drm_bridge *devm_drm_of_get_bridge(struct device *dev,
 							struct device_node *node,
@@ -947,6 +950,13 @@ static inline struct drm_bridge *drmm_of_get_bridge(struct drm_device *drm,
 {
 	return ERR_PTR(-ENODEV);
 }
+
+static inline struct drm_bridge *drmm_of_dsi_get_bridge(struct drm_device *drm,
+							struct device_node *node,
+							u32 port, u32 endpoint)
+{
+	return ERR_PTR(-ENODEV);
+}
 #endif
 
 #endif
-- 
2.25.1

