Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 315B26795D4
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 11:57:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233703AbjAXK47 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 05:56:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232312AbjAXK47 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 05:56:59 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09636E07E
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:56:57 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id b7so13481066wrt.3
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 02:56:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sBOLFWe1r0zJ4kO4grZGmkZTRU8J2jIvTtXC1Hd0AlY=;
        b=vr4X8ZIKruwzKqYQf/cvVuQzn5uiXgclV1uaSeh4xDurZafWkhm9xM2Zhwgn4M78ub
         VHsXrMxlvH+TtRHzKiF6xpKvizwN8hOG/2pcCNjpoip94AnsFnFBL9yks/dhJ9d+ZMED
         g9lCWQyQoNVLTLpdHiDogQyyrXadFxpAINTGZkLI1Jrfiy4CmWrRf/1dMPb/z92Nq6f7
         JOHUAg//VwXQ+3cH1Gv/b2uWEzd4bSeXJ+qsg7mg3Vg4le0qSOZkIJAzgO8qfmQb1RtO
         ybNeNDV6EF9z83CQnFXV3sCq/SEZwkB0SWk/0q9A6VlpwejL9rmHBAmWIHfCeNHBFRn0
         2SYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sBOLFWe1r0zJ4kO4grZGmkZTRU8J2jIvTtXC1Hd0AlY=;
        b=yy/vT9rdsVVI5zjjVaq5l7TsOZ2GeaTnCv4Zo7YH9i5XyRkSJpfAKaFY1Puf2W81wL
         l1YGrp1/kCmqhoMnopOFdwUxDUXnilSgYICf0UnTbi+V9DFhLOewhlSwTTdEePyTxO9M
         MzaxEv6ct/cnBVgAlOMmiPRCX2zqx35bjKGLkpJsbPiij0E5WvlUHU+Sn6yyrS0QVe8S
         E5Wu4j285WGQe9uhsw39F2QRhElHy01pKhChzOvCF5c+8BCWiPlkkT8dEr2NUlhmQKqy
         zGJ7SN72+XuDOZal5+3lfEDRBu45idOOpHoxNtHv6c+g3eMmwZVFaGgQsb99M5xmbPjl
         VOlQ==
X-Gm-Message-State: AFqh2ko0xc/JaabEyfhCyZiKM/iFF2UJwRNZr/CshbOeSPzv05uUabYQ
        LnQZuxzGseWlw2G/dj4XMB7bYw==
X-Google-Smtp-Source: AMrXdXszjlB08CDXF0xh+XPxqY0Tb0HFQlRxrpM9zQwedKBFr2Gzb0eFECWdmwypDIAz2QXHnkF8Mw==
X-Received: by 2002:adf:dc81:0:b0:2bc:7f99:f2a with SMTP id r1-20020adfdc81000000b002bc7f990f2amr23896010wrj.54.1674557815505;
        Tue, 24 Jan 2023 02:56:55 -0800 (PST)
Received: from lmecxl1178.lme.st.com ([80.215.43.103])
        by smtp.gmail.com with ESMTPSA id m18-20020adfe952000000b00286ad197346sm1599336wrn.70.2023.01.24.02.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 02:56:55 -0800 (PST)
From:   Etienne Carriere <etienne.carriere@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Etienne Carriere <etienne.carriere@linaro.org>,
        devicetree@vger.kernel.org,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Sumit Garg <sumit.garg@linaro.org>
Subject: [PATCH v2 3/3] optee: add enable/disable/set_wake handlers to optee irqs
Date:   Tue, 24 Jan 2023 11:56:43 +0100
Message-Id: <20230124105643.1737250-3-etienne.carriere@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230124105643.1737250-1-etienne.carriere@linaro.org>
References: <20230124105643.1737250-1-etienne.carriere@linaro.org>
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

Implements OP-TEE's It Notif PTA API to deactivate and activate an
interrupt notifier and to configure the wakeup capability
of that interrupt. These controls are useful for efficient power
management of the device when an interrupt controller resources is
hosted in OP-TEE world.

When OP-TEE does not implement the It Notif PTA, the related handlers
simply return with success. If OP-TEE exposes the PTA services, they
are invoked on enable, disable and set_wake irqchip operations.

Cc: Jens Wiklander <jens.wiklander@linaro.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Sumit Garg <sumit.garg@linaro.org>

Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
---
Changes since v1:
- Patch added in v2 series for power-up/down and wakeup configuration
  of the irq chip.
---
 drivers/tee/optee/optee_private.h |   2 +
 drivers/tee/optee/smc_abi.c       | 157 ++++++++++++++++++++++++++++++
 2 files changed, 159 insertions(+)

