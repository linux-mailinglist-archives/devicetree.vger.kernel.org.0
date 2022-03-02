Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 554F24CAFCF
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 21:31:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243721AbiCBUcD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 15:32:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243591AbiCBUcC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 15:32:02 -0500
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15443CE939
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 12:31:14 -0800 (PST)
Received: by mail-pf1-x42b.google.com with SMTP id a5so2916181pfv.9
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 12:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vRNYE3MVtOWTOcAscoSFEXTkiFs4WRAYhJN5nqkw4yY=;
        b=az6MqE+PdSRuGm4+uHkgYS0NWI3Qe+5wz7a06751GJAoUsXel6/vamuHU0ctAAC0X0
         EbkNVdoPadWu/w2xdTvcqFySJ9vR78OMMphFsNyW/zgSOAwfJ0FzHoc3gs+/8LVDR/j6
         f8lpFHcvvXbyPXOvu+UEni3hHXTFeiu0yijAWZAkGqklnhTXkRZS4dvjinN6UhROIVAx
         FjIEb2hHGwk7DHnncMgB4RF/fh8ecOyHJzfYVidB6zl2ksXOYkP7u8bHEDzLkouGHr/v
         oeKc+g3wIxSQ/N8g02kQ1S+dQSsRhbF3qrZ5eRmtRFtjl2LpxNfcB4d7uneFpI//R192
         9b6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vRNYE3MVtOWTOcAscoSFEXTkiFs4WRAYhJN5nqkw4yY=;
        b=mOeMSM4d7nzbqQeQmeqkV4BADsXAdPUKQSZbccYHZKFSV7Q0dhYgUsHL5H7gCkhry/
         Xa0HCnhwDSqXWt8BzVRGWJWx9pIuDRNS3LlnWO0S0bJOmjf1yKLiZwSPjuAbt0Gf3kGg
         snYkvpjPssJamqw21XAFwRf1GdIXoNY9Y8WGP0EPahSO0HswwTVI2NWDBfOTBRpuF6SQ
         zgWY2DzJb8c+9TRYAQiIuTavSQnOtB+YanajKkY4KMFIPk8gWjDiVQpExqTYjdi2tjhh
         g9Xl/3oRx41PJWgNls6xy/L8eRj1bfYx1JVx2Sm5IaqoWJw2ghbUlZcpuTuhdFf/Snl2
         L26g==
X-Gm-Message-State: AOAM531FX6mPsyg8AMRUBPQObBKwY+9CgXyRThdL22RW8ZzVn+h7XhJ2
        1On7MCHXAT1+ng8wLS2ehBdQOA==
X-Google-Smtp-Source: ABdhPJzwBBZ7M3ukRzbFieNH/Eq94lb02OZ7J+cInstw3JGdccGhSxURqfJEhmvU8oLCCpXwoAYRGw==
X-Received: by 2002:a63:ef0a:0:b0:378:d782:2e73 with SMTP id u10-20020a63ef0a000000b00378d7822e73mr10349798pgh.455.1646253073429;
        Wed, 02 Mar 2022 12:31:13 -0800 (PST)
Received: from localhost.localdomain ([182.64.85.91])
        by smtp.gmail.com with ESMTPSA id b1-20020a17090aa58100b001bcb7bad374sm5963410pjq.17.2022.03.02.12.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 12:31:13 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        lorenzo.pieralisi@arm.com, agross@kernel.org,
        bjorn.andersson@linaro.org, svarbanov@mm-sol.com,
        bhelgaas@google.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
        linux-clk@vger.kernel.org
Subject: [PATCH v3 3/7] clk: qcom: gcc: Add PCIe0 and PCIe1 GDSC for SM8150
Date:   Thu,  3 Mar 2022 02:00:41 +0530
Message-Id: <20220302203045.184500-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220302203045.184500-1-bhupesh.sharma@linaro.org>
References: <20220302203045.184500-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the PCIe0 and PCIe1 GDSC defines & driver structures for SM8150.

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/clk/qcom/gcc-sm8150.c               | 20 ++++++++++++++++++++
 include/dt-bindings/clock/qcom,gcc-sm8150.h |  2 ++
 2 files changed, 22 insertions(+)

diff --git a/drivers/clk/qcom/gcc-sm8150.c b/drivers/clk/qcom/gcc-sm8150.c
index 245794485719..7e478dc2cefe 100644
--- a/drivers/clk/qcom/gcc-sm8150.c
+++ b/drivers/clk/qcom/gcc-sm8150.c
@@ -3448,6 +3448,24 @@ static struct clk_branch gcc_video_xo_clk = {
 	},
 };
 
+static struct gdsc pcie_0_gdsc = {
+	.gdscr = 0x6b004,
+	.pd = {
+		.name = "pcie_0_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR,
+};
+
+static struct gdsc pcie_1_gdsc = {
+	.gdscr = 0x8d004,
+	.pd = {
+		.name = "pcie_1_gdsc",
+	},
+	.pwrsts = PWRSTS_OFF_ON,
+	.flags = POLL_CFG_GDSCR,
+};
+
 static struct gdsc usb30_prim_gdsc = {
 		.gdscr = 0xf004,
 		.pd = {
@@ -3714,6 +3732,8 @@ static const struct qcom_reset_map gcc_sm8150_resets[] = {
 };
 
 static struct gdsc *gcc_sm8150_gdscs[] = {
+	[PCIE_0_GDSC] = &pcie_0_gdsc,
+	[PCIE_1_GDSC] = &pcie_1_gdsc,
 	[USB30_PRIM_GDSC] = &usb30_prim_gdsc,
 	[USB30_SEC_GDSC] = &usb30_sec_gdsc,
 };
diff --git a/include/dt-bindings/clock/qcom,gcc-sm8150.h b/include/dt-bindings/clock/qcom,gcc-sm8150.h
index 3e1a91876610..ae9c16410420 100644
--- a/include/dt-bindings/clock/qcom,gcc-sm8150.h
+++ b/include/dt-bindings/clock/qcom,gcc-sm8150.h
@@ -241,6 +241,8 @@
 #define GCC_USB_PHY_CFG_AHB2PHY_BCR				28
 
 /* GCC GDSCRs */
+#define PCIE_0_GDSC						0
+#define PCIE_1_GDSC						1
 #define USB30_PRIM_GDSC                     4
 #define USB30_SEC_GDSC						5
 
-- 
2.35.1

