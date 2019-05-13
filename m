Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 44D4B1AE9E
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2019 02:39:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727196AbfEMAjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 May 2019 20:39:17 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:43544 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727047AbfEMAjQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 May 2019 20:39:16 -0400
Received: by mail-pg1-f196.google.com with SMTP id t22so5827199pgi.10
        for <devicetree@vger.kernel.org>; Sun, 12 May 2019 17:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jbMbvlKHRDKPF33fkDdqZosCX8TlLi6L2lIp8AEgfEI=;
        b=ahcAC2+7tRqSmf9Sq99vuJtmBgerjrkeU5hvbO9VJcojV+ouWXEK2WeqLWILjwlbdt
         Wi53Y/OQI6YLkTJgy3lPLJJPk5CF8eddpc9pRhuK7JQ+wEabCM8KLJhCp5aFSUa4RvWI
         Qlz1Lwoz3OiB7nRfGUHgjdqktnzFo+efzXEbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jbMbvlKHRDKPF33fkDdqZosCX8TlLi6L2lIp8AEgfEI=;
        b=RwAMMX7zKB40er1T22MQMrUnznSy15o8ehHcEHG/NjoAVIT+4PThELn5O8JW42oHAU
         D0Dmu71jifimzxvHaEXKk8/83+H++tZlGYMzOCSWi//v5W+aC3/YAUi1O2tOT2zrGkLQ
         PsaTU32eH8QhgNZubk5TbdYdQG7tAYH2/H47tkF+L6Vo0WKAFG99zQ2TmUX7o49TXkl2
         ovlOQcsZWn2PmiVZ9vzWJIg0q/UPVDUiYL7utjj56VQvYOsALtN+iMIHrM70uDt/HTPm
         SKvcjBrZj2DwRBMf3KGE+4HRKQAy8cRqpFGC3yT4ZiHU6m/qdxV6WDSeMi+kfvbzJV5v
         VuyQ==
X-Gm-Message-State: APjAAAUPikpz4Jmnr5mmabalQ1C4/dm/pcAepBu0QwrPkvV826ww/jyL
        jZxN/T0hFPQdbETtu3E3ZxZHvA==
X-Google-Smtp-Source: APXvYqwvJ+s42h/ZoVPUfChayYtwKVcwlby7x/lX5fwmShnyI1xrkZYSHRWHIJyOpTadffshc3b6qg==
X-Received: by 2002:a63:3dcf:: with SMTP id k198mr28317089pga.60.1557707956264;
        Sun, 12 May 2019 17:39:16 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id a9sm14619577pgw.72.2019.05.12.17.39.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 May 2019 17:39:15 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        boot-architecture@lists.linaro.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Michal Hocko <mhocko@suse.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>
Subject: [PATCH v2 2/2] amr64: map FDT as RW for early_init_dt_scan()
Date:   Mon, 13 May 2019 08:38:19 +0800
Message-Id: <20190513003819.356-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190513003819.356-1-hsinyi@chromium.org>
References: <20190513003819.356-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently in arm64, FDT is mapped to RO before it's passed to
early_init_dt_scan(). However, there might be some code that needs
to modify FDT during init. Map FDT to RW until unflatten DT.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/kernel/setup.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..08b22c1e72a9 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -179,9 +179,13 @@ static void __init smp_build_mpidr_hash(void)
 		pr_warn("Large number of MPIDR hash buckets detected\n");
 }
 
+extern void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size,
+				       pgprot_t prot);
+
 static void __init setup_machine_fdt(phys_addr_t dt_phys)
 {
-	void *dt_virt = fixmap_remap_fdt(dt_phys);
+	int size;
+	void *dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
 	const char *name;
 
 	if (!dt_virt || !early_init_dt_scan(dt_virt)) {
@@ -320,6 +324,9 @@ void __init setup_arch(char **cmdline_p)
 	/* Parse the ACPI tables for possible boot-time configuration */
 	acpi_boot_table_init();
 
+	/* remap fdt to RO */
+	fixmap_remap_fdt(__fdt_pointer);
+
 	if (acpi_disabled)
 		unflatten_device_tree();
 
-- 
2.20.1

