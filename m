Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7ECABA9C3C
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 09:52:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731725AbfIEHwW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 03:52:22 -0400
Received: from mail-wr1-f41.google.com ([209.85.221.41]:42056 "EHLO
        mail-wr1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731706AbfIEHwU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 03:52:20 -0400
Received: by mail-wr1-f41.google.com with SMTP id q14so1479029wrm.9
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 00:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=O9chrP35VeaOQspYv6yq0N6dO1x9er7VLpJQvN93FOI=;
        b=jbQFjKO6Qmkr3vx8C0XsOTK+x7zrOxshYBIVG7sm9rgWvOAJMvAeFSduofVvDDe5er
         TK61PFDj3AgbrmAv1r+Al9SaMV8HOTWcaHS1nHEKt/tE+uPuRYWDiaG7hoy7NEX1pby5
         narsaOua/J7JS7NIgo6i1GyQAX9PMaMiyqvcF4WlfEXl0ezdXbQ3kL9wnvYWp29AMFwO
         CH+nTirZx7HPPYzGt/mYDjNXMG7M4AtEbpm4qibTCSvvUbXdTXBAHJDsXSQV7FZerQZb
         4Wi6eNLOZa8Auw5uqGklYXGwK1noKCmKNaHYGorNCyyfb4JrAyt4KoXtRjQaZxVJzXzM
         J+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=O9chrP35VeaOQspYv6yq0N6dO1x9er7VLpJQvN93FOI=;
        b=tSO+F7mvo+ROFo+kilkMYCvG1qrPn3mSqIaWFkIHjVUyJSUCMMi3k6T5Q8pDJBnqGX
         5JFvmwDu5wtzsqcSRzytZp82d/K2O3czcU336NiZHI8o9Z5RVJh4puifpkyAXKJcjyDA
         NSMxBs55FGQseHmV9gC5Ua8xcMx3U/ubK1ZpHlMUgVyv7KcZHeq9AbWt7Q/GyTldvdoi
         4q4Jbpxrx0/i+16VbUTZHPKyBqQn2uBmEENkZII7FAHR9kX+we8+2FCT3EsBbyDDi/eq
         nKjG40xMLvwIH3HZN6O/GzbVcdKbM1fdCO8kqI9o/X50vbEabuHKt83aFdtqJTIZX59m
         CLLQ==
X-Gm-Message-State: APjAAAX/GUy5IsT0xRs43dCwUCh9hrpzrPxTAE5L7QZMjY0PDhHYOH4A
        cHO9pNDw8ESnRlmZhs1Dt3E/OQ==
X-Google-Smtp-Source: APXvYqyBf31WXqww2s1UsleaLTEgcVXsPmaZxCo4gB/O0+uIHD8GYImVDdW0XW1mm1vGmln7SgI7vw==
X-Received: by 2002:a5d:680e:: with SMTP id w14mr1338770wru.3.1567669938104;
        Thu, 05 Sep 2019 00:52:18 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
        by smtp.gmail.com with ESMTPSA id a13sm3418784wrf.73.2019.09.05.00.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 00:52:17 -0700 (PDT)
From:   Lee Jones <lee.jones@linaro.org>
To:     alokc@codeaurora.org, agross@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, bjorn.andersson@linaro.org,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, wsa@the-dreams.de, vkoul@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 2/2] i2c: qcom-geni: Provide an option to disable DMA processing
Date:   Thu,  5 Sep 2019 08:52:13 +0100
Message-Id: <20190905075213.13260-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190905075213.13260-1-lee.jones@linaro.org>
References: <20190905075213.13260-1-lee.jones@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We have a production-level laptop (Lenovo Yoga C630) which is exhibiting
a rather horrific bug.  When I2C HID devices are being scanned for at
boot-time the QCom Geni based I2C (Serial Engine) attempts to use DMA.
When it does, the laptop reboots and the user never sees the OS.

The beautiful thing about this approach is that, *if* the Geni SE DMA
ever starts working, we can remove the C code and any old properties
left in older DTs just become NOOP.  Older kernels with newer DTs (less
of a priority) *still* will not work - but they do not work now anyway.

Fixes: 8bc529b25354 ("soc: qcom: geni: Add support for ACPI")
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index a89bfce5388e..8822dea82980 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -353,13 +353,16 @@ static void geni_i2c_tx_fsm_rst(struct geni_i2c_dev *gi2c)
 static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 				u32 m_param)
 {
+	struct device_node *np = gi2c->se.dev->of_node;
 	dma_addr_t rx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_property_read_bool(np, "qcom,geni-se-no-dma"))
+		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
@@ -392,13 +395,16 @@ static int geni_i2c_rx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 static int geni_i2c_tx_one_msg(struct geni_i2c_dev *gi2c, struct i2c_msg *msg,
 				u32 m_param)
 {
+	struct device_node *np = gi2c->se.dev->of_node;
 	dma_addr_t tx_dma;
 	unsigned long time_left;
-	void *dma_buf;
+	void *dma_buf = NULL;
 	struct geni_se *se = &gi2c->se;
 	size_t len = msg->len;
 
-	dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+	if (!of_property_read_bool(np, "qcom,geni-se-no-dma"))
+		dma_buf = i2c_get_dma_safe_msg_buf(msg, 32);
+
 	if (dma_buf)
 		geni_se_select_mode(se, GENI_SE_DMA);
 	else
-- 
2.17.1

