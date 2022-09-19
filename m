Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7E595BC99D
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 12:35:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229960AbiISKfq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 06:35:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230331AbiISKdq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 06:33:46 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C77632B26D
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:20:38 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id r7so5666772wrm.2
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=KUVrA+XIKI2lwDP/bLWAuDernJVoEtuiuVprXTBvRvo=;
        b=p+AajHK7dB4u2OfHHaY549iM26OOWA1P0Kj9mbyEzmqjBKj383Z+QXykV61h7a6eu9
         qiqbZ4jdJjZ0NFkY9JXroG5ZsA/FhxFn/pzyPOYs1OLCPnzMMtEvdXViMBgnlAQL+vq1
         rFnyOYpUgyqJJOHBSx48i2B0POGAT+o9h5lF2QhpcpR0iit48YUTLcOSi3+53MH3y4Ij
         0PDYRkxtWogGS97B/vRAjCgararC6Nub7bVYNTxTIXJcKxV5RM9epGTgHHbnvG9lCd3+
         4dxF0EUlye2+P7Vw0ub5lP1WMlgA/Ynq3VBJ0GWLhY2waAVr0FV4ftfkyc6SDEvU6ZTC
         felQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=KUVrA+XIKI2lwDP/bLWAuDernJVoEtuiuVprXTBvRvo=;
        b=4dyl+c+1d3OGcRJXrTfVdQcvUDVYCc+P2q6hieG5tbuzmpRGeidoZQNZyQSczshWUA
         Iywl9M59QSaVk8IGadmDSuuIqZyb5MAdBhi9vmsJurYpH5DCkSKzp9kIf/vJFduk7heP
         6cbL8U2qSNWbBCLUzS+H+0bc3SdkmmCZZ9z4L0oDZQJTQkNMNBOWQt1+vOduVaUjUegY
         7aHCFX7AMj9nOs0JNEG8eZvcf4soPU3RiIY8fUf5JeqxuJJqiSLIJU7HLuWY0j7pCVxa
         EEYRCvmYhA2LLc1N00EYnAWUHFaubeiSnjxf671boThqnB3QGF4gIkgHQada99+BE3Qy
         LUzg==
X-Gm-Message-State: ACrzQf2yZDFRvlDjI9mBQooA9vXsFchzpKYPwtBgFolWPmxUjXzufrdO
        8NuONNN65a7QsRU1mcpHVgA4PJDnsKLsZA==
X-Google-Smtp-Source: AMsMyM5OALPgQFqyO3mEL/6EfnrtFhXeW7W8yLicP02R0hOyJR0Yay9fB0/zADyD4Kt8iCvJAOLHrA==
X-Received: by 2002:adf:e9d2:0:b0:22a:e4e2:37f1 with SMTP id l18-20020adfe9d2000000b0022ae4e237f1mr7842419wrn.339.1663582823367;
        Mon, 19 Sep 2022 03:20:23 -0700 (PDT)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id m2-20020a7bce02000000b003b483000583sm12784245wmc.48.2022.09.19.03.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 03:20:22 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] Revert "Revert "drm/bridge: ti-sn65dsi86: Implement bridge connector operations for DP""
Date:   Mon, 19 Sep 2022 12:20:08 +0200
Message-Id: <20220919102009.150503-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220919102009.150503-1-robert.foss@linaro.org>
References: <20220919102009.150503-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit was accidentally reverted instead of another commit, and
therefore needs to be reinstated.

This reverts commit 8c9c40ec83445b188fb6b59e119bf5c2de81b02d.

Fixes: 8c9c40ec8344 ("Revert "drm/bridge: ti-sn65dsi86: Implement bridge connector operations for DP"")
Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 drivers/gpu/drm/bridge/ti-sn65dsi86.c | 28 +++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi86.c b/drivers/gpu/drm/bridge/ti-sn65dsi86.c
index 6e053e2af229..3c3561942eb6 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi86.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi86.c
@@ -29,6 +29,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_bridge_connector.h>
+#include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
@@ -68,6 +69,7 @@
 #define  BPP_18_RGB				BIT(0)
 #define SN_HPD_DISABLE_REG			0x5C
 #define  HPD_DISABLE				BIT(0)
+#define  HPD_DEBOUNCED_STATE			BIT(4)
 #define SN_GPIO_IO_REG				0x5E
 #define  SN_GPIO_INPUT_SHIFT			4
 #define  SN_GPIO_OUTPUT_SHIFT			0
@@ -1158,10 +1160,33 @@ static void ti_sn_bridge_atomic_post_disable(struct drm_bridge *bridge,
 	pm_runtime_put_sync(pdata->dev);
 }
 
+static enum drm_connector_status ti_sn_bridge_detect(struct drm_bridge *bridge)
+{
+	struct ti_sn65dsi86 *pdata = bridge_to_ti_sn65dsi86(bridge);
+	int val = 0;
+
+	pm_runtime_get_sync(pdata->dev);
+	regmap_read(pdata->regmap, SN_HPD_DISABLE_REG, &val);
+	pm_runtime_put_autosuspend(pdata->dev);
+
+	return val & HPD_DEBOUNCED_STATE ? connector_status_connected
+					 : connector_status_disconnected;
+}
+
+static struct edid *ti_sn_bridge_get_edid(struct drm_bridge *bridge,
+					  struct drm_connector *connector)
+{
+	struct ti_sn65dsi86 *pdata = bridge_to_ti_sn65dsi86(bridge);
+
+	return drm_get_edid(connector, &pdata->aux.ddc);
+}
+
 static const struct drm_bridge_funcs ti_sn_bridge_funcs = {
 	.attach = ti_sn_bridge_attach,
 	.detach = ti_sn_bridge_detach,
 	.mode_valid = ti_sn_bridge_mode_valid,
+	.get_edid = ti_sn_bridge_get_edid,
+	.detect = ti_sn_bridge_detect,
 	.atomic_pre_enable = ti_sn_bridge_atomic_pre_enable,
 	.atomic_enable = ti_sn_bridge_atomic_enable,
 	.atomic_disable = ti_sn_bridge_atomic_disable,
@@ -1257,6 +1282,9 @@ static int ti_sn_bridge_probe(struct auxiliary_device *adev,
 	pdata->bridge.type = pdata->next_bridge->type == DRM_MODE_CONNECTOR_DisplayPort
 			   ? DRM_MODE_CONNECTOR_DisplayPort : DRM_MODE_CONNECTOR_eDP;
 
+	if (pdata->bridge.type == DRM_MODE_CONNECTOR_DisplayPort)
+		pdata->bridge.ops = DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_DETECT;
+
 	drm_bridge_add(&pdata->bridge);
 
 	ret = ti_sn_attach_host(pdata);
-- 
2.34.1

