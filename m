Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF0E330FEBB
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 21:47:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbhBDUqP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 15:46:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbhBDUmH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 15:42:07 -0500
X-Greylist: delayed 95 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 04 Feb 2021 12:41:51 PST
Received: from mail.marcansoft.com (marcansoft.com [IPv6:2a01:298:fe:f::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE0ACC0613D6
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 12:41:51 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: hector@marcansoft.com)
        by mail.marcansoft.com (Postfix) with ESMTPSA id 8FF6B42846;
        Thu,  4 Feb 2021 20:40:29 +0000 (UTC)
From:   Hector Martin <marcan@marcan.st>
To:     Hector Martin <marcan@marcan.st>, soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Marc Zyngier <maz@kernel.org>, robh+dt@kernel.org,
        Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Olof Johansson <olof@lixom.net>
Subject: [PATCH 07/18] tty: serial: samsung_tty: enable for ARCH_APPLE
Date:   Fri,  5 Feb 2021 05:39:40 +0900
Message-Id: <20210204203951.52105-8-marcan@marcan.st>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210204203951.52105-1-marcan@marcan.st>
References: <20210204203951.52105-1-marcan@marcan.st>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Apple M1 SoCs are distant descendants of Samsung SoCs and use similar
UART blocks.

Signed-off-by: Hector Martin <marcan@marcan.st>
---
 drivers/tty/serial/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 34a2899e69c0..e239977e37f7 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -236,7 +236,7 @@ config SERIAL_CLPS711X_CONSOLE
 
 config SERIAL_SAMSUNG
 	tristate "Samsung SoC serial support"
-	depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST
+	depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST || ARCH_APPLE
 	select SERIAL_CORE
 	help
 	  Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
-- 
2.30.0

