Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35EA94FAAE4
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 23:11:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231992AbiDIVNw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 17:13:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231956AbiDIVNu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 17:13:50 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D067643F
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 14:11:39 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id q19so10808988pgm.6
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 14:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pTEAPxrhT32vhayLsKotad+jG3u8S5Ei8ZeMFP9woBA=;
        b=ltY2ugsAE2tvX0t0fGwusuBjHrIkWhDVxPoIQrjbbexUIl57nSUefymYypdhORwPmo
         nZSfFMjvOOPsmKIcco+TeK250sA7lXZR+IVGR+TaOyXXxB+UowaBxZCTzi2RCxI6OaWe
         ds5XtscH7XQGg+JDOw7rk+iVkcH9JPzCufjk1LxnK+Tln+aJ0NFA5ORdPpQooWvmN7iG
         zocaFH6si8iwMwyZwDnH4fclirpOndGdkebmfYXKpE+jJzZklaHSwVgKB3+6JPooHGOl
         aol9/p7lu7Tiv7JC33UCFIANoWfPRPpAFTnu+TtkyI4iiyoI5yiKLTHryagRyrmQ29AG
         0u6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pTEAPxrhT32vhayLsKotad+jG3u8S5Ei8ZeMFP9woBA=;
        b=yvnPynpNGwZ+uXlWQvF9pqhy0VCEdX3883AvBo91KpgfvZg+0rXCgRUK83KWP+YFEh
         c9+0iWh4LZiR7zNKXvr4IfVkSndCE1ok6qvj99xa+SXwkiQVNwi8qWGVUmsJ1TsEb1dq
         vzsneY0HjHNHEJspE6jy0obNgy3Bmy9stnWEWDTGKAicoyGO9u+WpWjlaLe7PXzbuLVP
         131B/XamWfX/X/j6D6tQsrxCmpS1hRxKw0P/OyOc5qbI4BzLwdlwbb5L9UPwzyOoSa5N
         rikB2MrHUJJ7RWDzfGR4uJIXEgTqT27jjY9Lzkmc+YFwlZdvMk1125KzWDmYrRDYImSJ
         h5oQ==
X-Gm-Message-State: AOAM533czDj7W+Wg1pr+RxPksaekFjHVoLFaFBp3Na2u9OEAfHCaHhB8
        f63fwoAIbvDbi6LAR7bPBxh4pJXHhUg57g==
X-Google-Smtp-Source: ABdhPJymzHW37Rm36BtfLUtICV/UaRQVPkfm/XEMa3uQcbapqEQJGStby8/ASIO3N632qaOns6r+3w==
X-Received: by 2002:a05:6a00:2405:b0:4e1:5008:adcc with SMTP id z5-20020a056a00240500b004e15008adccmr25284211pfh.35.1649538698221;
        Sat, 09 Apr 2022 14:11:38 -0700 (PDT)
Received: from x1.hsd1.or.comcast.net ([2601:1c2:1001:7090:925c:1a60:e433:31b7])
        by smtp.gmail.com with ESMTPSA id w127-20020a627b85000000b00505a9142ce5sm1393295pfc.22.2022.04.09.14.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Apr 2022 14:11:37 -0700 (PDT)
From:   Drew Fustini <dfustini@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Drew Fustini <dfustini@baylibre.com>,
        Keerthy <j-keerthy@ti.com>
Subject: [PATCH v2 2/2] soc: ti: wkup_m3_ipc: Add support for toggling VTT regulator
Date:   Sat,  9 Apr 2022 14:12:15 -0700
Message-Id: <20220409211215.2529387-3-dfustini@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220409211215.2529387-1-dfustini@baylibre.com>
References: <20220409211215.2529387-1-dfustini@baylibre.com>
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

Some boards like the AM335x EVM-SK and AM437x GP EVM provide software
control via a GPIO pin to toggle the DDR VTT regulator to reduce power
consumption in low power states.

The VTT regulator should be disabled after enabling self-refresh on
suspend, and should be enabled before disabling self-refresh on resume.
This is to allow proper self-refresh entry/exit commands to be
transmitted to the memory.

The "ti,vtt-gpio-pin" device tree property in the wkup_m3_ipc node
specifies which GPIO pin to use. This property is communicated to the
Wakeup Cortex M3 co-processor where the actual toggling of the GPIO pin
happens in CM3 firmware [1].

Please note that the GPIO pin must be on the GPIO0 module as that module
is in the wakeup power domain.

[1] https://git.ti.com/cgit/processor-firmware/ti-amx3-cm3-pm-firmware/tree/src/pm_services/ddr.c?h=08.02.00.006#n190

Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
Signed-off-by: Keerthy <j-keerthy@ti.com>
[dfustini: remove the unnecessary "ti,needs-vtt-toggle" property]
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 drivers/soc/ti/wkup_m3_ipc.c | 26 ++++++++++++++++++++++++--
 include/linux/wkup_m3_ipc.h  |  1 +
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/ti/wkup_m3_ipc.c b/drivers/soc/ti/wkup_m3_ipc.c
index 2f03ced0f411..247a4b57a372 100644
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
@@ -496,6 +511,13 @@ static int wkup_m3_ipc_probe(struct platform_device *pdev)
 
 	m3_ipc->ops = &ipc_ops;
 
+	if (!of_property_read_u32(np, "ti,vtt-gpio-pin", &temp)) {
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

