Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6755D63C1B4
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 15:03:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234642AbiK2ODl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 09:03:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234702AbiK2ODd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 09:03:33 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2EFA15838
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:03:31 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id t17so12748621pjo.3
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dmATt0XXLfjGq8KTAB6LQCwLbX+al5xHeC21A61DKj0=;
        b=hY/6z86R84EwODbjkiiGC6QK0QG6Br2dUspKKN2xxrJ8I9quSTGKQCLag9z6OAVc5U
         EATKmpotnBhW0OItmcD9+yaySF26TlP5OjXCEIpBptR7dWma01PR8ptk7OemJ66JbquV
         Lb+PnPKW6yYk7VWlNMmwkLfSvnLEfccmBsdRACeew8SunS8mKXTJtt7wCEbM+WTstp9Z
         Tv880hcMAeQY8/X4jWNG5kueNio+R32G6GlAnPPkSudTu8fBS2MKf4j9utmOa0AYl5vL
         w7M/n4cIsxQfcp57UyuMiKkFo6dRWmxjFWQ5FM6+Al2cicW24t2uEeZKqUm2/PHm5el3
         wYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dmATt0XXLfjGq8KTAB6LQCwLbX+al5xHeC21A61DKj0=;
        b=xGKlNW1a3Hdg0Tg/y36XO+ybHEOjmNQYRXEceqOr4GSscSD5WMgzRBqWSLrCattAAs
         rfdkKPB25srEeMx6ThoPMIWftH4ROxT+3RwbxKiyK+gYwP6IWJIrwxS4pXEREhr4LNeA
         g6rS8HpQmKXjlCGzCfXVKB2EXFoiKnh1mbPZCz1m7E2/kMyCgKQuL9FC+xftPbdLrVid
         ua0vqsdmIfVROs2g7vn7gBxzhUBMk9YE06K+imJ4ctlRDzYCMMUnuafmnY5Mmbc9dFr/
         RmRtFl7+uqenehYNzgwLp4tHbuAE8QO1qzkCiLWyQOmdBwW73mc+/f8b/NxdYG282amZ
         cNHA==
X-Gm-Message-State: ANoB5plemgfdGevpz+uiTRPvrfvH/86Cr9K7xqxnlQMktwX6Q8Gpz51n
        cwafu7ldWXifPf9CpT7EZF8kaA==
X-Google-Smtp-Source: AA0mqf53M2VbsnM+2H/qCK2bbZJbD9dskoicTq7vf6i7UsemhtdUPZBj0ZAKIkhFlUctXmNdwVz6fQ==
X-Received: by 2002:a17:902:70c9:b0:176:a0cc:5eff with SMTP id l9-20020a17090270c900b00176a0cc5effmr46522128plt.128.1669730607996;
        Tue, 29 Nov 2022 06:03:27 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.98])
        by smtp.gmail.com with ESMTPSA id k30-20020aa79d1e000000b00574f83c5d51sm6013747pfp.198.2022.11.29.06.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 06:03:27 -0800 (PST)
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
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] RISC-V: time: initialize broadcast hrtimer based clock event device
Date:   Tue, 29 Nov 2022 19:33:11 +0530
Message-Id: <20221129140313.886192-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221129140313.886192-1-apatel@ventanamicro.com>
References: <20221129140313.886192-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Similarly to commit 022eb8ae8b5e ("ARM: 8938/1: kernel: initialize
broadcast hrtimer based clock event device"), RISC-V needs to initiate
hrtimers before C3STOP can be used. Otherwise, the introduction of C3STOP
for the RISC-V arch timer in commit 232ccac1bd9b
("clocksource/drivers/riscv: Events are stopped during CPU suspend")
breaks timer behaviour, for example clock_nanosleep().

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

