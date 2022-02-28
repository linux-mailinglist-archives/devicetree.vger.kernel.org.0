Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CDEA4C727C
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 18:25:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233595AbiB1R0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 12:26:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233412AbiB1R0X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 12:26:23 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99CF475E6B
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:25:44 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id y5so6124273wmi.0
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 09:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FmiziqktK1UrOgPFNs78A4lHVO3Bduu86Seb9OC3k1c=;
        b=K+n/iswAmZ36iYyamoHmNZHrTZnMxXeQtaEPylc+co1LNZ4a0PiQWszAfkrk8SLwgj
         HCd2KxQ/G3O9OyJS7ymWIl4DC5VZss/oUTAU1gCJ9P5qmWtAOyYwtL1GQ+HOPxT1VyGa
         mTZ98GgZfeK8KzcF2OuMNNVGU0JvX0GWJPeF2hIzxYZ+C1GOSRj5kK/5vmEGOFG2QFXv
         JJzemBOuNiDULBbVfeJlFYvUXHmPzptAXh/JGE0VDQRxCJIaz/tgPKO2+kcgdfIdfVas
         SxUeFz5WHIj/n4HAKEeZI3zoH82nusaeWDdLacpkBlBKjQKUvun0I+L/jXpqZPf8JlE9
         VJSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FmiziqktK1UrOgPFNs78A4lHVO3Bduu86Seb9OC3k1c=;
        b=dTE8pmxP49ps5UQtIMNSmnwrtnPf370VH25Q33rOdoGxxzqBdX1qJw0acjQF29IPle
         S1jbtaOL2nyS7SQPHm+kTQWZakMFJ7S/RMkLr8V5FDAuThDlakf2f/oZB9tchUPqU7Af
         r1GwvaEBde6h56JK14vtnER7MkH5UTJUuLTSL1NFdbdBUYzkrbWOKd+AmdE9gGsZcIeq
         V+BZNkwzdOrwxAskX4YZqs6Cp343ipFfiMrwLdbuZYR93c/dyNMEw68GeblP1+cnzd/H
         iJi7irs/06shvMSJjILVqOgI+nQHrBU/fC3QrjM4WZ/vqh5mh55zkb5rKCFgtuIjBVRC
         c6iQ==
X-Gm-Message-State: AOAM531TTsmXFhaM1FrTnrs4jWwl4fxVQY6pysf9hhHiSOcWZFWgKjGn
        k0fQdXsxy4i0Q9a2JsGPi0J90w==
X-Google-Smtp-Source: ABdhPJwN+7DvfLFriQmU6bf7VkKjU3vUUHF2S5mpLJH74nHkyMflLKGXjM3VbQkL9njttDpa3TNgRQ==
X-Received: by 2002:a05:600c:4615:b0:381:c68:e8f8 with SMTP id m21-20020a05600c461500b003810c68e8f8mr14077589wmo.117.1646069143234;
        Mon, 28 Feb 2022 09:25:43 -0800 (PST)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id f21-20020a7bcd15000000b0034efd01ee16sm11514124wmj.42.2022.02.28.09.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 09:25:42 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com
Cc:     pierre-louis.bossart@linux.intel.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        quic_srivasam@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 3/3] soundwire: qcom: add in-band wake up interrupt support
Date:   Mon, 28 Feb 2022 17:25:28 +0000
Message-Id: <20220228172528.3489-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220228172528.3489-1-srinivas.kandagatla@linaro.org>
References: <20220228172528.3489-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some of the Qualcomm SoundWire Controller instances like the ones that are
connected to RX path along with Headset connections support Waking up
Controller from Low power clock stop state using SoundWire In-band interrupt.
SoundWire Slave on the bus would initiate this by pulling the data line high,
while the clock is stopped.

Add support to this wake up interrupt.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 drivers/soundwire/qcom.c | 50 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index 810232686196..e893aee1b057 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -14,6 +14,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
+#include <linux/pm_wakeirq.h>
 #include <linux/slimbus.h>
 #include <linux/soundwire/sdw.h>
 #include <linux/soundwire/sdw_registers.h>
@@ -154,6 +155,7 @@ struct qcom_swrm_ctrl {
 	u8 rd_cmd_id;
 	int irq;
 	unsigned int version;
+	int wake_irq;
 	int num_din_ports;
 	int num_dout_ports;
 	int cols_index;
@@ -503,6 +505,31 @@ static int qcom_swrm_enumerate(struct sdw_bus *bus)
 	return 0;
 }
 
+static irqreturn_t qcom_swrm_wake_irq_handler(int irq, void *dev_id)
+{
+	struct qcom_swrm_ctrl *swrm = dev_id;
+	int ret;
+
+	ret = pm_runtime_get_sync(swrm->dev);
+	if (ret < 0 && ret != -EACCES) {
+		dev_err_ratelimited(swrm->dev,
+				    "pm_runtime_get_sync failed in %s, ret %d\n",
+				    __func__, ret);
+		pm_runtime_put_noidle(swrm->dev);
+	}
+
+	if (swrm->wake_irq > 0) {
+		if (!irqd_irq_disabled(irq_get_irq_data(swrm->wake_irq)))
+			disable_irq_nosync(swrm->wake_irq);
+	}
+
+	pm_runtime_mark_last_busy(swrm->dev);
+	pm_runtime_put_autosuspend(swrm->dev);
+
+	return IRQ_HANDLED;
+}
+
+
 static irqreturn_t qcom_swrm_irq_handler(int irq, void *dev_id)
 {
 	struct qcom_swrm_ctrl *swrm = dev_id;
@@ -1340,6 +1367,19 @@ static int qcom_swrm_probe(struct platform_device *pdev)
 		goto err_clk;
 	}
 
+	ctrl->wake_irq = of_irq_get(dev->of_node, 1);
+	if (ctrl->wake_irq > 0) {
+		ret = devm_request_threaded_irq(dev, ctrl->wake_irq, NULL,
+						qcom_swrm_wake_irq_handler,
+						IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
+						"swr_wake_irq", ctrl);
+		if (ret) {
+			dev_err(dev, "Failed to request soundwire wake irq\n");
+			goto err_init;
+		}
+	}
+
+
 	ret = sdw_bus_master_add(&ctrl->bus, dev, dev->fwnode);
 	if (ret) {
 		dev_err(dev, "Failed to register Soundwire controller (%d)\n",
@@ -1424,6 +1464,11 @@ static int swrm_runtime_resume(struct device *dev)
 	struct qcom_swrm_ctrl *ctrl = dev_get_drvdata(dev);
 	int ret;
 
+	if (ctrl->wake_irq > 0) {
+		if (!irqd_irq_disabled(irq_get_irq_data(ctrl->wake_irq)))
+			disable_irq_nosync(ctrl->wake_irq);
+	}
+
 	clk_prepare_enable(ctrl->hclk);
 
 	if (ctrl->clock_stop_not_supported) {
@@ -1491,6 +1536,11 @@ static int __maybe_unused swrm_runtime_suspend(struct device *dev)
 
 	usleep_range(300, 305);
 
+	if (ctrl->wake_irq > 0) {
+		if (irqd_irq_disabled(irq_get_irq_data(ctrl->wake_irq)))
+			enable_irq(ctrl->wake_irq);
+	}
+
 	return 0;
 }
 
-- 
2.21.0

