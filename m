Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0760779D7EA
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 19:50:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235776AbjILRu3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 13:50:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236845AbjILRu2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 13:50:28 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1B93C1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 10:50:24 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1bf11b1c7d0so726775ad.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 10:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1694541024; x=1695145824; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eNKC5KP8qQDW8slouBLKMG229/gzuMYaPiRbkfNYlhQ=;
        b=GkTQE+t8ytpx1H0aeGvQa6IeSiGqjTv27CVdXnV8MoS/M9X+w3mmBbNjFahgBsyBEt
         AnRUpQHAxJKu6cxarnCI70iidCMv6mWo5Qtf/eVWSOjCM6Ld9Nnl52m1KT5rW4rq61d3
         PZLOM0/MhqZ7fGLOnCqOzYHcx5wPY5xOO/6bYGOl4g0LEQfK9oU3AeyjcyOfvWPwrVwC
         k6NmddaJHftmxVaP2Kw2/LGhxM1r4kB+3N1istVaS5TpJeVipgvfLfN8EhYBZeI3KoTO
         xXiaaZXbmzVRtutzgj1vb+9rEzH/ilfxdcW7QGSp12u8F+jdz6AFNMvi3L+md0TajtUL
         +fjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694541024; x=1695145824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eNKC5KP8qQDW8slouBLKMG229/gzuMYaPiRbkfNYlhQ=;
        b=DJWo6LvWSv7YAwcd4kDjZQv7EAE4qB6wUwL9V+D5dTdMKYgxjDkuxmBQHPHfWU73/t
         MIVHL8u7iAkNRgBOqsuzpjwldrZBB0NM26AUL+3JcOORAZIukodHx8MyuZkWWWIWrXte
         mzx3eBkUHPRJ0O/2upj9fFIafOZrPer6XFHA4n4HR0eQvOxN1tO+Yeux05ueCK/7tyIK
         d0t18xGe5fovvfcxCqRdmXhnhVjQOmLQQdtmoPKJmg6Q6BtDyIl+5H674TynFoc99cl5
         zzxcn7dsclEK0HdAFl6krh80p2DLdEC2F67+MXK6jNTF+2Sfq6ZWfrQ8Utxe3U5Aozo3
         i3ZQ==
X-Gm-Message-State: AOJu0YwY14P5FCW+54K98IsBhU4+aN1tjjpSbWYB29osfg3lVCc/YRnE
        E38Vokn63sHwO+r7NLOyL6kDEw==
X-Google-Smtp-Source: AGHT+IGYdL6w3dlhJOKNIocPNIplLHZdN81nYvMZmpKzRwhj2mf4FZSZ6OQM/ntbZzd7phR5FPxKTA==
X-Received: by 2002:a17:902:dac2:b0:1c1:f0b4:f68f with SMTP id q2-20020a170902dac200b001c1f0b4f68fmr490270plx.10.1694541024051;
        Tue, 12 Sep 2023 10:50:24 -0700 (PDT)
Received: from localhost.localdomain ([171.76.81.83])
        by smtp.gmail.com with ESMTPSA id p12-20020a170902a40c00b001b891259eddsm8691440plq.197.2023.09.12.10.50.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 10:50:23 -0700 (PDT)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Saravana Kannan <saravanak@google.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v8 01/16] RISC-V: Don't fail in riscv_of_parent_hartid() for disabled HARTs
Date:   Tue, 12 Sep 2023 23:19:13 +0530
Message-Id: <20230912174928.528414-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230912174928.528414-1-apatel@ventanamicro.com>
References: <20230912174928.528414-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The riscv_of_processor_hartid() used by riscv_of_parent_hartid() fails
for HARTs disabled in the DT. This results in the following warning
thrown by the RISC-V INTC driver for the E-core on SiFive boards:

[    0.000000] riscv-intc: unable to find hart id for /cpus/cpu@0/interrupt-controller

The riscv_of_parent_hartid() is only expected to read the hartid from
the DT so we should directly call of_get_cpu_hwid() instead of calling
riscv_of_processor_hartid().

Fixes: ad635e723e17 ("riscv: cpu: Add 64bit hartid support on RV64")
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/kernel/cpu.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index c17dacb1141c..157ace8b262c 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -125,13 +125,14 @@ int __init riscv_early_of_processor_hartid(struct device_node *node, unsigned lo
  */
 int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid)
 {
-	int rc;
-
 	for (; node; node = node->parent) {
 		if (of_device_is_compatible(node, "riscv")) {
-			rc = riscv_of_processor_hartid(node, hartid);
-			if (!rc)
-				return 0;
+			*hartid = (unsigned long)of_get_cpu_hwid(node, 0);
+			if (*hartid == ~0UL) {
+				pr_warn("Found CPU without hart ID\n");
+				return -ENODEV;
+			}
+			return 0;
 		}
 	}
 
-- 
2.34.1

