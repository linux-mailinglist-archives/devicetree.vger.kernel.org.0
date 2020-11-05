Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6042C2A79B0
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 09:55:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730179AbgKEIzP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 03:55:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730182AbgKEIzP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 03:55:15 -0500
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 582F0C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 00:55:13 -0800 (PST)
Received: by mail-lj1-x244.google.com with SMTP id 2so709594ljj.13
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 00:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CM30BQGyp7IWvRqsSROldJ9vkQO94NEkbC4h78ONa3o=;
        b=KoRtfik/4fG9NV9/A6DAfSaw2OjtHh1EnOtdGNQ8acE6GrsGpfThFaKT7u9pATcErY
         3f4UJx/CZ1UhmVFF5PE1a+X+oLJZvvuUENl4HV+F8uJd+DSWhIatwkic6IBTSi0uUOBF
         82fwtj9HCkJxJRqrFCOHRFFYWougRu6FD9VHoxnW+fTJ0nbSQTVpZeqnWW73AMrZHNXK
         dXjVejm+Vv4T5dgi5u7QfDsS8GJaSx0RQWSclRDAEDcpxNlp7wdwOIFcmZ83csKqizWY
         54VR+/76vRAoGsZDM/oRajpLTp3+RGwcvqh6IRcOSQ4kv6yTaEBPI9OCyx1rkNAZ3w56
         1HKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CM30BQGyp7IWvRqsSROldJ9vkQO94NEkbC4h78ONa3o=;
        b=QAiliiVTzrV5ad+skHx5AUsRe6e8v/rTXjoM06GKjUztwbrPgbnWqPKi+Xui8Z8KCv
         oCohLyMlvnWzeLeCGscJ2/YJlv8R/1vxxX5vta95ZDD4f6Jceub2l1bAdNbR/TWvQt/6
         wPbt60Q70Vy4tzRIrkvJMmEV9pBWx1OjQ98OBWByfud7LGHFurYGxkkQaCJp3+I92yni
         SaQ6MKj1kzRqMqD3wFKQq0OqLHp3bfuuXfvgb35at7JEEAuKYFCCtZ5UHWhBNRtYejyx
         iE3zITGNCY2x0QH6F9AelK7jkgarTH3+1s0wQgecZD1AuTXSMOx0BytubaiUawevuBMT
         jcaQ==
X-Gm-Message-State: AOAM531xDjJl1xomrlIecPo98/xBWvLT9dhjr+VKMqYPvHASSgdAU8CK
        ZEQOC59ReVj6QWoK8QFSi6Q=
X-Google-Smtp-Source: ABdhPJzUnDpX3A9rwsZzgznpbiOcAj35w5c16kxsO7Iic4zqowGx4KJX7eMPcbTgU4aWidpGcu2rzw==
X-Received: by 2002:a2e:9694:: with SMTP id q20mr507961lji.46.1604566511879;
        Thu, 05 Nov 2020 00:55:11 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id q28sm114571lfn.7.2020.11.05.00.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 00:55:11 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 1/2] arm64: add config for Broadcom BCM4908 SoCs
Date:   Thu,  5 Nov 2020 09:54:57 +0100
Message-Id: <20201105085458.21121-1-zajec5@gmail.com>
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

