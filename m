Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A38CF680CBB
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 13:01:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234281AbjA3MBe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 07:01:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230422AbjA3MBd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 07:01:33 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14BC81708
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:01:33 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id q10-20020a1cf30a000000b003db0edfdb74so8481619wmq.1
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K7rGW7hYEauj0lEHNx054QYhURQUQQG6A8fMOX9HH84=;
        b=lDaBzPPGiIWHSrtrjHZkaU6yOWihKZPM5+aGXtQos07HvscEZ0LT5JsXQLf6p0Gvsc
         xmzJIK6xlI4DNUGyavubQ+WC/rC/5cQQZtn3ND7ZLlGtxk1YKVMjt6+poaIocV2kXjTl
         PHCtXN43bU/uNH9elJn0eA+LYOcXZM2pM5Sozv4GLqKNRTESooyRfvsgsejqnrDDDke/
         oioyvUiezg2+Lif5ZzRSJa2XUAjPpEJEq6WAfDsgT77uHQwPuoFr4KbMl4izZIDU59U1
         HhsQoLMAM4pPN/7i+CFswIdYZoXIhW5QCsIEDV8y8Aaq4btqy2W/A2AgsC/heByJxFJE
         ebfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K7rGW7hYEauj0lEHNx054QYhURQUQQG6A8fMOX9HH84=;
        b=gS+xztTQymrT4oTOriN9IzUX9t3CipOXiyfU93bkT5Tv6zWGkU7+s0Vp+QOvcu9PG/
         0Z0wT5LM1l70pD/ofoDZ5BwmxOxYghXe7cOeKgJX+t3Fw8ilke+6c0YvyClFM1GmTWpf
         CRu1hdlgOqLZjseSzOXnxuXv9B9Q1Bf1rHSAjdXM5JisadMe1GHg66Zzxk1DmCA0+6p+
         FlTt4HBscaDVkxkiS6AGKQ8kalHvAmNfF4X67s/i1iJuK/+rGcQ7TG++XlD7z5TIEP/t
         egQtEu8LK9jxPvEK9TlLhaa9kQs2JOJObKKAGABcjag6u/mTrgsHbXf/5rUJj5yuie8b
         O0Gg==
X-Gm-Message-State: AO0yUKUmWJCTHOObDfqW8hcTXh3X7lGca1uC0OEZseYDco0EU5GA4bpl
        OFu2GY06KbNqspaY5HBeJh75xw==
X-Google-Smtp-Source: AK7set8ufGZSIpyQZvCciZ3L96Jv+n1WQFdPSSjUZxzSgat1S+JN+p/kBx/VXyIJpoeT4c3M8PRA0Q==
X-Received: by 2002:a05:600c:4195:b0:3dc:5ad1:583d with SMTP id p21-20020a05600c419500b003dc5ad1583dmr2344794wmh.18.1675080091422;
        Mon, 30 Jan 2023 04:01:31 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c444600b003db09692364sm17505943wmn.11.2023.01.30.04.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 04:01:31 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Heiko Stuebner ' <heiko@sntech.de>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>
Subject: [PATCH v3 1/6] RISC-V: Factor out body of riscv_init_cbom_blocksize loop
Date:   Mon, 30 Jan 2023 13:01:23 +0100
Message-Id: <20230130120128.1349464-2-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130120128.1349464-1-ajones@ventanamicro.com>
References: <20230130120128.1349464-1-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Refactor riscv_init_cbom_blocksize() to prepare for it to be used
for both cbom block size and cboz block size.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/mm/cacheflush.c | 45 +++++++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 20 deletions(-)

diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index 3cc07ed45aeb..eaf23fc14966 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -98,34 +98,39 @@ void flush_icache_pte(pte_t pte)
 unsigned int riscv_cbom_block_size;
 EXPORT_SYMBOL_GPL(riscv_cbom_block_size);
 
+static void cbo_get_block_size(struct device_node *node,
+			       const char *name, u32 *block_size,
+			       unsigned long *first_hartid)
+{
+	unsigned long hartid;
+	u32 val;
+
+	if (riscv_of_processor_hartid(node, &hartid))
+		return;
+
+	if (of_property_read_u32(node, name, &val))
+		return;
+
+	if (!*block_size) {
+		*block_size = val;
+		*first_hartid = hartid;
+	} else if (*block_size != val) {
+		pr_warn("%s mismatched between harts %lu and %lu\n",
+			name, *first_hartid, hartid);
+	}
+}
+
 void riscv_init_cbom_blocksize(void)
 {
 	struct device_node *node;
 	unsigned long cbom_hartid;
-	u32 val, probed_block_size;
-	int ret;
+	u32 probed_block_size;
 
 	probed_block_size = 0;
 	for_each_of_cpu_node(node) {
-		unsigned long hartid;
-
-		ret = riscv_of_processor_hartid(node, &hartid);
-		if (ret)
-			continue;
-
 		/* set block-size for cbom extension if available */
-		ret = of_property_read_u32(node, "riscv,cbom-block-size", &val);
-		if (ret)
-			continue;
-
-		if (!probed_block_size) {
-			probed_block_size = val;
-			cbom_hartid = hartid;
-		} else {
-			if (probed_block_size != val)
-				pr_warn("cbom-block-size mismatched between harts %lu and %lu\n",
-					cbom_hartid, hartid);
-		}
+		cbo_get_block_size(node, "riscv,cbom-block-size",
+				   &probed_block_size, &cbom_hartid);
 	}
 
 	if (probed_block_size)
-- 
2.39.1

