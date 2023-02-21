Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 032E669E805
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 20:09:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbjBUTJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 14:09:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229846AbjBUTJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 14:09:28 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ADD52A6E0
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:22 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id ee7so6306257edb.2
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K7rGW7hYEauj0lEHNx054QYhURQUQQG6A8fMOX9HH84=;
        b=cC0ULT7/+BrHU2ZvV2TFw46UvQ/44ePZIIwdLcHDoSg8FUU1oNlaQ7Vv/h1ge8HGtl
         SgNA+8Vt7WTURfWna3wXHm4egrYzEjFssuiE/tSKZf80ouVpb9TCCbkve1Wo98b153i6
         x4w1A0Dka/Rcokbu/RGvMn9wXff/oA0e6ORxiGp7SsETSDQOETyhtKxuwLt1v3Xmn88X
         zHRQKpxFv63xVx4jXQzuDL08VRddAa/f8/hpj3h79+8Pwk3yl5Qf0SvlUzAkFhrMRG9A
         pezlqblmliS8oYq7P9gkFYb0bqJ+30J5gKsS2OBbpln4qmIqbWv7tZFNsJYoTduTXu3e
         OPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K7rGW7hYEauj0lEHNx054QYhURQUQQG6A8fMOX9HH84=;
        b=FRt+5Ij4LkOtMDbnsL2rgZZNOia4Cw4jguxs1+DmaxBMSVNTszZHE7Zq/enHJ1gv5W
         lQUP1wh5I7By5uUliU9DG1KD6e73LlUR35W1tVdw3qeE97ZM1JIqxZnGa7+E2trAMUSn
         dKVHfxiMQT4a4zc+ooxCF5T2Oz5WUTnyUCaZf1OL9se04OX19sd6yAZFDQelBWLr5I23
         eJF7jwAK6x3pRZuQGWALAswvoKa+aJBD5R7VFkzgXl+yFIjd5cTfYo6dSKbcLgmoF/Hj
         i3kwKu7JP6cliHX/ubKDxCx/Dkn7jMojtAaqX02p3FwWbaV1CUBJJ1Muabnwsg23TCM+
         XN8w==
X-Gm-Message-State: AO0yUKXiKouoZrGjzX0jpm7f/6cGWV0VkvhXM1ZtAN8O1BHEQHHMxVHk
        0IrYT5jqmcZC25hACC55W+sopg==
X-Google-Smtp-Source: AK7set9FgSEil/ObjCnoBx5+EIDW01ef3uYae3HN5WaDBbhvpW7zd/e0eZAry1Z286cMc6/eMEx5VA==
X-Received: by 2002:a17:906:dac1:b0:8b1:2b8b:a1fa with SMTP id xi1-20020a170906dac100b008b12b8ba1famr21315665ejb.47.1677006560758;
        Tue, 21 Feb 2023 11:09:20 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id lg17-20020a170906f89100b008b1797a53b4sm6729902ejb.215.2023.02.21.11.09.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 11:09:20 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org
Cc:     'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>
Subject: [PATCH v5 2/8] RISC-V: Factor out body of riscv_init_cbom_blocksize loop
Date:   Tue, 21 Feb 2023 20:09:10 +0100
Message-Id: <20230221190916.572454-3-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221190916.572454-1-ajones@ventanamicro.com>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
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

