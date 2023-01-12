Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 452C9667899
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 16:07:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240339AbjALPHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 10:07:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240319AbjALPGs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 10:06:48 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80A3ECCA
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 06:55:39 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id z5so17284996wrt.6
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 06:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ekLw6Rzs5+1GcmkyJf60On54JMIc+jRWw605x9/goM=;
        b=pSTrmnVlFuHJsDRTMEACdTd1b6yGTpyIg4uXt5qCicRiJhN8UDIOef/opp6Xarn3FM
         sELe7g82S6vNkEBrr27XnaDIwrQjvtEU99I2KkE209nRwkzTdaqkZz9IAjl+jmu+/t5P
         LP7ILm5nzs+wOlPLv3UkxzyYGVGYYsDX2qNyKDWib/8GbmHXZRgsykX6db4US4ZgoPEK
         0DGp31zkIW9uXRND4OO9tc9ckrZBR0V46tLYlzyCFkyJm9O8juFNIUqAHpjGA4JbbQRg
         RAWEfojO1iAv9mIhZaEI/D0DwUdvf3eA01PTC/piA00VZqDZwdH/Utb0CS3HFVJHszEX
         Blqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ekLw6Rzs5+1GcmkyJf60On54JMIc+jRWw605x9/goM=;
        b=twFwz5fIlvb1BNs49vF0No2KkooxEJ1CCqchGMHNcA4/7OeIS9IYiiN2Rhq9StRI5W
         daJMqV2fBjYH6bJtmmj1uWCQv/t8yj7n3TfVinX6kQmCh5Xd2uAJOVyIhKO7GLaydLIe
         g1aUnTdBYvGCbbUjmkdIHP7WMk6+L06YN7uq7ui2bo9r9/aHaV9lZaR4gyGkhiG5C3jx
         WgiwXOLhlkNgJT6+o/O7LksKCv/4nAdUGjaHtifzVfBsaaWX1szAsu0u7hjOGP7ko65J
         1DBwlrrXkxYIX9gzlEYOceWhV3EnnZW26f18Rlt6rN7cuJQgOd0ruNI1uHAaBQweWvqm
         UjNQ==
X-Gm-Message-State: AFqh2kqrLxIjP1RIjy2zyFacPlDFchd2bU9/FPsfxRV7STdLp9UFdsHv
        JdO/MMKDYMqgX15uACahuHk6K9it23jdDVD9
X-Google-Smtp-Source: AMrXdXtLlgEIX+cP0YUvte35B20fwodAcqppiqwHJWb55/CZ5iM+y+yF0b8f8xwyvlB9fRNQcq5Mwg==
X-Received: by 2002:a5d:59c7:0:b0:293:1868:3a15 with SMTP id v7-20020a5d59c7000000b0029318683a15mr36795107wry.34.1673535338046;
        Thu, 12 Jan 2023 06:55:38 -0800 (PST)
Received: from lmecxl1178.lme.st.com ([80.215.38.209])
        by smtp.gmail.com with ESMTPSA id v14-20020adff68e000000b002365730eae8sm16599779wrp.55.2023.01.12.06.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 06:55:37 -0800 (PST)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     Jens Wiklander <jens.wiklander@linaro.org>,
        Sumit Garg <sumit.garg@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Subject: [PATCH 1/3] optee: add per cpu asynchronous notification
Date:   Thu, 12 Jan 2023 15:54:22 +0100
Message-Id: <20230112145424.3791276-2-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230112145424.3791276-1-etienne.carriere@linaro.org>
References: <20230112145424.3791276-1-etienne.carriere@linaro.org>
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

Implements use of per CPU irq for asynchronous notification next to
existing standard irq support. This change allows for example to use
GIC_PPI on platforms where no GIC_SPI is provisioned for OP-TEE
asynchronous notification.

Co-developed-by: Alexandre Torgue <alexandre.torgue@foss.st.com>
Signed-off-by: Alexandre Torgue <alexandre.torgue@foss.st.com>
Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
 drivers/tee/optee/optee_private.h |  22 ++++++
 drivers/tee/optee/smc_abi.c       | 107 ++++++++++++++++++++++++++++--
 2 files changed, 124 insertions(+), 5 deletions(-)

diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
index 04ae58892608..e5bd3548691f 100644
--- a/drivers/tee/optee/optee_private.h
+++ b/drivers/tee/optee/optee_private.h
@@ -94,11 +94,33 @@ struct optee_supp {
 	struct completion reqs_c;
 };
 
