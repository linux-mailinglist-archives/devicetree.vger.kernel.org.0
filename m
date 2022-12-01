Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAB0463F0B3
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 13:40:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbiLAMkd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 07:40:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231470AbiLAMk2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 07:40:28 -0500
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CD61BA0A9
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 04:40:21 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id y4so1541254plb.2
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 04:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6S7naxVeL+Tq1XdOeQt8X5QpTYGWrVZhiHOlENIaVW4=;
        b=ODFqGsjSBR77IhnwGSMqT5Cedqv+o+83HTdoL9r+54VqgGotTXmXpohITgE49F7wSd
         Tkur0/NYoqgk92i4gk54CRC/pqYBBmM2Zbo6r10FLJYhD2qqf8jup2GHELUwP4gwflmR
         zHYM7ShhCJW76jq1Qu2vQBginDdz04Pbwt71TzSOIEVOWuPV44OgVizwpklWWnB7e+Y5
         D4+z2VkQ+x3EEWAciK1knsKdG5FhwxYEmrPWeSjvn7rHX4xtesNCG3kcL9kYwyxbC5ya
         FHhXlzp0mt54IMjKmv9qfrLyPhAifG9KdRWdez3fjVDG0RQP0zP5aj9Gdf9VUb814ry7
         1cfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6S7naxVeL+Tq1XdOeQt8X5QpTYGWrVZhiHOlENIaVW4=;
        b=D/T/yhsskZU9atYPfluMSgPqPwhkjYkjXF9JU+My5ESgoJqLPK69rN2wtGIrcikab2
         Z8YVQMW4BJuH2BSTULgkA9UG2E5Z+/YLtoj9E/pwk11MqNt3PBzNcGZPVSAsoEr096AI
         edmIMFK6JO2l2HMh2xqjctCVVXGqheTvFcG0Anciq/QPYfOPpVOor/vgyvOHkVb3gUmB
         d+Eho1i1wb2dak/1Y5pLnoxJfmogkjVuxgMziHO+C/B34pTfJiYw6O7CIEBUsFtLfPvU
         nhBdZ3WAVMsXDbn0TH9XBdBCGPHir8WaM0HZfJTb98ObM08gTKoV7DKYdcLvlRBeVNE7
         AMlA==
X-Gm-Message-State: ANoB5pkd3de2NA1vKuoYi4PAlNBCYRZeR30PT00MxJCwO0Tvt6g2EHrQ
        0KaHIzg3VNe6O1rUw10FKGb8kg==
X-Google-Smtp-Source: AA0mqf6acwWia0+L1cEYLvnWvOdyNLyE2K918tcmbn+t7myfCn9EV5mMEmTTmBYN843Wow+kKCJ09g==
X-Received: by 2002:a17:902:ec01:b0:186:878e:3b0d with SMTP id l1-20020a170902ec0100b00186878e3b0dmr47042474pld.149.1669898420501;
        Thu, 01 Dec 2022 04:40:20 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.81.69])
        by smtp.gmail.com with ESMTPSA id b65-20020a62cf44000000b0056f0753390csm3246981pfg.96.2022.12.01.04.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 04:40:20 -0800 (PST)
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
Subject: [PATCH v5 3/3] clocksource: timer-riscv: Set CLOCK_EVT_FEAT_C3STOP based on DT
Date:   Thu,  1 Dec 2022 18:09:54 +0530
Message-Id: <20221201123954.1111603-4-apatel@ventanamicro.com>
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

We should set CLOCK_EVT_FEAT_C3STOP for a clock_event_device only
when riscv,timer-cannot-wake-cpu DT property is present in the RISC-V
timer DT node.

This way CLOCK_EVT_FEAT_C3STOP feature is set for clock_event_device
based on RISC-V platform capabilities rather than having it set for
all RISC-V platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
---
 drivers/clocksource/timer-riscv.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 969a552da8d2..1b4b36df5484 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -28,6 +28,7 @@
 #include <asm/timex.h>
 
 static DEFINE_STATIC_KEY_FALSE(riscv_sstc_available);
+static bool riscv_timer_cannot_wake_cpu;
 
 static int riscv_clock_next_event(unsigned long delta,
 		struct clock_event_device *ce)
@@ -51,7 +52,7 @@ static int riscv_clock_next_event(unsigned long delta,
 static unsigned int riscv_clock_event_irq;
 static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
 	.name			= "riscv_timer_clockevent",
-	.features		= CLOCK_EVT_FEAT_ONESHOT | CLOCK_EVT_FEAT_C3STOP,
+	.features		= CLOCK_EVT_FEAT_ONESHOT,
 	.rating			= 100,
 	.set_next_event		= riscv_clock_next_event,
 };
@@ -85,6 +86,8 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
 
 	ce->cpumask = cpumask_of(cpu);
 	ce->irq = riscv_clock_event_irq;
+	if (riscv_timer_cannot_wake_cpu)
+		ce->features |= CLOCK_EVT_FEAT_C3STOP;
 	clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
 
 	enable_percpu_irq(riscv_clock_event_irq,
@@ -139,6 +142,13 @@ static int __init riscv_timer_init_dt(struct device_node *n)
 	if (cpuid != smp_processor_id())
 		return 0;
 
+	child = of_find_compatible_node(NULL, NULL, "riscv,timer");
+	if (child) {
+		riscv_timer_cannot_wake_cpu = of_property_read_bool(child,
+					"riscv,timer-cannot-wake-cpu");
+		of_node_put(child);
+	}
+
 	domain = NULL;
 	child = of_get_compatible_child(n, "riscv,cpu-intc");
 	if (!child) {
-- 
2.34.1

