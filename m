Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC4555B5983
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 13:43:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230004AbiILLn2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 07:43:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiILLn1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 07:43:27 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F66F3BC7F
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 04:43:26 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id gh9so19506510ejc.8
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 04:43:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=5DjokmpV3k9SoLQWbK3SspAhFstW23qXKfJK8mBzCBg=;
        b=D/lDKI0l23XwhLAYCcrkyBtwrm4J5SeXL71y5Qo4KLIuXoE8M0QeZl0pMn30hoprwT
         6iRzntwSYzQ8XYA+Qjr91spOZi5pzmXAhJirk6KmQVFLaVVNPDEVlsYqbtDG8uA0SCpT
         4z6L4g5R+WHOXBfyXOCWO4nZRKtvg8C2CdKSSBHDA3O+c72gHLLN3DBksetQCq6mI4DJ
         HOHPhyn2G+f/EYezadRhyGzwWNt/dtv0pMLefUFldlVpEGFZ7T74d8bDcSWfkdFM02pf
         Ox62FbUaph83n/hw4aSHVlgBfgMGL8KkBOoZBRG3cMOJwJwfOCPV/YFvJeE+o4KfcULZ
         qE0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5DjokmpV3k9SoLQWbK3SspAhFstW23qXKfJK8mBzCBg=;
        b=381PyWCRH+XzJ6OnbDu6bwxQJthY0ztMxjQ35kQgoY/HDBp3AWD3qylo1XHFl3V4fZ
         qY9p6OmEeL/tsew+bQvCKRvU58jWImZicmEBTcFzQkXH7XVM0Xs5eUSTYVqXzN6mZb5H
         Z18QgK+LETl9tjYUQusEYXqww3mH37OG5DwRO28oSreu3M+poydr+4X6Sz5WuP3976yA
         Nnj+QboZfaC77g/A6erZgpd/T6bQqf+e+xHw5Dfxr6uFjWGv3qXe4PY4GXTwkQgeKaq4
         +zuR9NBvrRG9FuRb7Auig1dY6EVBmiWB6w9F9ZLLPongwZ863HjyYhR36rOAGXEPsqkG
         9utw==
X-Gm-Message-State: ACgBeo2KOmnyfRe/WGnkeAGAsq3KUSnxtizCdM8Y7X9fF5kPW0SWt1Bu
        b3m99sWNzPP8k143mbxmltWNwg==
X-Google-Smtp-Source: AA6agR43zpqq3RoiLc14fD5HjSyaVpW+7AGgtCjP5ojWmC0IEP8qOycwCgTwEWkjnjexKAF7hJ748Q==
X-Received: by 2002:a17:907:6e1c:b0:73d:7806:3c5e with SMTP id sd28-20020a1709076e1c00b0073d78063c5emr19049286ejc.36.1662983004956;
        Mon, 12 Sep 2022 04:43:24 -0700 (PDT)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id 9-20020a170906310900b00779cde476e4sm4314368ejx.62.2022.09.12.04.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 04:43:23 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dianders@chromium.org,
        lkundrak@v3.sk, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>, tzimmermann@suse.de,
        javierm@redhat.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org
Subject: [PATCH v1 2/2] Revert "drm/bridge: ti-sn65dsi86: Implement bridge connector operations for DP"
Date:   Mon, 12 Sep 2022 13:38:59 +0200
Message-Id: <20220912113856.817188-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220912113856.817188-1-robert.foss@linaro.org>
References: <20220912113856.817188-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As reported by Laurent in response to this commit[1], this functionality should
not be implemented using the devicetree, because of this let's revert this series
for now.

This reverts commit c312b0df3b13e4c533743bb2c37fd1bc237368e5.

[1] https://lore.kernel.org/all/20220902153906.31000-2-macroalpha82@gmail.com/

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 drivers/gpu/drm/bridge/ti-sn65dsi86.c | 28 ---------------------------
 1 file changed, 28 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi86.c b/drivers/gpu/drm/bridge/ti-sn65dsi86.c
index 3c3561942eb6..6e053e2af229 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi86.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi86.c
@@ -29,7 +29,6 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
 #include <drm/drm_bridge_connector.h>
-#include <drm/drm_edid.h>
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
@@ -69,7 +68,6 @@
 #define  BPP_18_RGB				BIT(0)
 #define SN_HPD_DISABLE_REG			0x5C
 #define  HPD_DISABLE				BIT(0)
-#define  HPD_DEBOUNCED_STATE			BIT(4)
 #define SN_GPIO_IO_REG				0x5E
 #define  SN_GPIO_INPUT_SHIFT			4
 #define  SN_GPIO_OUTPUT_SHIFT			0
@@ -1160,33 +1158,10 @@ static void ti_sn_bridge_atomic_post_disable(struct drm_bridge *bridge,
 	pm_runtime_put_sync(pdata->dev);
 }
 
-static enum drm_connector_status ti_sn_bridge_detect(struct drm_bridge *bridge)
-{
-	struct ti_sn65dsi86 *pdata = bridge_to_ti_sn65dsi86(bridge);
-	int val = 0;
-
-	pm_runtime_get_sync(pdata->dev);
-	regmap_read(pdata->regmap, SN_HPD_DISABLE_REG, &val);
-	pm_runtime_put_autosuspend(pdata->dev);
-
-	return val & HPD_DEBOUNCED_STATE ? connector_status_connected
-					 : connector_status_disconnected;
-}
-
-static struct edid *ti_sn_bridge_get_edid(struct drm_bridge *bridge,
-					  struct drm_connector *connector)
-{
-	struct ti_sn65dsi86 *pdata = bridge_to_ti_sn65dsi86(bridge);
-
-	return drm_get_edid(connector, &pdata->aux.ddc);
-}
-
 static const struct drm_bridge_funcs ti_sn_bridge_funcs = {
 	.attach = ti_sn_bridge_attach,
 	.detach = ti_sn_bridge_detach,
 	.mode_valid = ti_sn_bridge_mode_valid,
-	.get_edid = ti_sn_bridge_get_edid,
-	.detect = ti_sn_bridge_detect,
 	.atomic_pre_enable = ti_sn_bridge_atomic_pre_enable,
 	.atomic_enable = ti_sn_bridge_atomic_enable,
 	.atomic_disable = ti_sn_bridge_atomic_disable,
@@ -1282,9 +1257,6 @@ static int ti_sn_bridge_probe(struct auxiliary_device *adev,
 	pdata->bridge.type = pdata->next_bridge->type == DRM_MODE_CONNECTOR_DisplayPort
 			   ? DRM_MODE_CONNECTOR_DisplayPort : DRM_MODE_CONNECTOR_eDP;
 
-	if (pdata->bridge.type == DRM_MODE_CONNECTOR_DisplayPort)
-		pdata->bridge.ops = DRM_BRIDGE_OP_EDID | DRM_BRIDGE_OP_DETECT;
-
 	drm_bridge_add(&pdata->bridge);
 
 	ret = ti_sn_attach_host(pdata);
-- 
2.34.1