+/*
+ * struct optee_pcpu - per cpu notif private struct passed to work functions
+ * @optee		optee device reference
+ */
+struct optee_pcpu {
+	struct optee *optee;
+};
+
+/*
+ * struct optee_smc - optee smc communication struct
+ * @invoke_fn		handler function to invoke secure monitor
+ * @memremaped_shm	virtual address of memory in shared memory pool
+ * @sec_caps:		secure world capabilities defined by
+ *			OPTEE_SMC_SEC_CAP_* in optee_smc.h
+ * @notif_irq		interrupt used as async notification by OP-TEE or 0
+ * @optee_pcpu		per_cpu optee instance for per cpu work or NULL
+ * @notif_pcpu_wq	workqueue for per cpu aynchronous notification or NULL
+ * @notif_pcpu_work	work for per cpu asynchronous notification
+ */
 struct optee_smc {
 	optee_invoke_fn *invoke_fn;
 	void *memremaped_shm;
 	u32 sec_caps;
 	unsigned int notif_irq;
+	struct optee_pcpu __percpu *optee_pcpu;
+	struct workqueue_struct *notif_pcpu_wq;
+	struct work_struct notif_pcpu_work;
 };
 
 /**
diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index a1c1fa1a9c28..8c2d58d605ac 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -993,12 +993,20 @@ static u32 get_async_notif_value(optee_invoke_fn *invoke_fn, bool *value_valid,
 
 static irqreturn_t notif_irq_handler(int irq, void *dev_id)
 {
-	struct optee *optee = dev_id;
+	struct optee *optee;
 	bool do_bottom_half = false;
 	bool value_valid;
 	bool value_pending;
 	u32 value;
 
+	if (irq_is_percpu_devid(irq)) {
+		struct optee_pcpu *pcpu = (struct optee_pcpu *)dev_id;
+
+		optee = pcpu->optee;
+	} else {
+		optee = dev_id;
+	}
+
 	do {
 		value = get_async_notif_value(optee->smc.invoke_fn,
 					      &value_valid, &value_pending);
@@ -1011,8 +1019,13 @@ static irqreturn_t notif_irq_handler(int irq, void *dev_id)
 			optee_notif_send(optee, value);
 	} while (value_pending);
 
-	if (do_bottom_half)
-		return IRQ_WAKE_THREAD;
+	if (do_bottom_half) {
+		if (irq_is_percpu_devid(irq))
+			queue_work(optee->smc.notif_pcpu_wq, &optee->smc.notif_pcpu_work);
+		else
+			return IRQ_WAKE_THREAD;
+	}
+
 	return IRQ_HANDLED;
 }
 
@@ -1025,7 +1038,7 @@ static irqreturn_t notif_irq_thread_fn(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static int optee_smc_notif_init_irq(struct optee *optee, u_int irq)
+static int init_irq(struct optee *optee, u_int irq)
 {
 	int rc;
 
@@ -1040,12 +1053,96 @@ static int optee_smc_notif_init_irq(struct optee *optee, u_int irq)
 	return 0;
 }
 
+static void notif_pcpu_irq_work_fn(struct work_struct *work)
+{
+	struct optee_smc *optee_smc = container_of(work, struct optee_smc, notif_pcpu_work);
+	struct optee *optee = container_of(optee_smc, struct optee, smc);
+
+	optee_smc_do_bottom_half(optee->ctx);
+}
+
+static int init_pcpu_irq(struct optee *optee, u_int irq)
+{
+	struct optee_pcpu *optee_pcpu;
+	spinlock_t lock;
+	int cpu;
+	int rc;
+
+	optee_pcpu = alloc_percpu(struct optee_pcpu);
+	if (!optee_pcpu)
+		return -ENOMEM;
+
+	for_each_present_cpu(cpu) {
+		struct optee_pcpu *p = per_cpu_ptr(optee_pcpu, cpu);
+
+		p->optee = optee;
+	}
+
+	rc = request_percpu_irq(irq, notif_irq_handler,
+				"optee_pcpu_notification", optee_pcpu);
+	if (rc)
+		goto err_free_pcpu;
+
+	spin_lock_init(&lock);
+
+	spin_lock(&lock);
+	enable_percpu_irq(irq, 0);
+	spin_unlock(&lock);
+
+	INIT_WORK(&optee->smc.notif_pcpu_work, notif_pcpu_irq_work_fn);
+	optee->smc.notif_pcpu_wq = create_workqueue("optee_pcpu_notification");
+	if (!optee->smc.notif_pcpu_wq) {
+		rc = -EINVAL;
+		goto err_free_pcpu_irq;
+	}
+
+	optee->smc.optee_pcpu = optee_pcpu;
+	optee->smc.notif_irq = irq;
+
+	return 0;
+
+err_free_pcpu_irq:
+	spin_lock(&lock);
+	disable_percpu_irq(irq);
+	spin_unlock(&lock);
+	free_percpu_irq(irq, optee_pcpu);
+err_free_pcpu:
+	free_percpu(optee_pcpu);
+
+	return rc;
+}
+
+static int optee_smc_notif_init_irq(struct optee *optee, u_int irq)
+{
+	if (irq_is_percpu_devid(irq))
+		return init_pcpu_irq(optee, irq);
+	else
+		return init_irq(optee, irq);
+}
+
+static void uninit_pcpu_irq(struct optee *optee)
+{
+	spinlock_t lock;
+
+	spin_lock_init(&lock);
+	spin_lock(&lock);
+	disable_percpu_irq(optee->smc.notif_irq);
+	spin_unlock(&lock);
+
+	free_percpu_irq(optee->smc.notif_irq, optee->smc.optee_pcpu);
+	free_percpu(optee->smc.optee_pcpu);
+}
+
 static void optee_smc_notif_uninit_irq(struct optee *optee)
 {
 	if (optee->smc.sec_caps & OPTEE_SMC_SEC_CAP_ASYNC_NOTIF) {
 		optee_smc_stop_async_notif(optee->ctx);
 		if (optee->smc.notif_irq) {
-			free_irq(optee->smc.notif_irq, optee);
+			if (irq_is_percpu_devid(optee->smc.notif_irq))
+				uninit_pcpu_irq(optee);
+			else
+				free_irq(optee->smc.notif_irq, optee);
+
 			irq_dispose_mapping(optee->smc.notif_irq);
 		}
 	}
-- 
2.25.1

