Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E44C84FA4C6
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 07:03:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241047AbiDIFEc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 01:04:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241829AbiDIFAA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 01:00:00 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7BFA116B4D
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 21:54:09 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id k14so9536082pga.0
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 21:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0FSMl2l16K/gl13Zkq9p7J1+n7AVpMqSjL319MjBslk=;
        b=f8q2LsZ3fu25tNPoP1dPPW2SWEZHiYPUc4dmuQsuRQX3RIHDgHRLRvFjBPTMCHgdTA
         uwIfQ6fvE0GBFYMYzWYK0s4GWH73EHZLDQewePd9t4fPn1sq57fyXWZCCizSlRcR9Q0n
         Voj3Z4uDMztrsQFnhFSw/3neUlL4Ho/DQh8v5zhBDHslgurbPd8NmMTlFpZJXjyDoCdJ
         UCkKn726gTrnEZf2broMTcG6pF/9ucVFhLc0uGfbIb7PfaIRBj+TaWebt44CKDwrN/Up
         6P5Cws4IrW2Aa+yJweZcX7b5RfG3Fbj0JfXCnYSMIT4M3WyJGiYlTL/SpW9/cqLKjUV2
         PSKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0FSMl2l16K/gl13Zkq9p7J1+n7AVpMqSjL319MjBslk=;
        b=sGv0/gnqphgX2SKty6z2dCRwy2RM49+0nXCClFc6+kqJzZASf5E3M+MpQk2Pnrb0aU
         xf9mOL7rwusWoXzcVR3fAj3JBBVopTTHXmQlxGFElRUsJ6wKZI4daFhT4AOltnw3yNSR
         4runF1+Z96Ss+HzXu0806uO8mxUjoPwLRXcGDlaf7yYWCRbl1wGy8DnkPmU5RP5YgaRk
         pz77LBUheyUBlgSyiq9Rky22u1ptuD+EvKqNOqn5CfZyaWILTRNF9vdN7cwa8CTBhBtA
         FOmdNIc9roVEWqgWg6sBAGmFH3qOMUUjtMTlUi01Wq5vMIrCoyMBglNZvjXsyi4zbiZn
         M1hw==
X-Gm-Message-State: AOAM531BaXrcvVbXbPSx82Nj4U+aQqP5K4c47s8nhdD2djrt3QEzC0hx
        srSzOzhmMLhBVo4E82lnggPJlA==
X-Google-Smtp-Source: ABdhPJylLEgTAoaTFJvLKSHpb+nVvTv8/O/u2Nrurc3h+pvbM18KHPe0h0KE2zYt5zXkslcbp65K1A==
X-Received: by 2002:a63:5d1c:0:b0:39c:c5d7:ebbb with SMTP id r28-20020a635d1c000000b0039cc5d7ebbbmr9722766pgb.54.1649480049291;
        Fri, 08 Apr 2022 21:54:09 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:8fa3:3402:f693:9f86])
        by smtp.gmail.com with ESMTPSA id k6-20020a056a00134600b004faba67f9d4sm28423050pfu.197.2022.04.08.21.54.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 21:54:08 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>,
        Keerthy <j-keerthy@ti.com>
Subject: [PATCH 2/2] soc: ti: wkup_m3_ipc: Add support for toggling VTT regulator
Date:   Fri,  8 Apr 2022 21:51:45 -0700
Message-Id: <20220409045145.2434096-3-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220409045145.2434096-1-dfustini@baylibre.com>
References: <20220409045145.2434096-1-dfustini@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dave Gerlach <d-gerlach@ti.com>

Some boards (currently AM335x EVM-SK) provides s/w control via
GPIO to toggle VTT regulator to reduce power consumption in low
power state.

The VTT regulator should be disabled after enabling self-refresh on
suspend, and should be enabled before disabling self-refresh on resume.
This is to allow proper self-refresh entry/exit commands to be
transmitted to the memory.

Add support for toggling VTT regulator using DT properties.
Actual toggling happens in CM3 Firmware. The enable option & the GPIO
pin used is collected in A8 Core and then sent to CM3 using IPC
registers.

Note:
Here it is assumed that VTT Toggle will be done using a pin on GPIO-0
Instance. The reason is GPIO-0 is in wakeup domain.

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
Signed-off-by: Keerthy <j-keerthy@ti.com>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 drivers/soc/ti/wkup_m3_ipc.c | 27 +++++++++++++++++++++++++--
 include/linux/wkup_m3_ipc.h  |  1 +
 2 files changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ti/wkup_m3_ipc.c b/drivers/soc/ti/wkup_m3_ipc.c
