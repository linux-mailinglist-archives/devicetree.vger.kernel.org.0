Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB6202B0824
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 16:08:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728073AbgKLPIn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 10:08:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727035AbgKLPIm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 10:08:42 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B9C7C0613D1
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 07:08:40 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id r9so8909969lfn.11
        for <devicetree@vger.kernel.org>; Thu, 12 Nov 2020 07:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sPB614LSf83xiN2Nyz4vLhzp6Wxm06XFDX5s5lxLtWs=;
        b=OHaTNk7XAFO7dr3/BVFvDGYHJ3IAwe+oW6e1TV0zxkp0yilnMcHra8vvn+nQQlepor
         B4SvwlmUFgXikcLQ3+Sc95NV596fo91lLjxPavfkqX0QzgyRCbQwjf/7Z3lgM7RE0QZ4
         8/0DcCaOfaY1c7OPE+2rgaClRzJpvwhBNo6dEymj4RbXR37c1/spTdEiW7oxsTUvbMJa
         vh6TQc81wH8E47vnPHHIMG1Eei+B/cYV0f2qjN/JJffu9UkzOJ96xA3OeOckUj6jYwrt
         fzgSkybwm5XCrGWw+cbgdtwiEyi2O5KyOpjKgQmwwssDyjoJiu1hoeGhzDYpvajxTXkh
         I8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sPB614LSf83xiN2Nyz4vLhzp6Wxm06XFDX5s5lxLtWs=;
        b=UWT6lGsGNrh7N5GuJb8I9GRD8hKSLFGJ3q85W9VYrozbhiiNY5i02VcmwxmNTp3Ad6
         OSa4zCrCvMAXUrMxvvtAKYO954WkHGMiUkUXnvDc9TgKUcprbgVhbBYu9Zu1tApVuagN
         JHo+cMWVNAnEIW/ziCUCdTnVKIuPI+wQ0dspjsJIBYy/oJM6oAYFuIL34/9ROq2c9+Zv
         /WdnfuTJKE4lagf9i7/ILk4Hyii+1fcppCU4etWSIsMMNeL+fGJT3OdlfUiaefXg9I2c
         4F64h9uAl33X8//PQJPZtFxSjFyIttoY2b3BTe5YyxoOoLXZBz7VA75tvu5Wxuzq5I3X
         Z08g==
X-Gm-Message-State: AOAM530czMXeu9MvHUxqCMcUJmKBK1bqye+QjebAiWIeMbx67Ij5h3+W
        UCrmXoA8NDhSr9hQeUP26us=
X-Google-Smtp-Source: ABdhPJwAc2l3lyVVBCi7CuvcqmsDXsp/RRdq27rDRS2h1Bbwg/dGne5trff9GY7qe4JMsmtkDNAXHA==
X-Received: by 2002:a19:8255:: with SMTP id e82mr842044lfd.553.1605193718937;
        Thu, 12 Nov 2020 07:08:38 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id q2sm602305lfh.218.2020.11.12.07.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 07:08:38 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V4 1/3] arm64: add config for Broadcom BCM4908 SoCs
Date:   Thu, 12 Nov 2020 16:08:30 +0100
Message-Id: <20201112150832.26474-1-zajec5@gmail.com>
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
V4: s/Cortex/Brahma/
---
 arch/arm64/Kconfig.platforms | 8 ++++++++
 arch/arm64/configs/defconfig | 1 +
 2 files changed, 9 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 6f2494dd6d60..ec60d32e8d5f 100644
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
+	  BCM49408 SoCs. These SoCs use Brahma-B53 cores and can be
+	  found in home routers.
+
 config ARCH_BCM_IPROC
 	bool "Broadcom iProc SoC Family"
 	select COMMON_CLK_IPROC
diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 17a2df6a263e..ead6fa942994 100644
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

