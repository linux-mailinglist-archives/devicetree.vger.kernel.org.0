Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D69E43E857
	for <lists+devicetree@lfdr.de>; Thu, 28 Oct 2021 20:33:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230329AbhJ1SgY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 14:36:24 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:40787 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229645AbhJ1SgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 14:36:24 -0400
Received: by mail-oi1-f171.google.com with SMTP id n63so9581761oif.7
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 11:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zHge/Nt+V6oXveriOkSfhWR7KvdNkPR1xSjU4Jlztjw=;
        b=cBtT/PSKYXwKDG75bbfG/51y+2ugPKr/MRUyLk4gKYGynrfbAwqhY34SYnmpNlDNtO
         wzZOFNLLHDYyUKx59932haR2DSQCH/WUpMVrg6bXjuCF473g8iMhixrWB92G5Dn7v99O
         vHjQC4Mm9UOgOaYpHAMcOPWcqPRIIJvWFo9ylYh6Pe/9MUbznci9oSw9KXvZvB2fv7LX
         Niv8DAxjup6+xF8XazHO0U8ekRScEcmK93hekppbTi0NYyi5EhXtAIw9noR5sGyC74eb
         QQLV+MYmlccjHEFCaFh0tRkuEEns7B4yckgKsgrYqrDlLFgUpXWBKTRXU8rQ8z4ZUeae
         Q5Hw==
X-Gm-Message-State: AOAM532qjTzACr+fhBVNzhJjZYU4q1Eq20Jr5Ax1Djh7FpTu9nz0hJZ0
        594t0dA1bdykMOxocyXP58dc/hqE3A==
X-Google-Smtp-Source: ABdhPJwf+xRWyEEF31Uzxg58vZVWanelIjwzEv/7AK60ArEDHdpK8ZNq3CI8ChUthu0UH4HTvhKVqA==
X-Received: by 2002:a05:6808:5c5:: with SMTP id d5mr3844977oij.173.1635446036644;
        Thu, 28 Oct 2021 11:33:56 -0700 (PDT)
Received: from xps15.herring.priv (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.googlemail.com with ESMTPSA id f14sm1299033ots.51.2021.10.28.11.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 11:33:55 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] arm64: Simplify checking for populated DT
Date:   Thu, 28 Oct 2021 13:33:55 -0500
Message-Id: <20211028183355.360731-1-robh@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use of of_scan_flat_dt() function predates libfdt and is discouraged as
libfdt provides a nicer set of APIs. Rework dt_scan_depth1_nodes to use
libfdt calls directly. Rather than searching for any node not /chosen or
/hypervisor, let's just check for something always required which is the
arch timer.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm64/kernel/acpi.c | 29 ++++++-----------------------
 1 file changed, 6 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
index 1c9c2f7a1c04..f1bb0fb4a604 100644
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
@@ -62,29 +63,12 @@ static int __init parse_acpi(char *arg)
 }
 early_param("acpi", parse_acpi);
 
-static int __init dt_scan_depth1_nodes(unsigned long node,
-				       const char *uname, int depth,
-				       void *data)
+static bool __init dt_is_populated(void)
 {
-	/*
-	 * Ignore anything not directly under the root node; we'll
-	 * catch its parent instead.
-	 */
-	if (depth != 1)
-		return 0;
-
-	if (strcmp(uname, "chosen") == 0)
-		return 0;
+	const void *fdt = initial_boot_params;
+	int node = fdt_node_offset_by_compatible(fdt, -1, "arm,armv8-timer");
 
-	if (strcmp(uname, "hypervisor") == 0 &&
-	    of_flat_dt_is_compatible(node, "xen,xen"))
-		return 0;
-
-	/*
-	 * This node at depth 1 is neither a chosen node nor a xen node,
-	 * which we do not expect.
-	 */
-	return 1;
+	return node > 0 ? true : false;
 }
 
 /*
@@ -205,8 +189,7 @@ void __init acpi_boot_table_init(void)
 	 *   and ACPI has not been [force] enabled (acpi=on|force)
 	 */
 	if (param_acpi_off ||
-	    (!param_acpi_on && !param_acpi_force &&
-	     of_scan_flat_dt(dt_scan_depth1_nodes, NULL)))
+	    (!param_acpi_on && !param_acpi_force && dt_is_populated()))
 		goto done;
 
 	/*
-- 
2.32.0

