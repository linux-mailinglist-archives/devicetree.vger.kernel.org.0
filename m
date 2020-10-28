Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EC1529E0D3
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 02:38:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729888AbgJ1WDB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 18:03:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729302AbgJ1WB1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 18:01:27 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 033C0C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 15:01:27 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id l2so790012lfk.0
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 15:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CM30BQGyp7IWvRqsSROldJ9vkQO94NEkbC4h78ONa3o=;
        b=Cn303OOLI96wpFvv7YHWPuEFI45qhj48lmXTT30XQYRBMg+hOkkMTFFBCvYv/WSGHI
         84Ea929+F+y/Lxa3XbkVBQHX8bmpn+gPXO0XJGApW0JePEYUOR1Y6jpzERi+XhP70BL4
         l9xOA8X4/UX9Mw9fy9xaHVW9WLUY+vTpcGhkN9BIoEDYW2lh9JbP9hg88HadTBRMc6cp
         2HNjro2+15xtds8Qf8FsCajO62rSJizv0A/j/kOLYjDp32oVmbGD8qhVhucDYx8BErDP
         BYfh8caKIoQ979lq5wYH/1fksxZ3sG3WgKUnRFuW1QDx9+VElbIfPS/8OeVTO9j8oZDK
         T7Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CM30BQGyp7IWvRqsSROldJ9vkQO94NEkbC4h78ONa3o=;
        b=YLqNJQhXUigXNfvaXTXjMHq3J19Qtgm32XUkaRSPvsodO4UbKzhrhlpSYN47PlxUiK
         9KX33gOu7ng7skTa/VxmXuQjMhIS/ubcmXUcEbA3NIHX4GhkB5E21q3uqdl1vAcDjb6L
         qujwXe5C7MUkfHUe+jQFEO3eD9rnPKV+hMzpT5UOOemYr4cf7GFKAR97rvDk7+UffGLm
         pGhwFFvMVxT8X1EvqudvZpUhD0fUdGPmzqVDWKguJxFoleiwC5voUDs2MyRkqej1DT++
         +gGscFziHmi7ZxelcgQrJdZXylnvm4oQnTZCgABdj/h7mUs50+BKQtQuL4fdEuIS6swf
         4Vrw==
X-Gm-Message-State: AOAM532SqnS8mjz3rTV3mi18vsf9mU3lkS95P01m+F+z4F9auerDkGZT
        ZtjBRmDeVaopROzfDeWMT9Ar/3iD72Q=
X-Google-Smtp-Source: ABdhPJxGJp8AwP8Hd89efQojeQqaeDgUzTRnnkfHWDcZ7oOEpJVRrKD1Rj5hUlDEum1iI63g5cMQhQ==
X-Received: by 2002:a19:6514:: with SMTP id z20mr2318360lfb.456.1603879912468;
        Wed, 28 Oct 2020 03:11:52 -0700 (PDT)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id m10sm479084lfo.237.2020.10.28.03.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 03:11:51 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] arm64: add config for Broadcom BCM4908 SoCs
Date:   Wed, 28 Oct 2020 11:11:22 +0100
Message-Id: <20201028101123.6293-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Add ARCH_BCM4908 config that can be used for compiling DTS files.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/Kconfig.platforms | 8 ++++++++
 arch/arm64/configs/defconfig | 1 +
 2 files changed, 9 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index cd58f8495c45..52434264a2af 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -43,6 +43,14 @@ config ARCH_BCM2835
 	  This enables support for the Broadcom BCM2837 and BCM2711 SoC.
 	  These SoCs are used in the Raspberry Pi 3 and 4 devices.
 
+config ARCH_BCM4908
+	bool "Broadcom BCM4908 family"
+	select GPIOLIB
+	help
+	  This enables support for the Broadcom BCM4906, BCM4908 and
+	  BCM49408 SoCs. These SoCs use Cortex-B53 cores and can be
+	  found in home routers.
+
 config ARCH_BCM_IPROC
 	bool "Broadcom iProc SoC Family"
 	select COMMON_CLK_IPROC
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e0f33826819f..d2717bf2afe1 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -32,6 +32,7 @@ CONFIG_ARCH_AGILEX=y
 CONFIG_ARCH_SUNXI=y
 CONFIG_ARCH_ALPINE=y
 CONFIG_ARCH_BCM2835=y
+CONFIG_ARCH_BCM4908=y
 CONFIG_ARCH_BCM_IPROC=y
 CONFIG_ARCH_BERLIN=y
 CONFIG_ARCH_BRCMSTB=y
-- 
2.27.0

