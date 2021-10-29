Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E57E043FE95
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 16:40:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229486AbhJ2On1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 10:43:27 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:45585 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbhJ2On1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Oct 2021 10:43:27 -0400
Received: by mail-oi1-f179.google.com with SMTP id z126so13581431oiz.12
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 07:40:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3gebI9WyuU8OUaX8TMoh2Ef+/vsaHXwERAjlolluABc=;
        b=Jin4Yd/X9Jrk4F1LnUbOfz4d/w9TNnUhIxm5laoHTfY1IxyoOQ2N7TtG0Ae2Rl2Zbp
         hxSIIV6AdB8rI0k4NfNFdp7Cs3nqqEA9EM7X88S70sUpa2Cw2f8q0gQ6cqKYrACdmp3Q
         NktF4LMj8mjoQr7dnalsjYarD2bFmfNP0bxkV93r54SjYfBEQyT0USNVptkwbVhFo/Be
         tLG9WnTkjt3bjaZdbPNohJ6eDEKerDkecu9ochQWFewQDXlxQMTOEIsoyvSdogKjjrrn
         fq56GfISOIpu6YUI4gUImAEDNjJrC+lOKryE6nigZwmHdb10/SCP8kxPR5dPmRGl5/ni
         ccgQ==
X-Gm-Message-State: AOAM532pv71b9DQ6kp8Ph2Dco6miJHHYWguxD5wbFn/81PTpvYpB1Ame
        MT1ThZirN276D3h0WA/wpQ==
X-Google-Smtp-Source: ABdhPJybuQuR3qhiwtVXlxqFj0vehW7/t3YWND7LpX/PMdUcxRoVda1CT52MnzIid1O5fPDKIdSG1Q==
X-Received: by 2002:a05:6808:1a27:: with SMTP id bk39mr14179708oib.89.1635518458151;
        Fri, 29 Oct 2021 07:40:58 -0700 (PDT)
Received: from xps15.herring.priv (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.googlemail.com with ESMTPSA id x13sm1774922ooj.37.2021.10.29.07.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Oct 2021 07:40:57 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2] arm64: Simplify checking for populated DT
Date:   Fri, 29 Oct 2021 09:40:55 -0500
Message-Id: <20211029144055.2365814-1-robh@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use of the of_scan_flat_dt() function predates libfdt and is discouraged
as libfdt provides a nicer set of APIs. Rework dt_scan_depth1_nodes to
use libfdt calls directly, and rename it to dt_is_stub() to reflect
exactly what it checking.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
 - Keep checking for only stub nodes

 arch/arm64/kernel/acpi.c | 35 ++++++++++++++---------------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
index 1c9c2f7a1c04..7df733427e04 100644
--- a/arch/arm64/kernel/acpi.c
+++ b/arch/arm64/kernel/acpi.c
@@ -22,6 +22,7 @@
 #include <linux/irq_work.h>
 #include <linux/memblock.h>
 #include <linux/of_fdt.h>
+#include <linux/libfdt.h>
 #include <linux/smp.h>
 #include <linux/serial_core.h>
 #include <linux/pgtable.h>
@@ -62,29 +63,22 @@ static int __init parse_acpi(char *arg)
 }
 early_param("acpi", parse_acpi);
 
-static int __init dt_scan_depth1_nodes(unsigned long node,
-				       const char *uname, int depth,
-				       void *data)
+static bool __init dt_is_stub(void)
 {
-	/*
-	 * Ignore anything not directly under the root node; we'll
-	 * catch its parent instead.
-	 */
-	if (depth != 1)
-		return 0;
+	int node;
 
-	if (strcmp(uname, "chosen") == 0)
-		return 0;
+	fdt_for_each_subnode(node, initial_boot_params, 0) {
+		const char *name = fdt_get_name(initial_boot_params, node, NULL);
+		if (strcmp(name, "chosen") == 0)
+			continue;
+		if (strcmp(name, "hypervisor") == 0 &&
+		    of_flat_dt_is_compatible(node, "xen,xen"))
+			continue;
 
-	if (strcmp(uname, "hypervisor") == 0 &&
-	    of_flat_dt_is_compatible(node, "xen,xen"))
-		return 0;
+		return false;
+	}
 
-	/*
-	 * This node at depth 1 is neither a chosen node nor a xen node,
-	 * which we do not expect.
-	 */
-	return 1;
+	return true;
 }
 
 /*
@@ -205,8 +199,7 @@ void __init acpi_boot_table_init(void)
 	 *   and ACPI has not been [force] enabled (acpi=on|force)
 	 */
 	if (param_acpi_off ||
-	    (!param_acpi_on && !param_acpi_force &&
-	     of_scan_flat_dt(dt_scan_depth1_nodes, NULL)))
+	    (!param_acpi_on && !param_acpi_force && !dt_is_stub()))
 		goto done;
 
 	/*
-- 
2.32.0

