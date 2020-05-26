Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F9121C263A
	for <lists+devicetree@lfdr.de>; Sat,  2 May 2020 16:36:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728182AbgEBOgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 May 2020 10:36:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728119AbgEBOgC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 May 2020 10:36:02 -0400
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com [IPv6:2607:f8b0:4864:20::843])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 158FFC061A0C
        for <devicetree@vger.kernel.org>; Sat,  2 May 2020 07:36:02 -0700 (PDT)
Received: by mail-qt1-x843.google.com with SMTP id g16so6263697qtp.11
        for <devicetree@vger.kernel.org>; Sat, 02 May 2020 07:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=tS4CD4lLqQwNWggAUgWdbgKJBvMgP+ZDf9qioLLaULg=;
        b=UCdHrOwxgnQ/ZKXvrynXg5kpln7v/q/w8O9ltJUwN+RtIupksnhtm3BAi80N2yCbQk
         kl4TyTrTDpSkRprw9fUqIe0intd+f0O33swuCHFu08hZgzvUdaPD8+T+uJd0u/74+cfu
         y/6PiHJEbyVXh1TLLt5Hg04gntr3xHhQGapFpPCbCSEF/2vd4JkCeQ1VVxhs5a+Pewpx
         4q85VvYiD5/SqPFyTYcHo6EEYatOGZS4hLat1vAfTlDpHU8GQNbyy4W5qD46q1n6ZGW5
         oh0/JcKPcjZQ9NaFmB1J8m9i9r1KZoQA0+2I8u4yLZd6mKFLBCxhjOIsFEdxfBMhM7xX
         tWTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tS4CD4lLqQwNWggAUgWdbgKJBvMgP+ZDf9qioLLaULg=;
        b=e8wHVbE52DGBzkOUPHK3+wvofgx+ynIIMZq1I7QTbG+fQS9+47Zg1AvGozqaryPy09
         TQlrq37HpFHyOryogViktatx15XNlLcUiLFKhQEGe5vHPUWnoQUpq+e8fqXa3fk7lp6z
         rnNygJs0wFVBON27TQuy+GWfSGeEImWBkhq+LktnImEjmPszej7nxdk4rciCTr6m2rOT
         5AC2ZjdSX4/rvOnYrQiqumD9ndFj8FAeva0lF3yOdT6l6kxmvLFxnZJ/oWoD/pvfphcB
         I0uMdSziXYLL6lu+qDby5658v2gfY+wSO8o1VnO4GS2O5jFcGdwrXILowA3wXlahhSfZ
         gjTw==
X-Gm-Message-State: AGi0Pub17FhCOKHJMkevgPJe1XhoRfDQXkbdKcpJvuSeIqLdJZODh/l6
        dwNryqLiQ0/VJQYPh+loVJbn2A==
X-Google-Smtp-Source: APiQypKeMh+UyDnLdEtSjoaLXEd1zuDRVwsSaEfNZHWelDhP68Hto6shhtXefNhY8QnyQ/NVxSbz9A==
X-Received: by 2002:ac8:6c57:: with SMTP id z23mr8938101qtu.359.1588430161236;
        Sat, 02 May 2020 07:36:01 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net. [73.69.118.222])
        by smtp.gmail.com with ESMTPSA id d23sm5156894qkj.26.2020.05.02.07.36.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 May 2020 07:36:00 -0700 (PDT)
From:   Pavel Tatashin <pasha.tatashin@soleen.com>
To:     pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
        linux-kernel@vger.kernel.org, pmladek@suse.com,
        sergey.senozhatsky@gmail.com, rostedt@goodmis.org,
        keescook@chromium.org, anton@enomsg.org, ccross@android.com,
        tony.luck@intel.com, robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v1 2/3] pstore/ram: allow to dump kmesg during regular reboot
