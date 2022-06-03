Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AEBE53C787
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 11:26:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243031AbiFCJ0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 05:26:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243019AbiFCJ0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 05:26:22 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DE3E3A1B9
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 02:26:21 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id gl15so913156ejb.4
        for <devicetree@vger.kernel.org>; Fri, 03 Jun 2022 02:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ssOJLbGbegD1K46c6tLMgIHQD6IP233xl23vf6Dwrk8=;
        b=ORfIo6ijxncBWoW1zXqygp5d/hED615KbJsb0wAKIXFVm9YI7v2rGtaxqmLpUYFs5+
         0QwcxMDNKTQ0nynbMf1nZ0attlc+BIe6HuKb+nSviTbQDLX/kycf/lna6EhBH3C+IaWT
         fP4yQtrqjsB6H0KXcPMBeg7l8mN5oGq0NytiCc3pOv5PKUV5JOQKbtRABbm3kTLTkHJy
         K6krOmT26OsrDjQaQazX9rMWMgqYtWwQQLn4C7d85pH7GgwIBUASsXRRHKwvgb9sFdJl
         pDjJHA5QIJiR6xePJTgk57UE0sy46OHgIb3p2MD1WbeepIGW2ZezisrrXYSMS7l1KWP0
         CSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ssOJLbGbegD1K46c6tLMgIHQD6IP233xl23vf6Dwrk8=;
        b=YDySQ4UfaKessXF1NUsZC2hSwPunvZ8794k1zxAzvP4OJBxCl5QLxeZzaA57rZIh+S
         6HWOe9uCls8gmA2iQuEiw3u6WU/hhAcjeq1f+zDDCe4qA6OCD31Ztnvth7VkuZGszpKq
         CQYbM7zP29wHfrRjRyVCYHiXTmvTfu7tyMPviOz/kkPIVcAtBK8SybLHjw1R9MTDJSXG
         bhH2TzMxOLnhtW+UMeAUB9JfCMfo/hnNr2IGkxEQV0igiUbKeJkbANivW9dfrGJlhnra
         LaYqLo9lvsDV/cmi5Zf30h/m/ZO0PTxA8LrxjsTeNZ5plrRG7IYjvcmGhFfSznti/NuS
         H3aw==
X-Gm-Message-State: AOAM533yNaLQ4pL0tAW1HFA3aXBTgLZyb7p4QbnQL3/0d+8EsGQwpTKD
        Y+yYmWi/nLoVpXMRZqu+FstgYmliWEIVlA==
X-Google-Smtp-Source: ABdhPJxT3uTOHv8dOKf6vo3zopR23+u+e+tO/4ZN3QFTs3V+EAqg3wHOSloOBT6vRSAh79itOUzGew==
X-Received: by 2002:a17:906:4785:b0:6fe:f8ac:2494 with SMTP id cw5-20020a170906478500b006fef8ac2494mr7667931ejc.199.1654248380180;
        Fri, 03 Jun 2022 02:26:20 -0700 (PDT)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id b5-20020a17090691c500b006feaa22e367sm2617672ejx.165.2022.06.03.02.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 02:26:19 -0700 (PDT)
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
Subject: [PATCH v6 5/6] ARM: configs: Enable DRM_V3D
Date:   Fri,  3 Jun 2022 10:26:09 +0100
Message-Id: <20220603092610.1909675-6-pbrobinson@gmail.com>
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

BCM2711, the SoC used on the Raspberry Pi 4 has a different 3D
render GPU IP than its predecessors. Enable it it on multi v7
and bcm2835 configs.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Reviewed-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
---
Changes since v4:
- Added to bcm2835_defconfig

 arch/arm/configs/bcm2835_defconfig  | 1 +
 arch/arm/configs/multi_v7_defconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/bcm2835_defconfig b/arch/arm/configs/bcm2835_defconfig
index a9ed79b7f871..9270512c14ea 100644
--- a/arch/arm/configs/bcm2835_defconfig
+++ b/arch/arm/configs/bcm2835_defconfig
@@ -106,6 +106,7 @@ CONFIG_REGULATOR_GPIO=y
 CONFIG_MEDIA_SUPPORT=y
 CONFIG_MEDIA_CAMERA_SUPPORT=y
 CONFIG_DRM=y
+CONFIG_DRM_V3D=y
 CONFIG_DRM_VC4=y
 CONFIG_FB_SIMPLE=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index d6a6811f0539..e2db5cdc66b7 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -731,6 +731,7 @@ CONFIG_DRM_IMX_PARALLEL_DISPLAY=m
 CONFIG_DRM_IMX_TVE=m
 CONFIG_DRM_IMX_LDB=m
 CONFIG_DRM_IMX_HDMI=m
+CONFIG_DRM_V3D=m
 CONFIG_DRM_VC4=m
 CONFIG_DRM_ETNAVIV=m
 CONFIG_DRM_MXSFB=m
-- 
2.36.1

