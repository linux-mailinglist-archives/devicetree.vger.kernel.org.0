Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C9786FB2D6
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 16:29:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234492AbjEHO3L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 10:29:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234546AbjEHO3K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 10:29:10 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A6FE7685
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 07:29:05 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6434e65d808so4887891b3a.3
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 07:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1683556145; x=1686148145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rCnijZqZqbTFwmvqbOqYG9D3eO4SsXuxft0NUX8zz8A=;
        b=nsRbPLksBMxCFlI4Dk5W+JxUo5zwuNx1VEvGmsPZxoLBxbf7fhQP9i9unfigIlTOGz
         yBuJmPoM8nOnC5hnhATZOfDLAyouQ2Q7WduLsqd07D9e35BWU5kpZVAKtyHp/i3vATYz
         rjmsbzldIuJctLEnJmHxe0Ab8RabRHamwkH1Y2UGs20FDaQ+aPapOVNTV11A/sf8VxTF
         C1uahOKpgwutooogbk3seey0VKk8V0YhVIHz4k77bIvMfaA+CDPWhyz7WP87x4LYfU2u
         94KStMnCfY6REGFJu8024uIkI9tQIuItHRT+VxNw3MnYO7oXswuE1gHKFDBl/FPRvUqX
         wy+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683556145; x=1686148145;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rCnijZqZqbTFwmvqbOqYG9D3eO4SsXuxft0NUX8zz8A=;
        b=XwPmTnZho2MbGYzP/3Su+THtS2jgh7QSrFX/wfOfzLdyolO4WVRxTCgw9FDeWyinU4
         0e8D/X2urd15jrqufGfexQ+8JYgI0ErHls90MTY1h/kciYK0Av10kNexVvQW7I4JO4MC
         zn1Nsgh78U7o9BDzFKrEEIed9BSrTCVFu2zma34Y8bc07mEavnvcICdi/mv3McYLo5VJ
         A9x2ZDeBVfLx9vReNHbZhrVJR9oj6WvIycxtS6rkIGWvEqz3B4rpkWno4Guo0IpBj3UI
         opCNVYi0BuuHm28QljIGOjgoXdV5nb0YvJLUdu0RbboDlqJzMydw4VP4G7BeadQVBsdb
         LIVA==
X-Gm-Message-State: AC+VfDwsiABRe8EmhDBywU+h4LS7FLlG83ReH6VvA0jliLwKjFT1Nqlc
        Mzy7b0QKwf8LtZIyFFRwMqTh0A==
X-Google-Smtp-Source: ACHHUZ5kRlrVSUMiHnzrjpy2wrojD8fr8xn1cSzxwM+Vk7Xk0AkQUAUDShOnn3rSFg9njNf6VATOLQ==
X-Received: by 2002:a05:6a00:a21:b0:62a:d752:acc5 with SMTP id p33-20020a056a000a2100b0062ad752acc5mr14331891pfh.32.1683556144804;
        Mon, 08 May 2023 07:29:04 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.206])
        by smtp.gmail.com with ESMTPSA id k3-20020aa790c3000000b0063d46ec5777sm6082pfk.158.2023.05.08.07.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 07:29:04 -0700 (PDT)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Anup Patel <anup@brainfault.org>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, iommu@lists.linux.dev,
        Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v3 01/11] RISC-V: Add riscv_fw_parent_hartid() function
Date:   Mon,  8 May 2023 19:58:32 +0530
Message-Id: <20230508142842.854564-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230508142842.854564-1-apatel@ventanamicro.com>
References: <20230508142842.854564-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We add common riscv_fw_parent_hartid() which help device drivers
to get parent hartid of the INTC (i.e. local interrupt controller)
fwnode. Currently, this new function only supports device tree
but it can be extended to support ACPI as well.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/processor.h |  3 +++
 arch/riscv/kernel/cpu.c            | 12 ++++++++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/riscv/include/asm/processor.h b/arch/riscv/include/asm/processor.h
index 94a0590c6971..6fb8bbec8459 100644
--- a/arch/riscv/include/asm/processor.h
+++ b/arch/riscv/include/asm/processor.h
@@ -77,6 +77,9 @@ struct device_node;
 int riscv_of_processor_hartid(struct device_node *node, unsigned long *hartid);
 int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid);
 
+struct fwnode_handle;
+int riscv_fw_parent_hartid(struct fwnode_handle *node, unsigned long *hartid);
+
 extern void riscv_fill_hwcap(void);
 extern int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src);
 
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 5de6fb703cc2..1adbe48b2b58 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -73,6 +73,18 @@ int riscv_of_parent_hartid(struct device_node *node, unsigned long *hartid)
 	return -1;
 }
 
+/* Find hart ID of the CPU fwnode under which given fwnode falls. */
+int riscv_fw_parent_hartid(struct fwnode_handle *node, unsigned long *hartid)
+{
+	/*
+	 * Currently, this function only supports DT but it can be
+	 * extended to support ACPI as well.
+	 */
+	if (!is_of_node(node))
+		return -EINVAL;
+	return riscv_of_parent_hartid(to_of_node(node), hartid);
+}
+
 DEFINE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
 
 unsigned long riscv_cached_mvendorid(unsigned int cpu_id)
-- 
2.34.1

