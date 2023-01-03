Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 788C065C18D
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 15:11:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237663AbjACOLY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 09:11:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237500AbjACOLX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 09:11:23 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB418FEF
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 06:11:18 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id ge16so29340857pjb.5
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 06:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dlh2CMNdSoUIQxTaEwlbl5D9rexWqbuQ4H+cWHRWlxo=;
        b=gzxbqIdlnLfc3CYwtD5PIBA+jLZSmjFqO8TrRQZJuC42pQak+JX3HPhYh9kRLnYkaQ
         IaNUcVXwgUgpIb7WxUwbVgIZTjHbJrnm6mkhnhjO3DW6Zg/KlWGnVI4/aNBMGdR2Lusq
         JBoCwrorLqqrMfcK9UZRKP8m6KfWIgDYLVLMIutcA9c7n3zw1DeAgC+FR88evKH7XaiP
         J5OC6TsRJ13W6bv21/QL4g+jkB3ZNW1N5XNfxobqRPNJgkHoS+m/sLHIWLbijyCJtlxB
         kNl7QDifcdudr9IwAvQj38CfDJ6gjsGhJKHdo6UfuELXzch5CTYyyl97H1pfxicIvnSV
         WBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dlh2CMNdSoUIQxTaEwlbl5D9rexWqbuQ4H+cWHRWlxo=;
        b=IeFNS12h5+NwNlHastRjBiRxUKdSB8DGWUU+QemuIL7PODEyd0tTq5IqFBbkJ9gFbn
         y9UwCBwxOJLgJPrYJFQLvgQtMPFED+U9HGm5XklTr5vDtW3atAMsS3fB+a9vIU92EkLT
         5PlBrItQxJpHJHjHQeJZG5jPhRxMRgdx0sctMv3ACSOc3ILV+J5pH7cQRsWKMsE2t+wI
         pOAWPU3u3VWUMyuwELSW3i2dsIDOYiglClyPcb0TsPP0BJvUIShb6m0KFI7dgaMc3DHv
         QbY42WvlYGqQBmfQbwyt/opCryFQiHpSRNlQTAsOrxO2xMFfkfBV6i/K/vSevJTqveVx
         mpuQ==
X-Gm-Message-State: AFqh2kpmerL/JPoB+8K6AGUck0neqN6G03+jwJTSiAuVqtefkA8LbnZg
        geCMt7TK9XmbPff9cnVx+vbfBg==
X-Google-Smtp-Source: AMrXdXvvhbldGv1zoWD3s9+n/qqO1/Vrk7Z3TW+8cYf8u4sdHtpTbSDvzlPBk4S/2Jm8tkENFlkpOQ==
X-Received: by 2002:a17:902:d3cc:b0:192:9141:ace5 with SMTP id w12-20020a170902d3cc00b001929141ace5mr25598340plb.13.1672755078370;
        Tue, 03 Jan 2023 06:11:18 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.85.241])
        by smtp.gmail.com with ESMTPSA id l3-20020a170902e2c300b00192bf7eaf28sm6146117plc.286.2023.01.03.06.11.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 06:11:17 -0800 (PST)
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
        Anup Patel <apatel@ventanamicro.com>,
        Palmer Dabbelt <palmer@rivosinc.com>
Subject: [PATCH v6 1/3] RISC-V: time: initialize hrtimer based broadcast clock event device
Date:   Tue,  3 Jan 2023 19:41:00 +0530
Message-Id: <20230103141102.772228-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103141102.772228-1-apatel@ventanamicro.com>
References: <20230103141102.772228-1-apatel@ventanamicro.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
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

