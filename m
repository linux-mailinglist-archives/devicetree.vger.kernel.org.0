Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AB966C4830
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 11:49:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230339AbjCVKtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 06:49:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230431AbjCVKsP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 06:48:15 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB2D861885
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 03:47:39 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id w4so10801960plg.9
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 03:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679482058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oBJWqFf529bD8jjCDuA2KK02mIaG17tQPXtMSxF+r5U=;
        b=Bs4oVb7r/GfydoLVRsXK6ciaCdAlCJGoVC0GBKWS1bTpRNwfiaabHTmJK2AHkPEPQX
         RzQtwPyf7FxbsQDNZxOum0m7WE6xa2OuCyyognSZd0uLr+HNNiSVsc7B2e8CU0z0XajQ
         9nmP92+emXT/ECYkmr+V9ptY/Dvk7M/yMynz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679482058;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oBJWqFf529bD8jjCDuA2KK02mIaG17tQPXtMSxF+r5U=;
        b=o602d2TXvzfBlbwsdwXnZtvIEwru3KnGtDfSXAXZ7SaHHpzPhBwWklRJ/s5UAOvsMI
         PeztAzIqSYCMpPXWrm8TToNcjzTPUwBK1iQmPopm//0100ma2fe0fYmZoLegmaIbbOhg
         EvXoDgqTLsSyFKHZne+tAWMRzu6Rz5jv6/FYBDSrN+5d8vgRilLe4HCgP71qxRkU2a+Y
         o/BlRMaGWsz21JKGjDoS+H/f+eyC6H7KthSzrq1tq7hAeHlISceCCwEku9H15jpqxZwH
         oDjVRx1ylqsKNqjDkldn5Htc9Gd+GDC7IArcrSeSCNut4ddIExqbQQFdJguzTsZ7Qwr9
         fwBg==
X-Gm-Message-State: AO0yUKUx04HT5XisW+q4YzyKCn5tUfMdbcbSQP9CJpj9k953Elvm8jee
        gONBjNgXY+GwfrVOGeCMs1nCaw==
X-Google-Smtp-Source: AK7set8Ei3DqOnokIBECX7S8i8g1KL2mbbHUechKS4aqr0RMz86pm38BSbfR/++b+hwW4t2FFU+JAg==
X-Received: by 2002:a17:90b:4b44:b0:23d:39d5:f81e with SMTP id mi4-20020a17090b4b4400b0023d39d5f81emr3468217pjb.11.1679482058020;
        Wed, 22 Mar 2023 03:47:38 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:343d:79bf:55f9:1da5])
        by smtp.gmail.com with ESMTPSA id hg4-20020a17090b300400b002340d317f3esm9508742pjb.52.2023.03.22.03.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 03:47:37 -0700 (PDT)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Prashant Malani <pmalani@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>
Cc:     Xin Ji <xji@analogixsemi.com>, linux-kernel@vger.kernel.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-acpi@vger.kernel.org,
        Javier Martinez Canillas <javierm@redhat.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Pin-yen Lin <treapking@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Lyude Paul <lyude@redhat.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>, Allen Chen <allen.chen@ite.com.tw>,
        dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>,
        Stephen Boyd <swboyd@chromium.org>,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org
Subject: [PATCH v14 09/10] drm/bridge: it6505: Fix Kconfig indentation
Date:   Wed, 22 Mar 2023 18:46:38 +0800
Message-Id: <20230322104639.221402-10-treapking@chromium.org>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
In-Reply-To: <20230322104639.221402-1-treapking@chromium.org>
References: <20230322104639.221402-1-treapking@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace the spaces with tab characters in the Kconfig file.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

---

(no changes since v10)

Changes in v10:
- Collected Reviewed-by tag

Changes in v7:
- New in v7

 drivers/gpu/drm/bridge/Kconfig | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 12e8f30c65f7..28dc7711bf5f 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -74,19 +74,19 @@ config DRM_FSL_LDB
 	  Support for i.MX8MP DPI-to-LVDS on-SoC encoder.
 
 config DRM_ITE_IT6505
-        tristate "ITE IT6505 DisplayPort bridge"
-        depends on OF
+	tristate "ITE IT6505 DisplayPort bridge"
+	depends on OF
 	select DRM_DISPLAY_DP_HELPER
 	select DRM_DISPLAY_HDCP_HELPER
 	select DRM_DISPLAY_HELPER
-        select DRM_DP_AUX_BUS
-        select DRM_KMS_HELPER
-        select DRM_DP_HELPER
-        select EXTCON
-        select CRYPTO
-        select CRYPTO_HASH
-        help
-          ITE IT6505 DisplayPort bridge chip driver.
+	select DRM_DP_AUX_BUS
+	select DRM_KMS_HELPER
+	select DRM_DP_HELPER
+	select EXTCON
+	select CRYPTO
+	select CRYPTO_HASH
+	help
+	  ITE IT6505 DisplayPort bridge chip driver.
 
 config DRM_LONTIUM_LT8912B
 	tristate "Lontium LT8912B DSI/HDMI bridge"
-- 
2.40.0.rc1.284.g88254d51c5-goog