index 2f03ced0f411..8b92425255a2 100644
--- a/drivers/soc/ti/wkup_m3_ipc.c
+++ b/drivers/soc/ti/wkup_m3_ipc.c
@@ -40,6 +40,13 @@
 #define M3_FW_VERSION_MASK		0xffff
 #define M3_WAKE_SRC_MASK		0xff
 
+#define IPC_MEM_TYPE_SHIFT		(0x0)
+#define IPC_MEM_TYPE_MASK		(0x7 << 0)
+#define IPC_VTT_STAT_SHIFT		(0x3)
+#define IPC_VTT_STAT_MASK		(0x1 << 3)
+#define IPC_VTT_GPIO_PIN_SHIFT		(0x4)
+#define IPC_VTT_GPIO_PIN_MASK		(0x3f << 4)
+
 #define M3_STATE_UNKNOWN		0
 #define M3_STATE_RESET			1
 #define M3_STATE_INITED			2
@@ -215,6 +222,12 @@ static int wkup_m3_is_available(struct wkup_m3_ipc *m3_ipc)
 		(m3_ipc->state != M3_STATE_UNKNOWN));
 }
 
+static void wkup_m3_set_vtt_gpio(struct wkup_m3_ipc *m3_ipc, int gpio)
+{
+	m3_ipc->vtt_conf = (1 << IPC_VTT_STAT_SHIFT) |
+			    (gpio << IPC_VTT_GPIO_PIN_SHIFT);
+}
+
 /* Public functions */
 /**
  * wkup_m3_set_mem_type - Pass wkup_m3 which type of memory is in use
@@ -294,7 +307,8 @@ static int wkup_m3_prepare_low_power(struct wkup_m3_ipc *m3_ipc, int state)
 	/* Program each required IPC register then write defaults to others */
 	wkup_m3_ctrl_ipc_write(m3_ipc, m3_ipc->resume_addr, 0);
 	wkup_m3_ctrl_ipc_write(m3_ipc, m3_power_state, 1);
-	wkup_m3_ctrl_ipc_write(m3_ipc, m3_ipc->mem_type, 4);
+	wkup_m3_ctrl_ipc_write(m3_ipc, m3_ipc->mem_type |
+			       m3_ipc->vtt_conf, 4);
 
 	wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 2);
 	wkup_m3_ctrl_ipc_write(m3_ipc, DS_IPC_DEFAULT, 3);
@@ -433,12 +447,13 @@ static int wkup_m3_rproc_boot_thread(void *arg)
 static int wkup_m3_ipc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	int irq, ret;
+	int irq, ret, temp;
 	phandle rproc_phandle;
 	struct rproc *m3_rproc;
 	struct resource *res;
 	struct task_struct *task;
 	struct wkup_m3_ipc *m3_ipc;
+	struct device_node *np = dev->of_node;
 
 	m3_ipc = devm_kzalloc(dev, sizeof(*m3_ipc), GFP_KERNEL);
 	if (!m3_ipc)
@@ -496,6 +511,14 @@ static int wkup_m3_ipc_probe(struct platform_device *pdev)
 
 	m3_ipc->ops = &ipc_ops;
 
+	if (of_find_property(np, "ti,needs-vtt-toggle", NULL) &&
+	    !(of_property_read_u32(np, "ti,vtt-gpio-pin", &temp))) {
+		if (temp >= 0 && temp <= 31)
+			wkup_m3_set_vtt_gpio(m3_ipc, temp);
+		else
+			dev_warn(dev, "Invalid VTT GPIO(%d) pin\n", temp);
+	}
+
 	/*
 	 * Wait for firmware loading completion in a thread so we
 	 * can boot the wkup_m3 as soon as it's ready without holding
diff --git a/include/linux/wkup_m3_ipc.h b/include/linux/wkup_m3_ipc.h
index 3f496967b538..2bc52c6381d5 100644
--- a/include/linux/wkup_m3_ipc.h
+++ b/include/linux/wkup_m3_ipc.h
@@ -33,6 +33,7 @@ struct wkup_m3_ipc {
 
 	int mem_type;
 	unsigned long resume_addr;
+	int vtt_conf;
 	int state;
 
 	struct completion sync_complete;
-- 
2.32.0

