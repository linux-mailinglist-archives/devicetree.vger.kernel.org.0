Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 261565825CF
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 13:44:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232361AbiG0Lo0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 07:44:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232450AbiG0LoF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 07:44:05 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFE104A822
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 04:44:04 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id b133so15897033pfb.6
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 04:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZDeYW4AY28vTxurFqUXv3ebNyVNdEODpLRCvig5J+Z8=;
        b=aqjEe3mvrZ/sXf2TJhUGnviXYa1l1LYvbO7SQNCsbRoBm0VTSB5S/Vn+NZ3BombPyd
         c/hYAThtpLetobdizee3fkOS/RlfZitV1e4eh2Sk4CmKvhXeGs41oltsGCrZGXrdUf48
         KqR1b30FD6/M8sVRF0rEJQ51pt9SPXLoBxvDhX4eVN/KXOe2sdLQPZNBb9CRlQ/bPmuo
         Wp4KqHYcaAC+mWT20tlu1Bk2gicSXZDrADeE+ruejivezkjr9GXD9SOCjeCwsDvBrAAh
         sQUbAXEjW9hO/WPRC9DvATAtc4z6/vfE48At2mxmtoyzPv5qgLh6b7VpH8SrqxlEuomp
         YRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZDeYW4AY28vTxurFqUXv3ebNyVNdEODpLRCvig5J+Z8=;
        b=efsuLBq66sLKytssRxYexHuHkNfL26vVUh2B0UtLisINJUFBdPTry0DaW+ZgiUnrPt
         9622sPM4rTLJd/MxI5MdeD0PIooXz/Z+48sU0s3jIhBYH4HmKaXjkaJRgbDnjV8oWnoI
         8rYKj9Oi+Jfnjo14Rsv4DncWPS5McPvffKF3YG1PMhjOsTgtf73VX/lwMHB8SnJjEGeh
         XvlF3WbAMvWoe8IZ4S+P1EuKnxXM+IaaY7T/Dyfa5zsuYt4EtdrAmsoVMZ9g9KHfmC4Z
         8OZC1t4RU5TKRLXx6PTaUokE0doyXNtHeIOHbIIkGHsfxcujnNLNc8+NM9/y/I3Z8AMq
         yICQ==
X-Gm-Message-State: AJIora/kA1aOOKl29Z+/MZs/ED8BQwh9oJJDCtes7NFlAPQ4ozARt8qS
        OYDj5/JtYewSuYuLTMhadQnHCFDUTTtlPw==
X-Google-Smtp-Source: AGRyM1vgoJVgOpNZ5zoSEMsNCq+Vu0AoGtr3UpQlEBz0aThV4QkKeFQREyfDS6te99XytVvnKPacaA==
X-Received: by 2002:a63:fd4f:0:b0:41b:539b:ba8e with SMTP id m15-20020a63fd4f000000b0041b539bba8emr812287pgj.17.1658922244094;
        Wed, 27 Jul 2022 04:44:04 -0700 (PDT)
Received: from anup-ubuntu64-vm.. ([171.76.87.63])
        by smtp.gmail.com with ESMTPSA id o8-20020a170902d4c800b0016be9fa6807sm13486685plg.284.2022.07.27.04.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 04:44:03 -0700 (PDT)
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
        Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 2/2] clocksource: timer-riscv: Set CLOCK_EVT_FEAT_C3STOP based on DT property
Date:   Wed, 27 Jul 2022 17:13:02 +0530
Message-Id: <20220727114302.302201-3-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220727114302.302201-1-apatel@ventanamicro.com>
References: <20220727114302.302201-1-apatel@ventanamicro.com>
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

We should set CLOCK_EVT_FEAT_C3STOP for a clock_event_device only when
riscv,timer-can-wake-cpu DT property is not present for the corresponding
CPU.

This way CLOCK_EVT_FEAT_C3STOP feature is set for clock_event_device
based on RISC-V platform capabilities rather than having it set for
all RISC-V platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/clocksource/timer-riscv.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 593d5a957b69..92a0b9832d8c 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -34,7 +34,7 @@ static int riscv_clock_next_event(unsigned long delta,
 static unsigned int riscv_clock_event_irq;
 static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
 	.name			= "riscv_timer_clockevent",
-	.features		= CLOCK_EVT_FEAT_ONESHOT | CLOCK_EVT_FEAT_C3STOP,
+	.features		= CLOCK_EVT_FEAT_ONESHOT,
 	.rating			= 100,
 	.set_next_event		= riscv_clock_next_event,
 };
@@ -65,9 +65,13 @@ static struct clocksource riscv_clocksource = {
 static int riscv_timer_starting_cpu(unsigned int cpu)
 {
 	struct clock_event_device *ce = per_cpu_ptr(&riscv_clock_event, cpu);
+	struct device_node *np = of_get_cpu_node(cpu, NULL);
 
 	ce->cpumask = cpumask_of(cpu);
 	ce->irq = riscv_clock_event_irq;
+	if (!of_property_read_bool(np, "riscv,timer-can-wake-cpu"))
+		ce->features |= CLOCK_EVT_FEAT_C3STOP;
+	of_node_put(np);
 	clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
 
 	enable_percpu_irq(riscv_clock_event_irq,
-- 
2.34.1