Date:   Sat,  2 May 2020 10:35:54 -0400
Message-Id: <20200502143555.543636-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200502143555.543636-1-pasha.tatashin@soleen.com>
References: <20200502143555.543636-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently, ramoops is capable to collect dmesg buffer only during
panic and oops events. However, it is desirable to optionally allow
collecting dmesg buffers during other events as well: reboot, kexec,
emergency reboot etc.

While, a similar functionality is provided by pstore console it is not the
same. Often, console message level is reduced in production due to baud
rate limitation of serial consoles.  Having a noisy console reduces the
boot performance.

Thus, if the shutdown dmesg buffer is needed to study the shutdown
performance, it is currently not possible to do so with console as by
increasing the console output the shutdown time substantially increases
as well.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 fs/pstore/platform.c       |  6 ++++--
 fs/pstore/ram.c            | 38 +++++++++++++++++++++++++++-----------
 include/linux/pstore.h     |  1 +
 include/linux/pstore_ram.h |  1 +
 4 files changed, 33 insertions(+), 13 deletions(-)

diff --git a/fs/pstore/platform.c b/fs/pstore/platform.c
index 408277ee3cdb..d0393799fe6c 100644
--- a/fs/pstore/platform.c
+++ b/fs/pstore/platform.c
@@ -476,8 +476,10 @@ static struct kmsg_dumper pstore_dumper = {
 /*
  * Register with kmsg_dump to save last part of console log on panic.
  */
-static void pstore_register_kmsg(void)
+static void pstore_register_kmsg(int dmesg_all)
 {
+	if (dmesg_all)
+		pstore_dumper.max_reason = KMSG_DUMP_MAX;
 	kmsg_dump_register(&pstore_dumper);
 }
 
@@ -603,7 +605,7 @@ int pstore_register(struct pstore_info *psi)
 		pstore_get_records(0);
 
 	if (psi->flags & PSTORE_FLAGS_DMESG)
-		pstore_register_kmsg();
+		pstore_register_kmsg(psi->flags & PSTORE_FLAGS_DMESG_ALL);
 	if (psi->flags & PSTORE_FLAGS_CONSOLE)
 		pstore_register_console();
 	if (psi->flags & PSTORE_FLAGS_FTRACE)
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 795622190c01..9d2d1b299225 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -62,6 +62,12 @@ module_param(dump_oops, int, 0600);
 MODULE_PARM_DESC(dump_oops,
 		"set to 1 to dump oopses, 0 to only dump panics (default 1)");
 
+static int dump_all;
+module_param(dump_all, int, 0600);
+MODULE_PARM_DESC(dump_all,
+		 "set to 1 to record all kernel kmesg dump events (default 0) "
+		 "otherwise only panics and oops are recorded");
+
 static int ramoops_ecc;
 module_param_named(ecc, ramoops_ecc, int, 0600);
 MODULE_PARM_DESC(ramoops_ecc,
@@ -82,6 +88,7 @@ struct ramoops_context {
 	size_t ftrace_size;
 	size_t pmsg_size;
 	int dump_oops;
+	int dump_all;
 	u32 flags;
 	struct persistent_ram_ecc_info ecc_info;
 	unsigned int max_dump_cnt;
@@ -381,17 +388,19 @@ static int notrace ramoops_pstore_write(struct pstore_record *record)
 	if (record->type != PSTORE_TYPE_DMESG)
 		return -EINVAL;
 
-	/*
-	 * Out of the various dmesg dump types, ramoops is currently designed
-	 * to only store crash logs, rather than storing general kernel logs.
-	 */
-	if (record->reason != KMSG_DUMP_OOPS &&
-	    record->reason != KMSG_DUMP_PANIC)
-		return -EINVAL;
+	if (!cxt->dump_all) {
+		/*
+		 * By default only store crash logs, rather than storing general
+		 * kernel logs.
+		 */
+		if (record->reason != KMSG_DUMP_OOPS &&
+		    record->reason != KMSG_DUMP_PANIC)
+			return -EINVAL;
 
-	/* Skip Oopes when configured to do so. */
-	if (record->reason == KMSG_DUMP_OOPS && !cxt->dump_oops)
-		return -EINVAL;
+		/* Skip Oopes when configured to do so. */
+		if (record->reason == KMSG_DUMP_OOPS && !cxt->dump_oops)
+			return -EINVAL;
+	}
 
 	/*
 	 * Explicitly only take the first part of any new crash.
@@ -688,6 +697,7 @@ static int ramoops_parse_dt(struct platform_device *pdev,
 	pdata->mem_address = res->start;
 	pdata->mem_type = of_property_read_bool(of_node, "unbuffered");
 	pdata->dump_oops = !of_property_read_bool(of_node, "no-dump-oops");
+	pdata->dump_all = of_property_read_bool(of_node, "dump-all");
 
 #define parse_size(name, field) {					\
 		ret = ramoops_parse_dt_size(pdev, name, &value);	\
@@ -786,6 +796,7 @@ static int ramoops_probe(struct platform_device *pdev)
 	cxt->ftrace_size = pdata->ftrace_size;
 	cxt->pmsg_size = pdata->pmsg_size;
 	cxt->dump_oops = pdata->dump_oops;
+	cxt->dump_all = pdata->dump_all;
 	cxt->flags = pdata->flags;
 	cxt->ecc_info = pdata->ecc_info;
 
@@ -828,8 +839,11 @@ static int ramoops_probe(struct platform_device *pdev)
 	 * the single region size is how to check.
 	 */
 	cxt->pstore.flags = 0;
-	if (cxt->max_dump_cnt)
+	if (cxt->max_dump_cnt) {
 		cxt->pstore.flags |= PSTORE_FLAGS_DMESG;
+		if (cxt->dump_all)
+			cxt->pstore.flags |= PSTORE_FLAGS_DMESG_ALL;
+	}
 	if (cxt->console_size)
 		cxt->pstore.flags |= PSTORE_FLAGS_CONSOLE;
 	if (cxt->max_ftrace_cnt)
@@ -866,6 +880,7 @@ static int ramoops_probe(struct platform_device *pdev)
 	mem_address = pdata->mem_address;
 	record_size = pdata->record_size;
 	dump_oops = pdata->dump_oops;
+	dump_all = pdata->dump_all;
 	ramoops_console_size = pdata->console_size;
 	ramoops_pmsg_size = pdata->pmsg_size;
 	ramoops_ftrace_size = pdata->ftrace_size;
@@ -949,6 +964,7 @@ static void __init ramoops_register_dummy(void)
 	pdata.ftrace_size = ramoops_ftrace_size;
 	pdata.pmsg_size = ramoops_pmsg_size;
 	pdata.dump_oops = dump_oops;
+	pdata.dump_all = dump_all;
 	pdata.flags = RAMOOPS_FLAG_FTRACE_PER_CPU;
 
 	/*
diff --git a/include/linux/pstore.h b/include/linux/pstore.h
index e779441e6d26..32092c2d7224 100644
--- a/include/linux/pstore.h
+++ b/include/linux/pstore.h
@@ -195,6 +195,7 @@ struct pstore_info {
 #define PSTORE_FLAGS_CONSOLE	BIT(1)
 #define PSTORE_FLAGS_FTRACE	BIT(2)
 #define PSTORE_FLAGS_PMSG	BIT(3)
+#define PSTORE_FLAGS_DMESG_ALL	BIT(4)
 
 extern int pstore_register(struct pstore_info *);
 extern void pstore_unregister(struct pstore_info *);
diff --git a/include/linux/pstore_ram.h b/include/linux/pstore_ram.h
index 9cb9b9067298..f23c29cbd205 100644
--- a/include/linux/pstore_ram.h
+++ b/include/linux/pstore_ram.h
@@ -134,6 +134,7 @@ struct ramoops_platform_data {
 	unsigned long	ftrace_size;
 	unsigned long	pmsg_size;
 	int		dump_oops;
+	int		dump_all;
 	u32		flags;
 	struct persistent_ram_ecc_info ecc_info;
 };
-- 
2.25.1

