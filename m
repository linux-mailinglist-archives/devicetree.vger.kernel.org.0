Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9B3D53C782
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243021AbiFCJ0V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:26:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237274AbiFCJ0U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:26:20 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44FF13A1BB
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:26:19 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 25so9113223edw.8
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3QIoQb5QbRVNOs1RbxwOuYWdQ4RolJT8xZ/PEN472xw=;
        b=lmCyckO1JfhORtymrMAw3PdU4nq7PrawiqPgxXxYW7btxcfTfx8+r2WRvAqKrEervY
         tEPe2LGnx5LLR2IAGnYFAxsP2e7gMQlNFEVqh4GraTlnLdkgYM5QohEs7R6xDxGu/D/H
         RRXGyzy+Y4QoVQXpz6a13yjRzkjOMz4UYzT8Zd5ewzOkDQB8ONr1rovYtJ4m9IDCqAwG
         GLwZnEPuKTsxjGcDz/th8HLINjbe7nq4eoOcqMOqReZMHVVATirjLgocmKh2LZrbSP1E
         MvKw0e9ciET/2v6CeS9Qz//5UkV9e4iPu+eQSkgLaltIP+qh+1QCKcQBf6oBQ/kWDaAu
         R+eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3QIoQb5QbRVNOs1RbxwOuYWdQ4RolJT8xZ/PEN472xw=;
        b=2TKh4K0s6q16qjvjg/kPV3xAz6WQY1ymjCYYOmkmkOVlM7KzPrEjT9OJWNdRKRvrpQ
         OT5M5wL3VjMug6yQhuGKlimqwqUvB10khDne5WPSaI+K0ZfbiSo0FohW1mLtGGSb0xbq
         Ohy/iBY4coQ5oGY3q2AOxq7deOwkcRW74K3sHsmXtOqlELPSdBpfmkZd2vNhRTjlkXHb
         CxEInUmLkq7ZyQUPJ/TdMgKQLlc1wgegN6vir6z2H6LFsPBVrqI/atZpviikskMJIWvH
         wDA8JJZWqzAIFCPqLkD921SwNN5NcMoOjIZ9cX0ehuOZmXzjIy/Dj1oeFa6yLO8N0Gje
         GJaw==
X-Gm-Message-State: AOAM532hPDvJp0eCqqG2yqODu9kJGn7Si9O9SkHl1c3CAYlnBbTxR0E5
        R2t0hDbn71JVdxA0OcIfAys=
X-Google-Smtp-Source: ABdhPJwWDSaSdYoQBx6iHBJAm8vaTsVDbYmRXyOGiD0pUsPbS9VGBLoLVtY7Ji3bYn69DPVycbuvKA==
X-Received: by 2002:a05:6402:228d:b0:42d:e319:7297 with SMTP id cw13-20020a056402228d00b0042de3197297mr9641542edb.79.1654248377816;
        Fri, 03 Jun 2022 02:26:17 -0700 (PDT)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id b5-20020a17090691c500b006feaa22e367sm2617672ejx.165.2022.06.03.02.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:26:17 -0700 (PDT)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v6 3/6] drm/v3d: Add support for bcm2711
Date:   Fri,  3 Jun 2022 10:26:07 +0100
Message-Id: <20220603092610.1909675-4-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220603092610.1909675-1-pbrobinson@gmail.com>
References: <20220603092610.1909675-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string and Kconfig options and help for bcm2711.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Reviewed-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
---
Changes since v5:
- Update help text to cover all supported SoCs

Changes since v4:
- Change compatible to align downstream and other HW, reorder to suit

 drivers/gpu/drm/v3d/Kconfig   | 5 +++--
 drivers/gpu/drm/v3d/v3d_drv.c | 1 +
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/v3d/Kconfig b/drivers/gpu/drm/v3d/Kconfig
index e973ec487484..ce62c5908e1d 100644
--- a/drivers/gpu/drm/v3d/Kconfig
+++ b/drivers/gpu/drm/v3d/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config DRM_V3D
 	tristate "Broadcom V3D 3.x and newer"
-	depends on ARCH_BCM || ARCH_BRCMSTB || COMPILE_TEST
+	depends on ARCH_BCM || ARCH_BRCMSTB || ARCH_BCM2835 || COMPILE_TEST
 	depends on DRM
 	depends on COMMON_CLK
 	depends on MMU
@@ -9,4 +9,5 @@ config DRM_V3D
 	select DRM_GEM_SHMEM_HELPER
 	help
 	  Choose this option if you have a system that has a Broadcom
-	  V3D 3.x or newer GPU, such as BCM7268.
+	  V3D 3.x or newer GPUs. SoCs supported include the BCM2711,
+	  BCM7268 and BCM7278.
diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
index 56d5f831e48b..8c7f910daa28 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.c
+++ b/drivers/gpu/drm/v3d/v3d_drv.c
@@ -191,6 +191,7 @@ static const struct drm_driver v3d_drm_driver = {
 };
 
 static const struct of_device_id v3d_of_match[] = {
+	{ .compatible = "brcm,2711-v3d" },
 	{ .compatible = "brcm,7268-v3d" },
 	{ .compatible = "brcm,7278-v3d" },
 	{},
-- 
2.36.1

