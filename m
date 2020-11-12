Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B44EF2B0046
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 08:21:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725959AbgKLHVr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 02:21:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725923AbgKLHVr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 02:21:47 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B183BC0613D1
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 23:21:46 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id l2so6861836lfk.0
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 23:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MRa8qRVzTNVMwjc9Z58WD45Itu63riYrYK/p4P2hSRk=;
        b=q5MOoBFRiFy0R79aztQHCi9I0yuNMu1NB0EEbOqL9l79B7ChE8WvYvW/YV7Epzrs9y
         hLS3j0YqSN2Bk9ENAq9/dQx1l0e8vFZeObOZQXNdVmJT7M+MyeX75Jksle5hfaPViBOA
         IGwWXwLOKri55Tw5NCM9AEQZ8tCKfaW9xmqGQ7cwVpRLMpyLD36RQQMOnweZaTXJUsme
         X/+Pc4A4yLWtBE7BJVtYQrWifZOPwN1sLVS66c3vWzk5CaZslTzbl6EUNXdHXf6BoN0t
         CUfvLJAGqnETJcpxfoinF2ZfbYJo8laOaBV70n0zeTYu0Wrkrb8qQ0IPMfxLoPWjqEh1
         aq2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MRa8qRVzTNVMwjc9Z58WD45Itu63riYrYK/p4P2hSRk=;
        b=epvKP6Ptf8BVXUEFw716LuplPwntlq8kb0HTH1Z4bzNKF+8xXg32ZhSM0kbP5nfUdM
         /oubLwdGAdx6eZxiksEkj5UYMWKocFO0RMUz9yNxDoPx+qX8L3D0bpvXNuNzyIXS6F5r
         ExmxtYX4wq2ayLTPVc8iOIdRTuZzhrmzgyW/EtljM3Os6/UOaA67iFvccSQvJlxFZoW3
         cQpNeM9Untay0KzR7Z9hacBXgufQZLf13OiHCvvYCUH28TKEedbkQ3PSejibyQHrpVQd
         HvSHGlk+B9eO/NRXRa6mH/OZCQSkbbRin6AlQF4nxH2DBPSXlIRMKuygwXJNuOojXHZ0
         UQhg==
X-Gm-Message-State: AOAM532Nx9OijFLEUsG1+J7ZZS3Qx5O+kzutjYAVFH76c+X9K/O75WP0
        DZt8ZT0MQ9KwrMwHc2OF3+A=
X-Google-Smtp-Source: ABdhPJzzAbd0DJP7USElBeKtIL9BO/RONxfke8um6r5woEsi/eVbcXYPUIIqV1ICzuFUKsliq9q2AA==
X-Received: by 2002:a05:6512:3312:: with SMTP id k18mr1982507lfe.403.1605165705204;
        Wed, 11 Nov 2020 23:21:45 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id w18sm460427lfc.5.2020.11.11.23.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 23:21:44 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V3 1/3] arm64: add config for Broadcom BCM4908 SoCs
Date:   Thu, 12 Nov 2020 08:21:31 +0100
Message-Id: <20201112072133.17039-1-zajec5@gmail.com>
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
index 6f2494dd6d60..d1c02a4a93c8 100644
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