diff --git a/drivers/tee/optee/optee_private.h b/drivers/tee/optee/optee_private.h
index f467409e02e9..257bb505a1fb 100644
--- a/drivers/tee/optee/optee_private.h
+++ b/drivers/tee/optee/optee_private.h
@@ -166,6 +166,7 @@ struct optee_ops {
  * @scan_bus_done	flag if device registation was already done.
  * @scan_bus_wq		workqueue to scan optee bus and register optee drivers
  * @scan_bus_work	workq to scan optee bus and register optee drivers
+ * @notif_it_pta_ctx    TEE context for invoking interrupt conif services
  */
 struct optee {
 	struct tee_device *supp_teedev;
@@ -185,6 +186,7 @@ struct optee {
 	bool   scan_bus_done;
 	struct workqueue_struct *scan_bus_wq;
 	struct work_struct scan_bus_work;
+	struct tee_context *notif_it_pta_ctx;
 };
 
 struct optee_session {
diff --git a/drivers/tee/optee/smc_abi.c b/drivers/tee/optee/smc_abi.c
index 9f4fdd28f04a..95adf8c93c98 100644
--- a/drivers/tee/optee/smc_abi.c
+++ b/drivers/tee/optee/smc_abi.c
@@ -52,6 +52,43 @@
  */
 #define OPTEE_MIN_STATIC_POOL_ALIGN    9 /* 512 bytes aligned */
 
+/*
+ * Interrupt notification can be configured using Notif-IT PTA services.
+ * Below are the PTA UUID and its API commands.
+ */
+#define PTA_IT_NOTIF_UUID \
+	UUID_INIT(0x4461e5c7, 0xb523, 0x4b73, 0xac, 0xed, 0x75, 0xad, \
+		  0x2b, 0x9b, 0x59, 0xa1)
+
+/*
+ * PTA_IT_NOTIF_ACTIVATE_DETECTION - Enable a interrupt notification
+ *
+ * [in]  params[0].value.a     Interrupt ID
+ */
+#define PTA_IT_NOTIF_ACTIVATE_DETECTION		0
+
+/*
+ * PTA_IT_NOTIF_DEACTIVATE_DETECTION - Disable a interrupt notification
+ *
+ * [in]  params[0].value.a     Interrupt ID
+ */
+#define PTA_IT_NOTIF_DEACTIVATE_DETECTION	1
+
+/*
+ * PTA_IT_NOTIF_ENABLE_WAKEUP_SOURCE - Enable an interrupt wakeup source
+ *
+ * [in]  params[0].value.a     Interrupt ID
+ */
+#define PTA_IT_NOTIF_ENABLE_WAKEUP_SOURCE	2
+
+/*
+ * PTA_IT_NOTIF_ENABLE_WAKEUP_SOURCE - Disable an interrupt wakeup source
+ *
+ * [in]  params[0].value.a     Interrupt ID
+ */
+#define PTA_IT_NOTIF_DISABLE_WAKEUP_SOURCE	3
+
+
 /*
  * 1. Convert between struct tee_param and struct optee_msg_param
  *
@@ -977,6 +1014,92 @@ static int optee_smc_stop_async_notif(struct tee_context *ctx)
  * 5. Asynchronous notification
  */
 
+static int optee_ctx_match(struct tee_ioctl_version_data *ver, const void *data)
+{
+	return ver->impl_id == TEE_IMPL_ID_OPTEE;
+}
+
+static void init_optee_pta_context(struct optee *optee)
+{
+	struct tee_context *ctx = NULL;
+	const uuid_t pta_uuid = PTA_IT_NOTIF_UUID;
+	struct tee_ioctl_open_session_arg sess_arg;
+	int ret;
+
+	ctx = tee_client_open_context(NULL, optee_ctx_match, NULL, NULL);
+	if (IS_ERR(ctx))
+		return;
+
+	memset(&sess_arg, 0, sizeof(sess_arg));
+	export_uuid(sess_arg.uuid, &pta_uuid);
+	sess_arg.clnt_login = TEE_IOCTL_LOGIN_REE_KERNEL;
+
+	ret = tee_client_open_session(ctx, &sess_arg, NULL);
+	if ((ret < 0) || (sess_arg.ret != 0)) {
+		pr_err("Can't open IT_NOTIF PTA session: %#x\n", sess_arg.ret);
+		tee_client_close_context(ctx);
+		return;
+	}
+
+	tee_client_close_session(ctx, sess_arg.session);
+
+	optee->notif_it_pta_ctx = ctx;
+}
+
+static void release_optee_pta_context(struct optee *optee)
+{
+	if (optee->notif_it_pta_ctx) {
+		tee_client_close_context(optee->notif_it_pta_ctx);
+		optee->notif_it_pta_ctx = NULL;
+	}
+}
+
+static int invoke_optee_pta(struct optee *optee, unsigned int command,
+			    unsigned int irq_id)
+{
+	const uuid_t pta_uuid = PTA_IT_NOTIF_UUID;
+	struct tee_ioctl_open_session_arg sess_arg;
+	struct tee_ioctl_invoke_arg inv_arg;
+	struct tee_param param[1];
+	int ret;
+
+	if (!optee->notif_it_pta_ctx)
+		return -ENOENT;
+
+	memset(&sess_arg, 0, sizeof(sess_arg));
+	export_uuid(sess_arg.uuid, &pta_uuid);
+	sess_arg.clnt_login = TEE_IOCTL_LOGIN_REE_KERNEL;
+
+	ret = tee_client_open_session(optee->notif_it_pta_ctx, &sess_arg, NULL);
+	if ((ret < 0) || (sess_arg.ret != 0)) {
+		pr_err("tee_client_open_session failed, err: %#x\n", sess_arg.ret);
+		if (!ret)
+			ret = -EINVAL;
+		return ret;
+	}
+
+	memset(&inv_arg, 0, sizeof(inv_arg));
+	inv_arg.session = sess_arg.session;
+	inv_arg.func = command;
+	inv_arg.num_params = 1;
+
+	memset(&param, 0, sizeof(param));
+	param[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
+	param[0].u.value.a = irq_id;
+
+	ret = tee_client_invoke_func(optee->notif_it_pta_ctx, &inv_arg, param);
+	if ((ret < 0) || (inv_arg.ret != 0)) {
+		pr_err("tee_client_invoke_func failed, ret: %d, err: %#x\n",
+		       ret, inv_arg.ret);
+		if (!ret)
+			ret = -EINVAL;
+	}
+
+	tee_client_close_session(optee->notif_it_pta_ctx, sess_arg.session);
+
+	return ret;
+}
+
 static void config_notif_it(optee_invoke_fn *invoke_fn, u32 it_value,
 			    u32 op_mask, u32 val_mask)
 {
@@ -1001,10 +1124,40 @@ static void optee_it_irq_unmask(struct irq_data *d)
 	config_notif_it(optee->smc.invoke_fn, d->hwirq, OPTEE_SMC_NOTIF_CONFIG_MASK, 0);
 }
 
+static void optee_it_irq_disable(struct irq_data *d)
+{
+	struct optee *optee = d->domain->host_data;
+
+	(void)invoke_optee_pta(optee, PTA_IT_NOTIF_DEACTIVATE_DETECTION, d->hwirq);
+}
+
+static void optee_it_irq_enable(struct irq_data *d)
+{
+	struct optee *optee = d->domain->host_data;
+
+	(void)invoke_optee_pta(optee, PTA_IT_NOTIF_ACTIVATE_DETECTION, d->hwirq);
+}
+
+static int optee_it_irq_set_wake(struct irq_data *d, unsigned int on)
+{
+	struct optee *optee = d->domain->host_data;
+	u32 command;
+
+	if (on)
+		command = PTA_IT_NOTIF_ENABLE_WAKEUP_SOURCE;
+	else
+		command = PTA_IT_NOTIF_DISABLE_WAKEUP_SOURCE;
+
+	return invoke_optee_pta(optee, command, d->hwirq);
+}
+
 static struct irq_chip optee_it_irq_chip = {
 	.name = "optee-it",
 	.irq_mask = optee_it_irq_mask,
 	.irq_unmask = optee_it_irq_unmask,
+	.irq_disable = optee_it_irq_disable,
+	.irq_enable = optee_it_irq_enable,
+	.irq_set_wake = optee_it_irq_set_wake,
 };
 
 static int optee_it_alloc(struct irq_domain *d, unsigned int virq,
@@ -1463,6 +1616,7 @@ static int optee_smc_remove(struct platform_device *pdev)
 		optee_disable_shm_cache(optee);
 
 	optee_smc_notif_uninit_irq(optee);
+	release_optee_pta_context(optee);
 
 	optee_remove_common(optee);
 
@@ -1650,6 +1804,8 @@ static int optee_probe(struct platform_device *pdev)
 				irq_dispose_mapping(irq);
 				goto err_notif_uninit;
 			}
+
+			init_optee_pta_context(optee);
 		}
 
 		enable_async_notif(optee->smc.invoke_fn);
@@ -1687,6 +1843,7 @@ static int optee_probe(struct platform_device *pdev)
 		optee_disable_shm_cache(optee);
 	optee_smc_notif_uninit_irq(optee);
 	optee_unregister_devices();
+	release_optee_pta_context(optee);
 err_notif_uninit:
 	optee_notif_uninit(optee);
 err_close_ctx:
-- 
2.25.1

