Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36A2363F0AF
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 13:40:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230259AbiLAMkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 07:40:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231234AbiLAMkK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 07:40:10 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB9145C75C
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 04:40:09 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id q1so1546776pgl.11
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 04:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iMerckrhZTm3FZ8D21RolrP9vW5vY1yytNXMfvZLbSs=;
        b=EW5N4fofLG283DGbnT+a/zHyAd4+0YOIWw6FGWlEpchFEMUJzLqhZWhWABAWelWgmp
         tYxkMY+aOjTkvgYbcPfiocKATHcS4FrKB9hHvgGE0qojBUvWf549A1krIqY3kTKEkQUt
         qBCFDeFj/9xscbLvW3OKFoVDxvmOSMe2vsQSrPEb+sikXyxGMCzD+eyP8SiY8DP5H88C
         aghhCxchlMILuAzqq0/vxFOIK7KUzgwIYWlErfBS5HM012J0kQSo8C/6OCx2xlYJvQLh
         SkpVTk52AuEe/ntV8JBSkQ01QQRqe38fI5aNMZk7pb+mXZcYuQuzK61yGSDiGUncfFke
         H+sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iMerckrhZTm3FZ8D21RolrP9vW5vY1yytNXMfvZLbSs=;
        b=fb3xIcz5xNc4R1r6bTZont9ihjy9FPvHM+nUlmUR4p8arqCDESW6qnSnZKIOOmcKRh
         PQGAFW3km/EPiFd5yOxwxlBb0UTlloGTk0L/3asjB+wc5RwNcQ+h0xK5v4ny4WQPTXE+
         08mjBq/cCY5U53yrROA95I8Qqoa+7qziit4RXCKWQICFE09Es4p4r4tLIlA47a1oWzIF
         zh1Fk+qOMgPciINFeHiITQxnmrz2E7sdYAfpKPHJaUBhEh1HzYaHXXvjnTUo8HenHUZ8
         3uo/G0EnnSF8Tn121ZXfhRgenPkgiSENBoSQQDrWMYd2elYtnjnqi4Ckqd7z5juL9ab+
         abMA==
X-Gm-Message-State: ANoB5pmY8p48AORdOA1dIBXf9kJl9ca0Uckb3ANlO44++C2Fn6nwn6aF
        6FDlrxzcAyChHCSnO99vmXT1NA==
X-Google-Smtp-Source: AA0mqf782l4m814ZaZs0CFvnLfiiFisNyRXUDu+bIqwsD0IywGmhZJf0DMxA/y+agEoh/mh+ymv4Yg==
X-Received: by 2002:a05:6a00:10cd:b0:572:5c03:f7ad with SMTP id d13-20020a056a0010cd00b005725c03f7admr67744766pfu.17.1669898409211;
        Thu, 01 Dec 2022 04:40:09 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.81.69])
        by smtp.gmail.com with ESMTPSA id b65-20020a62cf44000000b0056f0753390csm3246981pfg.96.2022.12.01.04.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 04:40:08 -0800 (PST)
From:   Anup Patel <apatel@ventanamicro.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Samuel Holland <samuel@sholland.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        Palmer Dabbelt <palmer@rivosinc.com>
Subject: [PATCH v5 1/3] RISC-V: time: initialize hrtimer based broadcast clock event device
Date:   Thu,  1 Dec 2022 18:09:52 +0530
Message-Id: <20221201123954.1111603-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221201123954.1111603-1-apatel@ventanamicro.com>
References: <20221201123954.1111603-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Similarly to commit 022eb8ae8b5e ("ARM: 8938/1: kernel: initialize
broadcast hrtimer based clock event device"), RISC-V needs to initiate
hrtimer based broadcast clock event device before C3STOP can be used.
Otherwise, the introduction of C3STOP for the RISC-V arch timer in
commit 232ccac1bd9b ("clocksource/drivers/riscv: Events are stopped
during CPU suspend") leaves us without any broadcast timer registered.
This prevents the kernel from entering oneshot mode, which breaks timer
behaviour, for example clock_nanosleep().

A test app that sleeps each cpu for 6, 5, 4, 3 ms respectively, HZ=250
& C3STOP enabled, the sleep times are rounded up to the next jiffy:
== CPU: 1 ==      == CPU: 2 ==      == CPU: 3 ==      == CPU: 4 ==
Mean: 7.974992    Mean: 7.976534    Mean: 7.962591    Mean: 3.952179
Std Dev: 0.154374 Std Dev: 0.156082 Std Dev: 0.171018 Std Dev: 0.076193
Hi: 9.472000      Hi: 10.495000     Hi: 8.864000      Hi: 4.736000
Lo: 6.087000      Lo: 6.380000      Lo: 4.872000      Lo: 3.403000
Samples: 521      Samples: 521      Samples: 521      Samples: 521

Link: https://lore.kernel.org/linux-riscv/YzYTNQRxLr7Q9JR0@spud/
Fixes: 232ccac1bd9b ("clocksource/drivers/riscv: Events are stopped during CPU suspend")
Suggested-by: Samuel Holland <samuel@sholland.org>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Samuel Holland <samuel@sholland.org>
Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
---
 arch/riscv/kernel/time.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/riscv/kernel/time.c b/arch/riscv/kernel/time.c
index 8217b0f67c6c..1cf21db4fcc7 100644
--- a/arch/riscv/kernel/time.c
+++ b/arch/riscv/kernel/time.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/of_clk.h>
+#include <linux/clockchips.h>
 #include <linux/clocksource.h>
 #include <linux/delay.h>
 #include <asm/sbi.h>
@@ -29,6 +30,8 @@ void __init time_init(void)
 
 	of_clk_init(NULL);
 	timer_probe();
+
+	tick_setup_hrtimer_broadcast();
 }
 
 void clocksource_arch_init(struct clocksource *cs)
-- 
2.34.1

