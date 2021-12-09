Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 704A346E1AB
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 05:46:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbhLIEtr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 23:49:47 -0500
Received: from marcansoft.com ([212.63.210.85]:57312 "EHLO mail.marcansoft.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229512AbhLIEtr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 Dec 2021 23:49:47 -0500
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: hector@marcansoft.com)
        by mail.marcansoft.com (Postfix) with ESMTPSA id 68CCA41EA7;
        Thu,  9 Dec 2021 04:46:11 +0000 (UTC)
From:   Hector Martin <marcan@marcan.st>
To:     Sven Peter <sven@svenpeter.dev>, Rob Herring <robh+dt@kernel.org>
Cc:     Hector Martin <marcan@marcan.st>,
        Mark Kettenis <kettenis@openbsd.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 2/3] soc: apple: apple-pmgr-pwrstate: Add auto-PM min level support
Date:   Thu,  9 Dec 2021 13:45:00 +0900
Message-Id: <20211209044501.67028-3-marcan@marcan.st>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211209044501.67028-1-marcan@marcan.st>
References: <20211209044501.67028-1-marcan@marcan.st>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is seemingly required for DCP/DCPEXT, without which they refuse to
boot properly. They need to be set to minimum state 4 (clock gated).

Signed-off-by: Hector Martin <marcan@marcan.st>
---
 drivers/soc/apple/apple-pmgr-pwrstate.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/soc/apple/apple-pmgr-pwrstate.c b/drivers/soc/apple/apple-pmgr-pwrstate.c
index 8ad9d5fdefbf..590bb7439372 100644
--- a/drivers/soc/apple/apple-pmgr-pwrstate.c
+++ b/drivers/soc/apple/apple-pmgr-pwrstate.c
@@ -20,6 +20,7 @@
 #define APPLE_PMGR_RESET        BIT(31)
 #define APPLE_PMGR_AUTO_ENABLE  BIT(28)
 #define APPLE_PMGR_PS_AUTO      GENMASK(27, 24)
+#define APPLE_PMGR_PS_MIN       GENMASK(19, 16)
 #define APPLE_PMGR_PARENT_OFF   BIT(11)
 #define APPLE_PMGR_DEV_DISABLE  BIT(10)
 #define APPLE_PMGR_WAS_CLKGATED BIT(9)
@@ -42,6 +43,7 @@ struct apple_pmgr_ps {
 	struct reset_controller_dev rcdev;
 	struct regmap *regmap;
 	u32 offset;
+	u32 min_state;
 };
 
 #define genpd_to_apple_pmgr_ps(_genpd) container_of(_genpd, struct apple_pmgr_ps, genpd)
@@ -224,6 +226,12 @@ static int apple_pmgr_ps_probe(struct platform_device *pdev)
 	ps->genpd.power_on = apple_pmgr_ps_power_on;
 	ps->genpd.power_off = apple_pmgr_ps_power_off;
 
+	ret = of_property_read_u32(node, "apple,min-state", &ps->min_state);
+	if (ret >= 0) {
+		regmap_update_bits(regmap, ps->offset, APPLE_PMGR_FLAGS | APPLE_PMGR_PS_MIN,
+				   FIELD_PREP(APPLE_PMGR_PS_MIN, ps->min_state));
+	}
+
 	active = apple_pmgr_ps_is_active(ps);
 	if (of_property_read_bool(node, "apple,always-on")) {
 		ps->genpd.flags |= GENPD_FLAG_ALWAYS_ON;
-- 
2.33.0

