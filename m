Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03DDE690CE2
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 16:26:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbjBIP0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 10:26:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbjBIP0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 10:26:36 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32E99B4
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 07:26:35 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id hx15so7365401ejc.11
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 07:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K7rGW7hYEauj0lEHNx054QYhURQUQQG6A8fMOX9HH84=;
        b=kuIJXFR63EQ+fYmP7C1wA1MzvOqIjuDSDqVG2N1SeYPvzknN2OX74nqtDcH5iQ4O4w
         oH3qSb7v0I+VZZd/CjCOYvBRZGYgp+zK1T9sv0ApvXDRvAzfOC2Ben/6jkogWxMXNQz0
         aetA/zZlAd9PoTpsYYheKpSlwBx6yuvDMyf2kubQPduawwIVE+SKBmPTtrOuHwoCyJYE
         D9Hk44LVUDlBKqNHQkNL4QjmKOVvinr4QsUH8f91xeqLHLXX1aG8FIhlflTVILQxtqFV
         F2SQZlhfZWkvt56hm5lOjbDCbpyh1FbyAyMwa3BMCZNyvDHX72oopJvRu2+Ktd6cuYrq
         GbdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K7rGW7hYEauj0lEHNx054QYhURQUQQG6A8fMOX9HH84=;
        b=45ngTI2YqWjpR1q5g6tg4ddFKWdHl8lPrDIAxnUpM9PcjbrnG5H1fMWtZgXmCII06v
         DgF2mIrKIq9fHh/Uf5A16Hnj3ILTnKgxerQW1dte3apeXfw+QcSdih0zr6g0M+nx6D9s
         sYGj/ePTYNh9xrB2gteRgj7H6bHxXy/bNyKw/PQDNlfwmWgdwwHCjgDxS7/5akBi/W1Z
         A+lhIoJn38PtWa4yB7XXh9y+sWP3HInM0QBSvBB3MJ/tAgIrLSTxV9EwpjXWS7uNEfeU
         1YwZOEad9N1IDk4Ojggb4OkW+ZYR8uGDiyXqezKFPcKuSVE5lANLITIowOncgKKyyXZ/
         Oq2g==
X-Gm-Message-State: AO0yUKX6v3FjSj+lYjCM76hC92UIDMHpBUF60/IHfetR5GVgC2qyEMB5
        5EKzlsmXo6RhUoRseNLWPQ5GSw==
X-Google-Smtp-Source: AK7set9+Nl/jBXYA+zwzA2NVsfR8qmH3lTKNUYYH8/tWdL/5pN+drLs1/B01bKiO1aUH0oDc9xAR9A==
X-Received: by 2002:a17:906:34cf:b0:88a:673e:3669 with SMTP id h15-20020a17090634cf00b0088a673e3669mr14582760ejb.15.1675956393820;
        Thu, 09 Feb 2023 07:26:33 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id ch9-20020a170906c2c900b0088dc98e4510sm999864ejb.112.2023.02.09.07.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 07:26:33 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
Subject: [PATCH v4 2/8] RISC-V: Factor out body of riscv_init_cbom_blocksize loop
Date:   Thu,  9 Feb 2023 16:26:22 +0100
Message-Id: <20230209152628.129914-3-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230209152628.129914-1-ajones@ventanamicro.com>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
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

