Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 792C330FED2
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 21:52:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229959AbhBDUua (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 15:50:30 -0500
Received: from marcansoft.com ([212.63.210.85]:35764 "EHLO mail.marcansoft.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229976AbhBDUu2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Feb 2021 15:50:28 -0500
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: hector@marcansoft.com)
        by mail.marcansoft.com (Postfix) with ESMTPSA id D4BB84283E;
        Thu,  4 Feb 2021 20:40:19 +0000 (UTC)
From:   Hector Martin <marcan@marcan.st>
To:     Hector Martin <marcan@marcan.st>, soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Marc Zyngier <maz@kernel.org>, robh+dt@kernel.org,
        Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Olof Johansson <olof@lixom.net>
Subject: [PATCH 04/18] arm64: Kconfig: Introduce CONFIG_ARCH_APPLE
Date:   Fri,  5 Feb 2021 05:39:37 +0900
Message-Id: <20210204203951.52105-5-marcan@marcan.st>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210204203951.52105-1-marcan@marcan.st>
References: <20210204203951.52105-1-marcan@marcan.st>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a Kconfig option to toggle support for Apple ARM SoCs.
At this time this targets the M1 and later "Apple Silicon" Mac SoCs.

Signed-off-by: Hector Martin <marcan@marcan.st>
---
 arch/arm64/Kconfig.platforms | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 6eecdef538bd..e3e3bd2c4374 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -29,6 +29,13 @@ config ARCH_ALPINE
 	  This enables support for the Annapurna Labs Alpine
 	  Soc family.
 
+config ARCH_APPLE
+	bool "Apple Silicon SoC family"
+	select GENERIC_IRQ_CHIP
+	help
+	  This enables support for Apple's in-house ARM SoC family, starting
+	  with the Apple M1.
+
 config ARCH_BCM2835
 	bool "Broadcom BCM2835 family"
 	select TIMER_OF
-- 
2.30.0

