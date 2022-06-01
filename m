Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A7D153A374
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 13:03:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352458AbiFALDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 07:03:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352467AbiFALDP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 07:03:15 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBDE08A049
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 04:03:12 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id u3so1837648wrg.3
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 04:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Oj0UTyy0MLszvmn9VYRtyrJ5EUtyanW7B83YKGtREoY=;
        b=q8JG6nQAxFI6QCloZp2Q4pXzLo3shCoqdhGDgiA2pBrA10VCaqcbmuAJsb25aI4/H/
         uWFzuufhljnvhDTL+e3wGS7WRicznv36my3NbbggPbQkLXYfT+OZlRxNvXEfFZEof2+r
         tM26WAClQnO5mpxQpVckBTlaC4smj5qjrg9SQp3VvX1ezXtQLMy79HZbbjRzGyCdgTyg
         L2ZSMTCRNm6aJYXxX2OHDaap/pXi+yN9Ch5f1QA2UZEB5rYML1oO+bGfydSDlsGIHemX
         5WH+AykVi/J2hNdYa9Zbr5ziLDTuPRpkLn5vLPCh6SWGn3ATpN5zkmHzP/sxM0sdTDH3
         +4FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Oj0UTyy0MLszvmn9VYRtyrJ5EUtyanW7B83YKGtREoY=;
        b=Ws4opzEba6k3Tfj+St+l1esucv/w33BWn/NdXQiVhoEN8+tL258m5G1k1354BJgEso
         oUieI4tscPfWsj2GirT2INRHHj/1w2lZ70X7XWA0SXcMndzl1fmZ7iAJSBMGjec5xJZh
         BRarRXZ8IAjYYFcsVt3IWOukWxQzcrngX18MUxoYaHP1JSTXQOJVqn+/9CNFNv5MkxmB
         +LtkczKTMpPXHa4i57EJDC8xKgBLnjYgsVxY1YONXe4hwv+I+p/rYtixVJLzwPuJ08uI
         ljy13ZKohEpPFX3/6NDNsKDGUsYu5qx6abwqTUjsVw4g2zc3BD585Pgtju5psVWnOGDN
         NiLw==
X-Gm-Message-State: AOAM532FSI3FDL73Gl6JVyV1ebnG2TqaeJemFtR79QdmIftfg1AidxyK
        RDUUQKjwFuGmt9LwQIaU420=
X-Google-Smtp-Source: ABdhPJwDgJrEi99r+BoWVWJzPxWCtq5FeXvDr8rhpjp+LVsx1gRELhK179bEcDAWDnqDCwJUwzpCcQ==
X-Received: by 2002:adf:fa81:0:b0:20e:69df:5f06 with SMTP id h1-20020adffa81000000b0020e69df5f06mr54912093wrr.188.1654081391561;
        Wed, 01 Jun 2022 04:03:11 -0700 (PDT)
Received: from morpheus.home.roving-it.com (82-132-215-116.dab.02.net. [82.132.215.116])
        by smtp.googlemail.com with ESMTPSA id j14-20020a05600c190e00b00397381a7ae8sm6074559wmq.30.2022.06.01.04.03.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 04:03:11 -0700 (PDT)
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
Subject: [PATCH v5 3/6] drm/v3d: Add support for bcm2711
Date:   Wed,  1 Jun 2022 12:02:46 +0100
Message-Id: <20220601110249.569540-4-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220601110249.569540-1-pbrobinson@gmail.com>
References: <20220601110249.569540-1-pbrobinson@gmail.com>
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

Add compatible string and Kconfig options for bcm2711.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v5:
- Change compatible to align downstream and othee HW, reorder to suit

 drivers/gpu/drm/v3d/Kconfig   | 2 +-
 drivers/gpu/drm/v3d/v3d_drv.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/v3d/Kconfig b/drivers/gpu/drm/v3d/Kconfig
index e973ec487484..01d91c829107 100644
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

