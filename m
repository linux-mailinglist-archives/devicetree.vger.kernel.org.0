Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5FEE3971BF
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 07:56:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727661AbfHUF4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 01:56:06 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:45468 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbfHUF4G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 01:56:06 -0400
Received: by mail-pg1-f193.google.com with SMTP id o13so654172pgp.12
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 22:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CGzXZK4zikEN4TxWRvQDpen5CEPMtDK0toXHnI7EWGQ=;
        b=lIuoBZCRnm33wF3mp82iFhcZCsLLsq4fMk40MMbfdJnsjqOLDVP53jXHSSyq3ZQazA
         bno688xMHYc2s1CVzoPSqMvi8sKN9g/hjFLuFeuHOAuJnQVwhBWMTkaQObYOc36G77ud
         4zd/yF+VIX3F5ZZbihbJ+dGFnlmLxYCqdTSyK/JyM8j1afqJKBfSycymSCMCB8cgl1yj
         qxorMRS5duqLnExx9vo9Tjnxm4dO4qKF3zj+9dRnCcdvLfeBMN4b7GlufLafuSAwRoQf
         SDdMNdAqObcuEA7qC6yXGz1ueGzZNtEmYfFXLbMyxkhXBVyx8jHl5G25dAohLOgL2V9t
         V67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=CGzXZK4zikEN4TxWRvQDpen5CEPMtDK0toXHnI7EWGQ=;
        b=j5lv9yYIeraBuHSihpbkr+ZLSBob2uWOsdp4aCzLlPWR1ujx1UhvJuyU472XTvL3UJ
         /+4y3BuRo5F8uMWwked6I51altlGII0IYOMv3Kss7+n7xL9w3wZk1GJJC47jvCbqDIR+
         ieVTgbRE4+PXDkgTXw5BlTvY6BLvaWVO3nxpytgUSAqWEVOircKECJTFipYhRH0+AzSR
         viDx+VM3HZZIXH/P7L31A6bp2aAHFBoHtDnzcBsr5zb3yznH1FBPnWMUDmCBRY4DnXkn
         E2nlfi/4fPsaXKdAC+KQy6WyH+7hbwgykzlfXyA/FGa0IvUE5D+S1THN9Ybxyg1G/P/s
         0KUg==
X-Gm-Message-State: APjAAAUyAeYAPSeH2nERkQu7c+Elyybu2fy2Uyvb991pjjvtWYN0eN5V
        kcpdreCqibphK9Qe6tq1bUc=
X-Google-Smtp-Source: APXvYqzYQ0JMPmykoZ2pidi+Eu/vt3Wt6Pi8aoiHcXBeHnBsKVP3bx5fquxF8TzvRcAZsV6OsETtuA==
X-Received: by 2002:a63:5945:: with SMTP id j5mr27559844pgm.452.1566366965125;
        Tue, 20 Aug 2019 22:56:05 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
        by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 22:56:04 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH 3/7] ARM: aspeed: Add ASPEED AST2600 architecture
Date:   Wed, 21 Aug 2019 15:25:26 +0930
Message-Id: <20190821055530.8720-4-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AST2600 is a Cortex A7 dual core CPU that uses the ARM GIC for
interrupts and ARM timer as a clocksource.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/mach-aspeed/Kconfig | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
index 2979aa4daeea..56007b0b6120 100644
--- a/arch/arm/mach-aspeed/Kconfig
+++ b/arch/arm/mach-aspeed/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menuconfig ARCH_ASPEED
 	bool "Aspeed BMC architectures"
-	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6
+	depends on ARCH_MULTI_V5 || ARCH_MULTI_V6 || ARCH_MULTI_V7
 	select SRAM
 	select WATCHDOG
 	select ASPEED_WATCHDOG
@@ -33,4 +33,16 @@ config MACH_ASPEED_G5
 	 Say yes if you intend to run on an Aspeed ast2500 or similar
 	 fifth generation Aspeed BMCs.
 
+config MACH_ASPEED_G6
+	bool "Aspeed SoC 6th Generation"
+	depends on ARCH_MULTI_V7
+	select CPU_V7
+	select PINCTRL_ASPEED_G6
+	select ARM_GIC
+	select HAVE_ARM_ARCH_TIMER
+	select HAVE_SMP
+	help
+	 Say yes if you intend to run on an Aspeed ast2600 or similar
+	 sixth generation Aspeed BMCs.
+
 endif
-- 
2.23.0.rc1

